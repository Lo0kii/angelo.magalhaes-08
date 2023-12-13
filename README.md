# angelo.magalhaes-08

J'ai repris le travail fait précédemment en l'adaptant :

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/2004dd83-9b69-4b44-bccd-79df1fb7a602)

Installation et Configuration de Docker sur la VM
Déploiement de WordPress et MySQL avec Docker

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/6d483bd9-59f8-4280-86d9-0357e7e8c144)

"docker run --name wordpress-db -e MYSQL_ROOT_PASSWORD=ace.a.tuer.un.corsaire -e MYSQL_DATABASE=wordpress -d mysql:5.7
              docker run --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=ace.a.tuer.un.corsaire -e WORDPRESS_DB_NAME=wordpress -p 80:80 -d wordpress"

             Noter le mot de passe très spécifique.
J'ai pris pas mal de temps à trouver la bonne ligne de commande, mais ChatGPT m'a corrigé et m'a donné la solution. J'ai également utilisé le site suivant : [indiquer le site]. https://hub.docker.com/_/mysql?tab=tags&page=1&ordering=last_updated&name=5.7 / https://hub.docker.com/_/wordpress?tab=tags&page=1&ordering=last_updated
resultat du main.tf : 

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/9a2eff2b-3413-4e1c-8997-41fc08070e41)

pour recup l'ip il faut faire un outputs.tf avant : 

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/cc461c3f-1dc1-4251-b772-089bf511dcca)


Configuration de WordPress :
![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/b15cf0aa-f2fb-4202-8c70-e7893763d250)


final: 
![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/539d6055-483b-422d-8b54-0622bbe3a20f)



Difficulté : J'étais parti sur du "local-exec", me créant trop d'erreurs et ne convenant pas au rendu souhaité.

On m'a réorienté vers du "user-data".

Je parle évidemment de cette partie : 

![image](https://github.com/Lo0kii/angelo.magalhaes-08/assets/109228312/ab14cd80-b61f-46d7-b9f2-6a485f787aab)


On peut voir un fichier YAML sur les captures d'écran. J'ai abandonné, c'était trop galère pour moi.

(Les instances ont bien été supprimées).
