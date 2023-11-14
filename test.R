opslag <- data.frame(row.names = c("Excercise 1", "Excercise 2", "Opgave 3"),svar =c(4,5,"svar3"), hint =c("Prøv at bruge + dummie", "hint 2", "hint 3"))

correct_plot <- function(excercise_name){
  return(plot(x=c(0,1,4),y=c(2,0,4), main = paste("Well done,",excercise_name,"is correct!"), col="green", type="l",axes=F, xlab=(""), ylab=(""), lwd=5))}
incorrect_plot <- function(excercise_name){
  return(plot(x=c(seq(1:32),5,27), y=c(1.5*sin(seq(0,pi,by=0.1)),4,4), xlim=(c(-10,40)),ylim=(c(-1,5)), pch=16, main = paste(excercise_name,"is incorrect.. try again"), xlab = "", ylab="", axes=FALSE))}

check <- function(opgave,svar){
  facit <- opslag[opgave,1]
  print(facit == svar)
  if(facit == svar){
    correct_plot(opgave)
  } else{incorrect_plot(opgave)}
}

hint <- function(opgave){
  opslag[opgave,2]
}

check_E3 <- function(x){
  if(is.vector(x)&length(x)==3){
    correct_plot("Excercise 3")
  }
    }


check_E4 <- function(x){
  if(is.vector(x)&length(x)==3){
    correct_plot("Excercise 3")
  } else{incorrect_plot("Excercise 3")}
}
