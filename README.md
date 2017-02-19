# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


NULE
Comandos que use
#rails g devise:install
rails g devise User
rails g model Zone Nombre:string Principal:boolean
rails g model CivicType Nombre:string
rails g model CivicUnit User:references NumEvaluaciones:integer Puntaje:integer
rails g model CivicQuestion Descripcion:string Destacada:boolean
rails g model CivicAnswer Descripcion:string Correcta:boolean Activa:boolean CivicQuestion:references Zone:references
rails g model CivicFavorite CivicUnit:references CivicAnswer:references CivicQuestion:references
rails g model CivicTag CivicQuestion:references CivicType:references
rails g model CivicTest CivicUnit:references NumPreguntas:integer NumCorrectas:integer Puntaje:integer Aprobado:boolean Finalizo:datetime
rails g model CivicTestAnswer CivicTest:references CivicQuestion:references CivicAnswer:references Correcta:boolean