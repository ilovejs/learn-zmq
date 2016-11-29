FROM alpine:latest

RUN apk --no-cache add make gcc g++ linux-headers libgcc libstdc++ \
                       git zeromq libzmq zeromq-dev

ENV APP_ROOT /usr/app

# also create folder
RUN git clone https://github.com/ilovejs/learn-zmq $APP_ROOT/learn-zmq

WORKDIR $APP_ROOT/learn-zmq

RUN ./build all