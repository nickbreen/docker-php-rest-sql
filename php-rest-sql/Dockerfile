FROM php:5-cli

MAINTAINER Nick Breen <nick@foobar.net.nz>

ENV REPO https://api.github.com/repos/peej/php-rest-sql/tarball/master

RUN docker-php-ext-install mysql

RUN useradd -m user && chown user:user /home/user
USER user
WORKDIR /home/user

RUN curl -sSfLo- $REPO | tar zxf - --strip-components=1

COPY entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "php", "-S", "0.0.0.0:9000" ]

EXPOSE 9000
