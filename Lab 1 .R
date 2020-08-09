library(readxl)
file_names <- dir("Lab 1")
df <- do.call(rbind, lapply(file_names, read_excel))
list.files()

data <- read_excel("01-2018.xlsx")
archivos <- list.files()[-12] 
df <- lapply(archivos, read_excel)


archivos[1]

# Crear Nueva función 
library(data.table)
leer_archivos <- function(file){
  df <- read_excel(file)
  df <- df[,1:8]
  print(file)
  df$fecha <- substr(file,1,nchar(file)-5) 
  
    
  return(df)
}
leer_archivos(file = archivos[1])

Newdfs <- lapply(archivos, leer_archivos)

mixdfs <- rbindlist(Newdfs)

mixdfs

# 
library(readr)
library(readxl)

write_excel_csv2(mixdfs, "Lab-1Mix.xls", delim = ",")
#library(dbplyr)
#bind_rows()

install.packages("data.table")


# Problema 2 
vec1 <- sample(x= 1:10, size = 10, replace = TRUE)
vec2 <- sample(x= 1:10, size = 10, replace = TRUE)
vec3 <- sample(x= 1:10, size = 10, replace = TRUE)

Lista_vectores <- list(vec1, vec2, vec3)
Lista_vectores

moda <- function(x){
  library(modeest)
  mfv(x)
}

lapply(Lista_vectores, moda)

install.packages("modeest")
library(modeest)
mfv(vec1)

# Problema 3
library(readr)
library(readxl)

txt_1 <- read_delim("INE_PARQUE_VEHICULAR_080720.txt", delim = "|")
txt_1
