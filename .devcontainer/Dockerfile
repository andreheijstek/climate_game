FROM ruby:3.2.9

# System deps
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libsqlite3-dev \
    nodejs \
    npm \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*
    
# Yarn (Rails 8 assets)
RUN npm install -g yarn

# Bundler config
ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    BUNDLE_WITHOUT="production"

RUN gem install bundler -v 4.0.3

# Alleen Gemfile + lock kopiëren
COPY Gemfile Gemfile.lock ./

RUN bundle install

WORKDIR /app
EXPOSE 3000