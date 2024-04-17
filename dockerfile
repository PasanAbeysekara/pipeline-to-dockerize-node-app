# Official Node Runtime
FROM node:14

# Set working directory in the container
WORKDIR /usr/src/app

# Copy package.json, package-lock.json and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source inside docker image
COPY . .

# make port 3000 available
EXPOSE 3000

# Run app when the container lauches
CMD ["npm", "start"]
