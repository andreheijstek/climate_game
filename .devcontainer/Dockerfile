FROM ruby:3.2.9

# System deps
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
  build-essential \
  libsqlite3-dev \
  nodejs \
  npm \
  git \
  curl \
  && rm -rf /var/lib/apt/lists/*

# Yarn (Rails 8 assets)
RUN npm install -g yarn@1.22.22

# Bundler config
ENV BUNDLE_PATH=/usr/local/bundle \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3 \
  BUNDLE_WITHOUT="production" \
  BUNDLED_WITH=4.0.3

# Installeer de juiste Bundler versie
RUN gem install bundler -v 4.0.3

# Werkdirectory in container
WORKDIR /app

# Kopieer alleen Gemfile eerst (voor caching)
COPY Gemfile Gemfile.lock ./
# Installeer gems
RUN bundle install

EXPOSE 3000