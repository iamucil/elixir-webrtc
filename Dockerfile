FROM elixir:1.10-alpine

MAINTAINER Eko Susilo <ecko.ucil@gmail.com>

ENV HOST_PORT=5000 \
  MIX_ENV=dev

WORKDIR /opt/app

RUN apk add --update ca-certificates nodejs nodejs-npm

RUN mix do local.hex --force, local.rebar --force

EXPOSE 5000

ADD mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

ADD assets/package.json assets/
RUN cd assets && \
  npm install

ADD . .

RUN cd assets/ && \
  npm run deploy && \
  cd - && \
  mix do compile, phx.digest

CMD ["mix", "phx.server"]
