# Create, build, package and deploy portfolio website using Express.js, Node.js and Docker (Continuous Integration using CircleCI)

[![CircleCI](https://circleci.com/gh/jainishshah17/website.svg?style=svg)](https://circleci.com/gh/jainishshah17/website)

[Docker Image](https://hub.docker.com/r/jainishshah17/website/tags/)

## Prerequisites Details

* [Git](https://github.com/)
* [Node](https://nodejs.org/en/)
* [Bower](https://bower.io/)
* [Docker](https://www.docker.com/)
* [Express.js](https://expressjs.com/)
* [CircleCI](https://circleci.com/)

### Command to build website locally:

* Clone source code:
```
git clone https://github.com/jainishshah17/website.git
```
* Install dependencies:
```
cd website/
npm install -g bower bower-art-resolver
bower install
npm install
```
* Start node server to view website:
```
npm start
```
* Check website in Browser using URL [http://localhost:3000](http://localhost:3000)

![ScreenShot](/images/Screen_Shot_1.png)


### Command to build and run docker image locally:

* Build docker image:
```
docker build -t jainishshah17/website:latest .
```
* Run docker image to test it locally
```
docker run -d -p 3000:3000 jainishshah17/website:latest
```
* Check website in Browser using URL [http://localhost:3000](http://localhost:3000)

* Push docker image to Docker Registry:
```
## Please login to Docker Registry priour to pushing docker image using `docker login` command
docker push jainishshah17/website:latest
```

