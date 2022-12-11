# Ruby on Rails E-Commerce Project
A basic e-commerce web site built with rails and haml with bootstrap and postgresql for database. 
Created this project with this command line ( yarn & node should be installed in your system):
- ```rails new RubyECommerce --css=bootstrap --database=postgresql```

### This project currently have these pages:
- User login & register pages
- Home page which all products listed.
- Deatil page of product.
- ... will be updated.


### Things you may want to cover:
* System information
    - Ubuntu 22.04.1 LTS 64-bit
    - Yarn: v1.22.19
    - Node: v16.18.1

* Ruby version
    - ruby 3.0.4p208 (2022-04-12 revision 3fa771dded) [x86_64-linux]
    - Rails 7.0.4

* Database creation
    - For database i used postgreSQL and i prefer docker to install postgreSQL service.
    - ```sudo docker run --name some-postgres -e POSTGRES_PASSWORD=123456 -d postgres```
    - Then create our database using docker exec.
    - ```sudo docker exec -it some-postgres psql -U postgres -c "create database time_management_development"``` 


* Configuration
    - create ```.env``` file in project root. Copy .env.example and change values according to yours.
    - bundle install
    - rails db:migrate
    - rails db:seed

* Services
    - HAML used for front-end development.
    - pagy used for pagination.
    - pg_search postgreSQL full text search library for rails.
    - devise for user auth.
    - docker for creating database service, may used for dockerizing the project.

* Deployment instructions
    - ... will be updated.
