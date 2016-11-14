#### A basic Flask App

- Just using python hello.py
- Write the Dockerfile
- Build the image with `docker build -t hello-app .`
- Run the container with `docker run -d -p 5000:5000 --name hello-server hello-app`
- Check that the container is running
- Go to `localhost:5000`. You should see `Hello, World!`
- Stop the container using `docker stop hello-server`
- Check that the container is not running with `docker ps`
- Check the container is still available with `docker ps -a`
- You can restart the server using `docker start hello-server`
- You can log in to the server using `docker exec -it hello-server bash`
- Caveat: if you change the code, it's not reflected on the container. We'll fix that next.
