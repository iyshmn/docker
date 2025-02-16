# Use an official Node.js runtime as the base image

FROM node:16-alpine



# Set the working directory inside the container

WORKDIR /app



# Copy package.json and package-lock.json first (to leverage Docker cache)

COPY package.json ./

COPY package-lock.json ./



# Install all dependencies listed in package.json

RUN npm install



# Now copy the rest of the application code

COPY . .



# Build the static files (after the source code is copied)

RUN npm run build



# Install serve to serve the static files

RUN npm install -g serve



# Expose the port that the app will run on

EXPOSE 5000



# Command to start serving the static files

CMD ["serve", "-s", "build", "-l", "5000"]


