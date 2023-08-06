# Docker jenkins CI/CD declarative pipeline

 Pre-Requisite

1) GitHub Repositiory (https://github.com)

2) Jenkins Server (Local(virtual) or cloud)

3) Docker epository (https://hub.docker.com)

4) Docker Host  (Local(virtual) or cloud)

Steps for CI/CD Pipeline.

1) Login into Jenkins server and click on new Item.

![image](https://github.com/amansunny08/jenkins-docker/assets/92769620/4c234fb7-8fe9-4d53-9d59-e72ab4c95adc)

2) Enter name of the new pipeline, click on Pipeline and hit enter.

![image](https://github.com/amansunny08/jenkins-docker/assets/92769620/9cf2c9b1-e114-42bf-aac4-3772debb0dd2)

3) Click on GitHub Project and past git url

   ![image](https://github.com/amansunny08/jenkins-docker/assets/92769620/9f78911b-1dea-4d6e-855d-fc679c043778)

4) Select following options
    > Pipeline script from SCM
   
    > SCM == Git
   
    > Repositiory URL (Git repo url)
    
    > Credentials (required if git repo is private, else keep it empty

    > Branch name
    
    ![image](https://github.com/amansunny08/jenkins-docker/assets/92769620/c86b1d89-7cc6-4ba1-9547-ca6c51b23b5d)
 
   
5) Enter Jeninsfile name
   ![image](https://github.com/amansunny08/jenkins-docker/assets/92769620/c1f34c8f-385a-48c2-9995-e638b675ea5f)
