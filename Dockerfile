FROM node:8.7.0-alpine

# need these deps for npm install
RUN apk add --no-cache python gcc g++ make git

# install truffle globally, required by solidity-coverage
RUN npm install --quiet --no-progress --global truffle

COPY format-report.js /app/format-report.js

# copy start script
COPY run.sh /app/run.sh

# execute start script
CMD ["sh", "/app/run.sh"]
