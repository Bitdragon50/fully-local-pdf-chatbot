# Use a specific version instead of latest to avoid unexpected changes in future builds
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application's source code from your host to your image filesystem.
COPY . .

# The command to run when the container starts.
CMD ["npm", "run", "dev"]
