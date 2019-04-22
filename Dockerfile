FROM node:10.11.0

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN yarn

# Copying source files
COPY . .

# Used by Cloud Run
ENV PORT 3000
EXPOSE 3000

# Running the app
CMD [ "yarn", "start" ]
