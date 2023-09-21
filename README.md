# InsideSoftwaresCloudGateway

Projeto responsavel por realizar load balance das aplicações
* Versão disponivel: 1.0-SNAPSHOT
* [License](LICENSE.MD)

## Framework Utilizado

* [Spring Boot](https://spring.io/projects/spring-boot)
  * Versão: 3.1.4
* [Spring Cloud Gateway](https://spring.io/projects/spring-cloud-gateway)
  * Versão: 4.0.7
* [GraalVM](https://www.graalvm.org/)
  * Versão: 21

## Build do projeto

* Realizar o clone do projeto
* Na pasta do clone rodar o seguinte comando ``` mvn clean install -Pnative ``` projeto ira buildar

## Environment personalizaveis

* `CLOUD_GATEWAY_PORT`
  * Define a porta com qual o serviço vai esta acessível
  * Default: `8889`
* `CLOUD_GATEWAY_PROFILES`
  * Define os Profiles para executar o serviço
  * Default: `native`
* `CLOUD_CONFIG_URI`
  * Define a URI para logar no sistema: InsideSoftwaresCloudConfig
  * Default: `http://localhost:8888`
* `CLOUD_CONFIG_NAME`
  * Define o usuario para logar no sistema: InsideSoftwaresCloudConfig
  * Default: `ADMIN`
* `CLOUD_CONFIG_PASSWORD`
  * Define o usuario para senha no sistema: InsideSoftwaresCloudConfig
  * Default: `ADMIN`
* `CLOUD_ADMIN_URL`
  * Define a URI para logar no sistema: InsideSoftwaresCloudAdmin
  * Default: `http://localhost:8889/admin`
* `CLOUD_EUREKA_URL`
  * Define a URI para logar no sistema: InsideSoftwaresCloudAdmin
  * Default: `http://localhost:8889/eureka`
* `LOGBACK_LOG_DIR`
  * Define local em que será salvo os logs do serviço
