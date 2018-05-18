FROM shenron/yarn

ENV UHOME=/home/node/

# Install dependencies before add src to avoid install dependencies each time
RUN mkdir $UHOME/tmp
COPY package.json $UHOME/tmp/package.json
COPY yarn.lock $UHOME/tmp/yarn.lock

RUN cd $UHOME/tmp/ && \
  yarn install --frozen-lockfile && \
  mv node_modules/ $UHOME/app/node_modules && \
  mv package.json $UHOME/app/package.json && \
  mv yarn.lock $UHOME/app/yarn.lock

COPY . $UHOME/app/

RUN yarn build

WORKDIR $UHOME/app/

CMD yarn run serve

EXPOSE 3000
