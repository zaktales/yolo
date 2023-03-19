# ==== CONFIGURE =====
# Use a Node 13 base image
FROM node:13.12.0-alpine

# Set the working directory to /app inside the container
WORKDIR /app

#Copy JSON
COPY package*.json ./

# ==== BUILD =====
# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose the port on which the app will be running
EXPOSE 3000

# Start the app
CMD [ "npm", "start"]