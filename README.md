# InsideSoftwaresCloudAdmin

Projeto responsavel pelo registro de aplicações e administração dos mesmo, utilizando o `Eureka` e `Spring Boot Admin` 
* Versão disponivel: 1.0-SNAPSHOT

## Framework Utilizado

* [Spring Boot](https://spring.io/projects/spring-boot)
  * Versão: 3.1.4
* [Spring Cloud Netflix](https://spring.io/projects/spring-cloud-netflix#support)
  * Versão: 4.0.3
* [Spring Boot Admin](https://github.com/codecentric/spring-boot-admin)
  * Versão: 3.1.6
* [GraalVM](https://www.graalvm.org/)
  * Versão: 21

## Build do projeto

* Realizar o clone do projeto
* Na pasta do clone rodar o seguinte comando ``` mvn clean install -Pnative ``` projeto ira buildar

## Environment personalizaveis

* `CLOUD_ADMIN_PORT`
  * Define a porta com qual o serviço vai esta acessível
  * Default: `8889`
* `CLOUD_ADMIN_PROFILES`
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
* `LOGBACK_LOG_DIR`
  * Define local em que será salvo os logs do serviço

## Realizar encriptação e descriptação dos properties

Utilizar a collection: [InsideSoftwaresCloudConfig.postman_collection.json](etc%2Fpostman%2FInsideSoftwaresCloudConfig.postman_collection.json)
que possui os exemplos para realizar

## Utilização em demais projetos

* Importa no pom do projeto:
  ```xml
    <dependencies>
      <dependency>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-starter-actuator</artifactId>
			</dependency>
			<dependency>
				<groupId>org.springframework.cloud</groupId>
				<artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
			</dependency>
			<dependency>
				<groupId>de.codecentric</groupId>
				<artifactId>spring-boot-admin-starter-client</artifactId>
			</dependency>
    </dependencies>
  ```
* Será necessário criar um arquivo chamado ```bootstrap.yml``` no projeto:
  ```yml
  management:
    endpoints:
      web:
        exposure:
          include: "*"
      health:
        show-details: always
  
  eureka:
    client:
      serviceUrl:
        defaultZone: ${CLOUD_EUREKA_URL:http://localhost:8889/eureka}
    instance:
      preferIpAddress: true
  
  spring:
    boot:
      admin:
        client:
          url: ${CLOUD_ADMIN_URL:http://localhost:8889/admin}
        instance:
          prefer-ip: true
  ```
