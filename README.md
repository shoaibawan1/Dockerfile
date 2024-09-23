# Dockerfile

## Dockerfile Explanation

This Dockerfile sets up an Nginx web server and automatically populates its web root with content from a GitHub repository. Below is a breakdown of each command in the Dockerfile:

### 1. `FROM nginx`
This line specifies the base image to use for the Docker container. The image being used is `nginx`, which is a widely-used web server.

### 2. `RUN apt-get update`
This command updates the package lists for `apt`, the package manager used by Debian-based systems. It ensures that the most recent information about available packages is retrieved.

### 3. `RUN apt-get install git -y`
Here, Git is installed within the container. The `-y` flag automatically confirms the installation of Git without prompting for user input.

### 4. `RUN rm -f /usr/share/nginx/html/*`
This command deletes the default content inside Nginx's default web directory (`/usr/share/nginx/html`). This step ensures that the directory is empty and ready for new content from the GitHub repository.

### 5. `RUN git clone https://github.com/shoaibawan1/docker-file.git /usr/share/nginx/html`
This line clones the repository `docker-file` from your GitHub account into the Nginx web root directory (`/usr/share/nginx/html`). The content from the repository will be served by Nginx.

### 6. `EXPOSE 80`
This command tells Docker to expose port `80` (the default HTTP port) so that the Nginx web server can be accessed from outside the container.

### Usage

To build and run this Docker image, follow these steps:

1. Build the Docker image:
   ```bash
   docker build -t my-nginx-git .
   ```

2. Run the container:
   ```bash
   docker run -d -p 80:80 my-nginx-git
   ```

This will start an Nginx server, and the content from your GitHub repository will be available at [http://localhost](http://localhost).
