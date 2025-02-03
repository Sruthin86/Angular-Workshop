FROM node:bookworm
# Create app directory
RUN mkdir -p /usr/src/workshop
# Directory of the application
WORKDIR /usr/src/workshop
# Copy the current directory contents into the container at /usr/src/app
COPY /workshop/. /usr/src/workshop
# Angular CLI compiles the application and serves it to the browser
RUN npm install -g @angular/cli
# Install tailwindcss
RUN npm install tailwindcss @tailwindcss/postcss postcss autoprefixer
# Install dart sass https://github.com/sass/dart-sass
RUN npm install sass
# Install other dependencies
RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "80"]