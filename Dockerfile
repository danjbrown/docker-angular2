FROM node:8

# Set the working directory
RUN mkdir -p /app
WORKDIR /app

# Install the app using yarn
ADD package.json ./
ADD yarn.lock ./
RUN yarn install

# Add the source and installed node_modules files to the working directory
ADD . /app

# Build the app
RUN yarn run build

EXPOSE 8080

# Run the app
CMD [ "npm", "run", "prod" ]