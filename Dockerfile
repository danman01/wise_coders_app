FROM ruby:2.5.0

LABEL Name=wise_coders_app Version=0.0.1
EXPOSE 3000

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler 

CMD ["ruby", "devise.rb"]
    