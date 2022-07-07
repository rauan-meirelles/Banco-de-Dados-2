from models import *
from datetime import date
from connect import connectDatabase, closeConnection

connectDatabase()

def createAtividade (codProjeto, dataFim, dataInicio, descricao) :
    Atividade.create(
        codprojeto = codProjeto,
        datafim = dataFim,
        datainicio = dataInicio,
        descricao = descricao,
    )



createAtividade(
    codProjeto = 1, 
    dataFim=date(2022, 12,31), 
    dataInicio = date(2022,5,26), 
    descricao="Fazer a lista de exercícios",
    situacao="Em andamento"
)

closeConnection()
