FROM ruby:2.4.1

COPY ./Gemfile ./Gemfile.lock /sumdumgai/
WORKDIR /sumdumgai
RUN gem install bundler
RUN bundle install
EXPOSE 4567
CMD ["ruby", "sumdumgai.rb"]
COPY . /sumdumgai
