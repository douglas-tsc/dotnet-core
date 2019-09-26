# ISSUE: Imagem 2.2.300 e a ultima da 2.2 nao gera os trx com a data (LogFileName_{ANO}-{mes}-{dia}_{hora}-{min}-{seg}-{ms})
# https://github.com/dotnet/cli/issues/12124

#ISSUE: Publish Code Coverage Results (Build Task) - Issue with TFS 2018
#https://github.com/microsoft/azure-pipelines-tasks/issues/11038


clear
##-------------- RELEASE
export TIMEZONE="America/Cuiaba"
export SONAR_SCANNER_NUGET_VERSION="4.6.2"
export SONAR_SCANNER_BIN_VERSION="3.3.0.1492"
export SONAR_SCANNER_NETCORE_VERSION="netcoreapp2.1"
export REPORTGENERATOR_NUGET_VERSION="4.2.12"
export NUGET_SOURCE_EXTERNO="https=//api.nuget.org/v3/index.json"
export RESULT_PATH="/TestResults/result/vsTest/"
export COVERAGE_PATH="/TestResults/codecoverage/"
export COVERAGE_REPORT_PATH="/TestResults/codecoverage/Report/"

export DOT_NET_CORE_SDK_VERSION="2.2.202"
docker-compose -f ../docker-compose.build.yml build
docker-compose -f ../docker-compose.build.yml push