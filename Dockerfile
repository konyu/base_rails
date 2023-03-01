FROM ruby:3.2.1
ENV ROOT="/app"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

# ruby3.1のイメージがBundler version 2.3.7で失敗するので、gemのバージョンを追記
#ARG RUBYGEMS_VERSION=3.3.20

WORKDIR ${ROOT}

COPY Gemfile ${ROOT}
COPY Gemfile.lock ${ROOT}

# RubyGemsをアップデート
# gem update --system ${RUBYGEMS_VERSION} && \
RUN gem install bundler
RUN bundle install --jobs 4