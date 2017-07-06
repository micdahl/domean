# DoMEAN
DoMEAN will become a docker based MEAN stack using TypeScript.

Model definitions should share between Angular and Express.

# Requirements

To benifit from docker support, docker should be installed.

# Execute
Clone repository and run `docker-compose up`

Server starts using nodemon and is available through http://localhost:3000
Changes in ./app/server/src are detected automaticly and server restarts on file changes.

# Run in test mode
After executing server through `docker-compose up` enter `docker-compose exec app npm run test-watch`.
Tests are using mocha. Using watch-mode of mocha does not work via docker on Windows, so nodemon is used either to rerun tests on file changes.

# Current features
Typescript written Express Server

# Todo
* Integrate Mocha
* Integrate MongoDB
* Integrate Angular
* Share model definitions between Express and Angular
