FROM phusion/passenger-ruby24:0.9.23
MAINTAINER everfactor "dev@everfactor.cl"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

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

RUN mkdir /home/app/webapp

ADD . /home/app/webapp
RUN usermod -u 1000 app
RUN chown -R app:app /home/app/webapp

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
