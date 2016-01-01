FROM php:5-cli

MAINTAINER Nick Breen <nick@foobar.net.nz>

ENV REPO https://api.github.com/repos/peej/php-rest-sql/tarball/master
ENV USER user

RUN docker-php-ext-install mysql

RUN useradd -m ${USER} && chown user:user /home/${USER}
USER ${USER}
WORKDIR /home/${USER}

RUN curl -sSfLo- $REPO | tar zxf - --strip-components=1

COPY entrypoint.sh /home/${USER}

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "php", "-S", "0.0.0.0:9000" ]

EXPOSE 9000
