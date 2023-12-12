FROM ruby:3.1.2

# ライブラリのインストール
RUN apt update -qq &&  apt install -y git imagemagick libmagick++-dev sqlite3

# nodejs 16のインストール
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs

# yarnのインストール
RUN npm install n -g && npm install -g yarn

# ワークディレクトリの作成
RUN mkdir /myapp

# ローカルファイルをワークディレクトリにコピー
COPY . /myapp

# ワークディレクトリに移動
WORKDIR /myapp

# Gemfileのコピーとインストール
RUN bundle install
RUN yarn install
RUN yarn add @babel/plugin-proposal-private-methods @babel/plugin-proposal-private-property-in-object
RUN rails db:migrate

# ENTRYPOINT [ "bin/docker-entrypoint.sh" ]

# サーバの起動
CMD ["rails", "server", "-b", "0.0.0.0"]