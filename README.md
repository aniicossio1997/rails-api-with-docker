## En este proyecto se aplicara TDD (Test-Driven Development)

Lo que significa que primero se escribirán las pruebas unitarias de los modelos, después se escribirá  el código necesario para que las pruebas pasen satisfactoriamente y, por último,  se refactorizara  el código escrito.

    

> El proyecto a desarrollar a su vez cuenta con la incorporación de **docker compose**. 
> Version de Rails: 6.1
> Base de datos: Postgresql: 13.2
> Volumenes utilizados : **postgresql_store_api**  y **bundle_path_store_api**


###  Gemas utilizadas para la realización de los test:
|Gema | Versión utilizada|
|--|--|
| [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)  | ~> 2.0 |
|[database_cleaner-active_record](https://github.com/DatabaseCleaner/database_cleaner-active_record)|'~> 2.0|
|shoulda-matchers|~> 4.5|
|shoulda-matchers|~> 4.5'|
|faker|~> 2.16|
|factory_bot_rails'|~> 6.1|

