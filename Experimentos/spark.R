#instalar spaklyr, tem dependencias libxml2-dev, libssl-dev, libcurl4-openssl-dev
#só precisa executar uma vez
install.packages("sparklyr")
#importar sempre que for usar
library(sparklyr)

#descobrir versões disponíveis 
spark_available_versions()

#instalar uma versão
#só utilizar quando for necessário instalar nova versão
spark_install(version = "3.1")

#abrir conexão nesse caso local, mas poderia ser com yarn
sc <- spark_connect(master = "local")

#quando quiser desconectar
spark_disconnect(sc)

###############################################################################
#importando um dataset de exemplo

#direto pelo readr
library(readr)
train <- read_csv("~/Documentos/Loan Prediction/train.csv")
View(train)

#lendo através do spark para ver diferença
#basicamente o tipo de objeto muda, apesar de utilizar funções muito similares
train_spark <- spark_read_csv(sc, "teste", "~/Documentos/Loan Prediction/train.csv")

###############################################################################
#copiando para o spark um dado inicialmente importado pelo readr
dados <- copy_to(sc, train, overwrite=TRUE)
#usando view traz informações diferenciadas
View(dados)
#mas fazendo operações traz as info do dataset normalmente
dados %>% filter(Gender=="Female")
#demais datasets para comparar
train %>% filter(Gender=="Female")
train_spark %>% filter(Gender=="Female")

###############################################################################
#salvando num arquivo
write_csv(train, "~/Documentos/train.csv")
spark_write_csv(train_spark, "~/Documentos/train_spark")
spark_write_csv(dados, "~/Documentos/dados")

