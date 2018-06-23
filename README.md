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
* Install dependencies to build node server for website:
```
cd website/
## Install bower and bower-art-resolver to install your bower dependencies
npm install -g bower bower-art-resolver
## Install bower dependency packages
bower install
## Install npm dependency packages
npm install
```
* Start node server to view website:
```
npm start
```
* Check website in Browser using URL [http://localhost:3000](http://localhost:3000)

It will look like following ScreenShot:
![ScreenShot](/images/Screen_Shot_1.png)

* Now its time for you to make changes in code to customise it and make it your portfolio website.

Change contents of `.hbs` files in [views](/views) directory.

Once you are ready just restart you node server and refresh website page [http://localhost:3000](http://localhost:3000) in your browser.

Great!!! Now your website is developed locally. Let's follow the next step which is packaging it in Docker image.

### Command to build and run docker image locally:

* Build docker image:
```
docker build -t jainishshah17/website:latest .
```
* Run docker image to test it locally
```
docker run -d -p 80:80 -p 443:443 -p 3000:3000 jainishshah17/website:latest
```
* Check website in Browser using URL [http://localhost:3000](http://localhost:3000)

* Push docker image to Docker Registry:
```
## Please login to Docker Registry priour to pushing docker image using `docker login` command
docker push jainishshah17/website:latest
```

* Once your docker image if pushed to docker registry. You are ready to Deploy it in prodution.

### Deploy docker image in production

There are multiple ways to deploy docker containers.
You can choose any cloud provider from [Azure](https://azure.microsoft.com/en-us/), [GCP](https://cloud.google.com/) and [AWS](https://aws.amazon.com/).

Following are some ways which you can use:
* To deploy docker containers to AWS. [https://aws.amazon.com/getting-started/tutorials/deploy-docker-containers/]
* To deploy containerized web application on GCP. [https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app]
* Deploy a container to Azure Container Instances. [https://docs.microsoft.com/en-us/azure/container-instances/container-instances-tutorial-deploy-app]

Once you have your container deployed and you have External IP to access now its time to Buy a domain (e.g jainishshah.com) and link it with Extrenal IP of your deployed website container.
There are multiple website who sells domain names following are couple of them:
* https://www.godaddy.com/
* https://domains.google/
* https://www.squarespace.com/

I personlly prefer combination of AWS and GoDaddy.
Here is the [link](https://www.godaddy.com/help/update-my-domains-ip-address-for-forwarding-5289) learn how to point your domain to Extrenal IP your deployed website container.


Check out http://jainishshah.com/ to see example website in action.