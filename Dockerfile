# App needs node to be installed
# we use a base image with a lightweight linux distri
FROM node:19-alpine

# Copy selected files from your project to your container
# copied to the folder '/app/'
COPY package.json /app/
# copy everything from src folder to '/app/'
COPY src /app/

# Change to following path
# In our case to app folder to e.g. 
# install npm dependencies
WORKDIR /app

# install all npm dependencies inside of the container
# RUN will execute any command in a shell inside! the container environment
RUN npm install

# last command in dockerfile is 'CMD' 
# command and parameter separately
CMD ["node", "server.js"]