FROM node:bookworm
# Directory of the application
WORKDIR /usr/src/app
# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app
# Angular CLI compiles the application and serves it to the browser
RUN npm install -g @angular/cli

RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0"]