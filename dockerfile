# Use official Node.js image as the base image
FROM node:20

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port on which your Node.js server will run
EXPOSE 5000

# Command to run the Node.js server
CMD ["npm", "start"]
