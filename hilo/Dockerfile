FROM ruby:2.4.1

COPY ./Gemfile ./Gemfile.lock /hilo/
WORKDIR /hilo
RUN gem install bundler
RUN bundle install
EXPOSE 4567
CMD ["ruby", "hilo.rb"]
COPY . /hilo
