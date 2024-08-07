# Use the official Node.js image from Docker Hub, with the 'alpine3.18' variant for a smaller image size
FROM node:alpine3.18

# Set the working directory inside the container to /app
WORKDIR /app

# Copy only the package.json file from the host machine to the working directory in the container
COPY package.json ./

# Install the dependencies specified in the package.json file
RUN npm install

# Copy all files from the current directory on the host machine to the working directory in the container
COPY . .

# Expose port 4000 on the container to allow external access to the application
EXPOSE 4000

# Define the command to run the application when the container starts
CMD [ "npm", "run", "start" ]
