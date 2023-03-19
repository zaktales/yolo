# ==== CONFIGURE =====
# Use a Node alpine base image
FROM node:alpine

# Set the working directory to /app inside the container
WORKDIR /app

#Copy JSON
COPY package*.json ./

# ==== BUILD =====
# Install dependencies
#RUN npm install multer && npm install express && npm install cors && npm install body-parser && npm install mongoose && npm install concurrently
RUN npm install

# Copy app files
COPY . .

# Expose the port on which the DB will be running
EXPOSE 5000

# Start the app
CMD [ "npm", "start"]