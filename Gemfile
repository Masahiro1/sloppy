source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# 基本ツール
gem 'rails', '~> 5.2.3'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'haml-rails'
gem 'jquery-rails'
gem 'kaminari'
gem 'whenever', :require => false
gem 'bootsnap', '>= 1.1.0', require: false

# # bootstrap
# gem 'bootstrap', '~> 4.1.1'

# ログイン周り
gem 'devise'
# gem 'omniauth'
# gem 'omniauth-facebook'
# gem 'omniauth-twitter'
# gem 'omniauth-google-oauth2'
# gem 'omniauth-line'
# gem 'devise_invitable' # 招待機能
gem 'cancancan'

# deviseの認証にトークンを使う場合
# gem 'devise_tokecn_auth'
# gem 'rack-cors'

# 管理画面
# gem 'rails_admin'

 # 画像アップロード
gem 'carrierwave'
gem 'fog', '~> 1.41.0'
# gem 'carrierwave-data-uri' # Action cableでbase64にして送信する場合

# 画像リサイズ
gem 'mini_magick'

# aws ses
# gem 'aws-ses'

# フォームを動的に追加・削除
gem 'nested_form_fields'

# idから一意に英数字文字列を生成
# 連番idを表示したくない時などに使う
# link_to "~", ~_path(@model) -> a href="~/yLa6m0oM"みたいにidの所がハッシュに変わるようになる
# findメソッドをoverrideしてハッシュを引数にとれるようになるので、Model.find(params[:id])のままでOK
# ただし、overrideするのはクラスメソッドのfindだけ
# Model.find(params[:id]) #=> OK
# @models.find(params[:id]) #=> 不可
# インスタンスではfindの代わりにfind_by_hashidを使う
# @models.find_by_hashid(params[:id]) #=> OK
gem "hashid-rails", "~> 1.0"

# 検索
gem 'ransack'

# 開発環境ごとにYAMLファイルで定数管理
# gem 'config'

# PCとスマホでファイル使い分け
gem 'jpmobile'

# コントローラからjavascriptに変数を渡す
gem 'gon'

# タグ管理
gem 'acts-as-taggable-on', '~> 6.0'

# SEO対策
# gem 'meta-tags'
# gem 'sitemap_generator'

# redis
gem 'redis'
gem 'redis-rails'

# bulk insert用
gem 'activerecord-import'

# 関連レコードのカウント
gem 'counter_culture'

# markdown
# gem 'redcarpet'
# gem 'coderay'

# pdf作成
# gem 'pdfkit'
# gem 'wkhtmltopdf'
# gem 'wkhtmltopdf-binary'
# gem 'wicked_pdf'

# グラフ描画
# gem "chartkick"

# sidekiq
# gem 'sidekiq'
# gem 'sidekiq-unique-jobs'
# gem 'sidekiq-failures'

# AWS用
# gem 'asset_sync' # AWS S3 から precompile した asset を読み込み
# gem 'fog-aws'

# 外部ツール
# gem 'slack-notifier'
# gem 'newrelic_rpm'


group :development, :test do
  # 基本ツール
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-coolline'
  # gem 'hirb' # 見づらいのでコメントアウト
  # gem 'hirb-unicode' # 見づらいのでコメントアウト

  # テストツール
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'faker'
end

group :development do
  # 基本ツール
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec' # rspecを高速化

  # guard
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rspec', require: false # コード変更時に自動でテスト

  # modelファイルにカラム名をコメント
  # gem 'annotate'

  # ERD作成
  gem 'rails-erd'

  # N+1検出
  gem 'bullet'

  # 脆弱性解析
  # 実行： brakeman /path/to/rails/project
  gem 'brakeman', :require => false

  # gemの脆弱性解析
  # 実行： bundle audit
  gem 'bundler-audit'

  # gemのライセンス出力
  # 実行： bundle exec license_finder
  gem 'license_finder'

  # エラー画面がきれいに
  gem 'better_errors'
  gem 'binding_of_caller' # better_errorsの画面上にirb/pry(PERL)を表示

  # ブラウザでパーシャルの位置を表示
  # 実行： ブラウザで ctrl + shift + x
  gem 'xray-rails'

  # メール表示
  # mailcatcher と letter_opener 片方だけでもよい
  gem 'mailcatcher'
  gem 'letter_opener'
  gem 'letter_opener_web' # vagrantでも見れる

  # 速度計測
  gem 'rack-mini-profiler'
  gem 'rack-lineprof'

  # developmentリボン
  # gem 'rack-dev-mark'

  # コード規約
  # いったん外しとく
  # gem 'rubocop', require: false
  # gem 'onkcop'
  # gem 'overcommit' # Git Hooks(コミット前に自動チェック)
  # gem 'rails_best_practices'

  # コードをクリーン
  # gem 'rufo'
end

group :test do
  # 基本ツール
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'email_spec'
  gem 'timecop'
  gem 'chromedriver-helper'

  # カバレッジ表示
  gem 'simplecov', require: false, group: :test　
end

# group :production, :staging do
  gem 'unicorn'
#   gem 'capistrano',          require: false
#   gem 'capistrano-rails',    require: false
#   gem 'capistrano-rbenv',    require: false
#   gem 'capistrano-bundler',  require: false
#   gem 'ed25519'
#   gem 'bcrypt_pbkdf'
#   # いったん外しておく
#   # gem 'capistrano3-unicorn', require: false
#   gem 'slackistrano',        require: false
# end
