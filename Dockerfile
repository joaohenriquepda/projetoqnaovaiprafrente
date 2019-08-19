FROM ruby:2.6.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl nodejs ghostscript libreadline-dev zlib1g-dev


RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs

RUN node -v
RUN npm -v

RUN npm install -g yarn
RUN yarn install --check-files

RUN mkdir ./app
COPY . ./app
ADD shell.sh ./app
WORKDIR ./app
RUN chmod +x /app/shell.sh
ENTRYPOINT ["/app/shell.sh"]
COPY Gemfile ./app
# COPY Gemfile.lock ./app
RUN bundle install
# RUN ./shell.sh
# RUN mkdir /backend
# WORKDIR /bac1kend
# COPY Gemfile /backend/Gemfile
# COPY Gemfile.lock /backend/Gemfile.lock
# RUN bundle install
COPY . /backend
# EXPOSE 3000
# EXPOSE 5555


# Copy the Gemfile as well as the Gemfile.lock and install
# the RubyGems. This is a separate step so the dependencies
# will be cached unless changes to one of those two files
# are made.
# COPY Gemfile Gemfile.lock ./

# RUN if (tmp/pids/server.pid); then echo password; fi

# RUN bundle exec rails s -p 3000 -b '0.0.0.0'
# Copy the main application.
EXPOSE 3000
# Expose port 3000 to the Docker host, so we can access it
# from the outside.

# The main command to run when the container starts. Also
# tell the Rails dev server to bind to all interfaces by
# default.
# CMD ["rails", "server", "-b", "0.0.0.0","-p","3000"]
