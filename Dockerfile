# Use Ruby as base image
FROM ruby:3.2

# Install essential packages
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and gemspec
COPY Gemfile Gemfile.lock* phantom.gemspec ./

# Copy the rest of the application
COPY . .

# Install dependencies
RUN bundle install

# Expose port 4000 (default Jekyll port)
EXPOSE 4000

# Command to run the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
