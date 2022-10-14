
## Author 

**ELVIS KIMANI**


## PROJECT DESCRIPTION
- TRASH-TAG is a web application that people to report cases of illegal trash dumps. After reporting a case relevant authorities get notified and a cleanup exercise can be organized


## Screenshots
LOGIN
![image](/images/login.png)
ABOUT
![image](/images/about.png)
SIGNUP
![image](/images/signup.png)
DISPOSE
![image](/images/dispose.png)
TRASH TAG
![image](/images/map.png)

## Figma Deisgn
Link to design https://www.figma.com/file/8RGOEH73BrAsNFdBakZMRT/trash-tag?node-id=7%3A2

## Table of content
- [Technologies]
- [Description]
- [Features]
- [Setup-process]
- [Project-usage]
- [Copyright]
- [Licence]

## Technologies

languages used are:
- REACT 
- RAILS API
- SASS
- SQlite



### Features
* As a user you are able to:
    - Login site
    - Sign up
    - Report a case of an illegal dump
    - Make a post of things you want to dispose
    - Get into contact with other users
    

### Description
The site uses React to render the frontend and uses a Rails APi to fetch data

*** 
## How to set up and run the project

### Requirements
* node
* npm
* git
* IDE
* Ruby
* Rails




   

#### Set up
clone the repo using the command
- $git clone https://github.com/elviskim18/Backend-Trash-Tag.git
change directory using command
- $cd Backend-Trash-Tag
- run code .
- On the terminal run rails s

### endpoints

- [GET] /users `list all users`
- [POST] /login `login to the site`
- [POST] /signup `signup a new user`
- [GET] /posts `get all posts from different users`
- [DELETE] post/:id `Update inforamtion of a post`


***
## How to use the project
The project folder contains a config file that contains a **route.rb** file that has all our routing needed for our frontend


***
### Contributing to the project
Fork the repo. Create a new branch in your terminal(git checkout -b improve-feature). Install the prerequisites. Make appropriate changes in file(s). Add the changes and commit them (git commit -am "improvements"). Push to the branch and create a pull request.

***
## Copyright
 Copyright(c) [2022] [ELVIS KIMANI]

***
## Licence

MIT Licence
***
