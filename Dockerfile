# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json/yarn.lock files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install
# Or if using Yarn:
# RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "src/index.js"]
