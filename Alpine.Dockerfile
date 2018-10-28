FROM alpine:edge

# ARG WG_VER

RUN echo "ipv6" >> /etc/modules
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add -U wireguard-tools

CMD ["sh"]


# FROM alpine:3.8

# ARG WG_VER

# RUN apk update
# RUN apk add --no-cache build-base linux-vanilla-dev libmnl-dev bash

# RUN wget https://git.zx2c4.com/WireGuard/snapshot/WireGuard-${WG_VER}.tar.xz
# RUN tar xf ./WireGuard-${WG_VER}.tar.xz
# RUN cd ./WireGuard-${WG_VER}/src/ && make

# CMD ["sh"]



# FROM debian:9-slim
# LABEL maintainer="Ivan Shnurchenko <ivan.shnurchenko@gmail.com>"

# RUN echo "deb http://deb.debian.org/debian/ unstable main" > /etc/apt/sources.list.d/unstable.list \
#  && printf 'Package: *\nPin: release a=unstable\nPin-Priority: 150\n' > /etc/apt/preferences.d/limit-unstable \
#  && apt-get update -y
# RUN apt-get install -y wireguard


#RUN cd WireGuard/src && make

# RUN make install

# RUN docker-php-ext-enable xdebug
# RUN mkdir -p /logs/xdebug/profiler
# RUN echo -e "\n\
#     xdebug.default_enable = 1 \n\
#     xdebug.remote_enable = 1 \n\
#     xdebug.remote_autostart = 1  \n\
#     xdebug.remote_connect_back = 0 \n\
#     xdebug.remote_host = host.docker.internal \n\
#     xdebug.remote_port = 9001 \n\
#     xdebug.profiler_enable = 0  \n\
#     xdebug.profiler_output_dir = /xdebug/profiler \n\
#     xdebug.profiler_output_name = cachegrind.out.%u.%p \n\
#     xdebug.remote_log = /logs/xdebug/xdebug.log \n\
#     " >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# RUN cat /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# RUN php composer-setup.php --install-dir=/usr/local/bin
# RUN ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
# RUN php -r "unlink('composer-setup.php');"

# COPY conf/ /usr/local/etc/php-fpm.d/

# # For composer installed binaries
# ENV PATH="/root/.composer/vendor/bin:/root/.config/composer/vendor/bin:$PATH"
# EXPOSE 9000

# ARG PUID=1000
# ARG PGID=1000

# RUN addgroup -g ${PGID} phpuser && \
#     adduser -D -u ${PUID} -G phpuser phpuser

# USER phpuser

# CMD ["wireguard"]
