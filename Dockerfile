FROM ruby:3.2.1
ARG version

COPY . /

RUN gem build buildkite-builder.gemspec

RUN gem install buildkite-builder-*.gem

CMD buildkite-builder run
