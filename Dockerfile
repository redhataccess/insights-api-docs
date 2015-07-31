FROM fedora

RUN yum -y update && yum clean all
RUN yum install -y ruby ruby-dev build-essential git
RUN gem install --no-ri --no-rdoc bundler
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN cd /app; bundle install
ADD . /app
EXPOSE 4567
WORKDIR /app
CMD ["bundle", "exec", "middleman", "server"]
