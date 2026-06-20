# superagro_servlets
This is a project to create inventary of all products related to agro-industry.

**NOTE:** To execute this project locally, you must download Docker Desktop and WSL if you're using Windows OS.

## Steps
1. Clone this project
2. Make sure that dependencies are working
3. Package the project using the following command in project's root > ``` mvn clean package ```
4. In terminal run this command to create a image by Dockerfile > ``` docker image build -t my-superagro . ```
5. Run the image by this command > ``` docker container run -d -p 8080:8080 --name superagro my-superagro ```
6. Enter this localhost to test its functionality > ``` http://localhost:8080/superagro/productos ```