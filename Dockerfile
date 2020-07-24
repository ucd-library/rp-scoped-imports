FROM ucdlib/rp-ucd-node-utils:latest

RUN mkdir /service
WORKDIR /service

COPY package.json .
COPY package-lock.json .

RUN npm install --production

COPY lib lib
COPY index.js .
COPY reindex.js .

CMD bash -c "tail -f /dev/null"