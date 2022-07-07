[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com/images/badges/made-with-ruby.svg)
[![forthebadge](https://raw.githubusercontent.com/fleopaulD/README-parts/main/Badges/ftb-hosted-on-heroku.svg)](https://raw.githubusercontent.com/fleopaulD/README-parts/main/Badges/ftb-hosted-on-heroku.svg)
# Challenge "développeur web avancé" @WILD_CODE_SCHOOL
 ## Contexte:
Cette page comporte déjà :
  1. un champ de formulaire permettant de saisir le nom d'un nouvel argonaute
  2. la liste des argonautes déjà référencés par Jason.
Mais dans la maquette, la liste des membres d'équipage est présente "en dur".

>Jason n’y connait rien en page dynamique, c’est le moment de l’épater !

Vous expliquez à votre boss que vous allez adapter cette maquette, de façon à :

  1. afficher les membres d'équipage récupérés depuis une base de données, à la place de ceux déjà saisis "en dur"
  2. stocker les noms des nouveaux membres d'équipage en base de données, lors de la validation du formulaire
  3. améliorer sa mise en page, en disposant les noms des argonautes sur trois colonnes au lieu d'une seule.

  ## Consignes:

  1. Pour aider Jason, vous allez :
 - Créer une application web simple dans votre langage de prédilection.
 - Stocker les données de cette application dans une base de données.
 - L'application ne comportera qu'une seule page.
 
 2. Soumettez le lien vers votre travail en bas de cette page

>Nous imposons très peu de contraintes au niveau technique :

 - Vous pouvez utiliser n'importe quel système de base de données : SQL (MySQL, PostgreSQL, etc.), NoSQL (MongoDB, etc.), voire Firebase (ou toute autre base de données "serverless")
 - Vous pouvez utiliser n'importe quel langage, bibliothèque, framework, voire combinaison de plusieurs technologies : cela peut être le cas si vous travaillez avec une bibliothèque ou un framework front-end tel que Angular, et que vous écrivez par ailleurs une application back-end.
 - Idéalement, vous pouvez publier votre travail sur un dépôt GitHub, voire déployer votre application (sur Heroku, Netlify, votre propre serveur, etc.). A défaut de déployer l'application, il faudra préparer une petite démo fonctionnelle sur votre ordinateur, et avoir le code source à portée de main, en vue de l'entretien technique avec un formateur.
---

## Installation & Utilisation

```bash
git clone git@github.com:KevinPiriou/Test_Tech_Challenge.git
```
```bash
cd Test_Tech_Challenge
```
```bash
bundle install
```
Pour pouvoir lancer le site en local

```bash
rails db:migrate:reset
```
```bash
rails db:seed
```
```bash
rails s
```
[LOCAL](http://localhost:3000/)

Version Heroku ( ! Migrate si pas de reset de la BDD !)
```bash
heroku restart #=> si reset de la BDD
```
```bash
heroku pg:reset DATABASE #=> si reset de la BDD
```
```bash
heroku run rails db:migrate
```
```bash
heroku run rails db:seed
```
[HEROKU](https://test-tech-challenge.herokuapp.com/)
## Auteur du projet:
![Anurag's GitHub stats](https://github-readme-stats.vercel.app/api?username=KevinPiriou&show_icons=true&theme=radical)