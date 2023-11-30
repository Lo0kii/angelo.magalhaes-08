# angelo.magalhaes-08

j'ai repris le trvail fait precedemment en adaptant: 

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/2004dd83-9b69-4b44-bccd-79df1fb7a602)

Installation et Configuration de Docker sur la VM
Déploiement de WordPress et MySQL avec Docker

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/6d483bd9-59f8-4280-86d9-0357e7e8c144)

"docker run --name wordpress-db -e MYSQL_ROOT_PASSWORD=ace.a.tuer.un.corsaire -e MYSQL_DATABASE=wordpress -d mysql:5.7
              docker run --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=ace.a.tuer.un.corsaire -e WORDPRESS_DB_NAME=wordpress -p 80:80 -d wordpress"

              noter le mdp tres specifique 
Configuration de WordPress :
![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/b15cf0aa-f2fb-4202-8c70-e7893763d250)


final: 
![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/539d6055-483b-422d-8b54-0622bbe3a20f)



difficulter: j'etait partie sur du "local-exec" , me creant trop d'erreure et ne convenanit pas au rendu shouaiter

on ma re orienter sur du "user-data"


je parle evidemment de cet partie: 

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/ab14cd80-b61f-46d7-b9f2-6a485f787aab)
