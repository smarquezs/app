FROM phusion/passenger-ruby24:0.9.23
LABEL mantainer="Sergio Márquez <smarquezs@gmail.com>"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

ARG APP_ENV=development
ENV WORKDIR /home/app/webapp

# Active nginx
RUN rm -f /etc/service/nginx/down

# Install bundle of gems
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

# Add the nginx site and config
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf

# Copy the nginx template for configuration and preserve environment variables
RUN rm /etc/nginx/sites-enabled/default

RUN mkdir -p ${WORKDIR}

ADD . ${WORKDIR}

RUN usermod -u 1000 app
RUN chown -R app:app ${WORKDIR}

WORKDIR ${WORKDIR}

ENV RAILS_ENV=${APP_ENV}
ENV PASSENGER_APP_ENV=${APP_ENV}

RUN bundle exec rails assets:precompile RAILS_ENV=${APP_ENV}}
