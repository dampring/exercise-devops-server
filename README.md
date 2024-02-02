> [!CAUTION]
> **Please don't create a public fork of this repo!** Instead, clone or [import this into a new private repo](https://github.com/new/import) and then share with us. Thanks!

## Server

This project is a simple express app built with Node.js.

### Prerequisites

This project requires Node.js v14+ to be installed in your environment.

* https://nodejs.org/en/

### Installation

After checking out the code repository, run the following command to install dependencies:

`npm ci`

### Configuration

The `.env` file contains the configuration settings for the application.

#### PORT

The port on which the server listens for incoming HTTP requests.

#### CORS_ALLOWLIST

Comma-delimited list of origins that may submit HTTP requests.

### API

#### /

This is the only endpoint supported by the application. Method must be GET.

Response body is JSON.

### Scripts

#### npm run format

Formats all source code.

#### npm start

Starts the application.

#### npm test

Runs tests, including checking formatting and checking for linter issues.

### Deployment

Deployment requires:

1. Get the code.
2. Configure environment variables.
3. Install the production dependencies.
4. Start the application.

- To get the code, clone the repository.
- To configure the environment variables, either set them in the environment prior to starting the service OR create/overwrite the `.env.` file with the appropriate settings.
- To install the production dependencies, run the following command: `npm ci --only=production`.
- To start the application, run the following command: `npm start`.

### Logging

The application automatically logs incoming HTTP requests using the common Apache format.
