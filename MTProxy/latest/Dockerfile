FROM debian:10 as BASE

RUN apt update \
    && apt install -y git curl build-essential libssl-dev zlib1g-dev \
    && mkdir /app

WORKDIR /app

RUN git clone https://github.com/TelegramMessenger/MTProxy

WORKDIR /app/MTProxy

RUN make && cd objs/bin && ls -l


FROM debian:10 as SECOND

RUN apt update \
    && apt install -y openssl curl \
    && apt autoremove         \
    && apt autoclean          \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /app

WORKDIR /app

COPY --from=BASE /app/MTProxy/objs/bin/mtproto-proxy /bin
COPY             entrypoint.sh                       /app/

RUN chmod a+x /app/entrypoint.sh


FROM scratch

COPY --from=SECOND / /

WORKDIR /app

ENTRYPOINT /app/entrypoint.sh
