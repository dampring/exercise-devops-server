FROM node:14.21.3-bullseye
# set environment
ARG DEBIAN_FRONTEND=noninteractive
ARG CORS="http://localhost:3000,http://localhost:8080"
ENV CORS_ALLOWLIST=${CORS_ALLOWLIST:-$CORS}
# set working directory
WORKDIR /app
# add sources & create .env file
COPY . .
# install modules
RUN ls && npm install
# Replace the values of CORS_ALLOWLIST and PORT in the .env file
#RUN sed -i "s|CORS_ALLOWLIST=.*|CORS_ALLOWLIST=\"$CORS_ALLOWLIST\"|g" /app/.env
#RUN cd sed -i "s|PORT=.*|PORT=\"$PORT\"|g" /app/.env
EXPOSE 5000
# Start the system
CMD ["sh", "-c", "npm start > /dev/stdout 2>&1"]

#REQUIRES STACI VALUES ON VARS FOR BUILD
# SHOULD TRY TO USE sed on this file