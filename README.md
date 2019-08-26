README

This README would normally document whatever steps are necessary to get the
application up and running.


This app served a purposed for sneakers collector to showcase their sneakers collection to other sneakers goer. 


* Ruby version
	ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]

* System dependencies

	gem 'devise'
	gem 'bootstrap-will_paginate'
	gem 'execjs'
	gem 'will_paginate_infinite'
	gem 'rails', '~> 5.2.3'
	gem 'pg', '>= 0.18', '< 2.0'
	gem 'puma', '~> 3.11'
	gem 'sass-rails', '~> 5.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.2'
	gem 'jbuilder', '~> 2.5'
	gem 'bootsnap', '>= 1.1.0', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
	gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
	gem 'jquery-rails'
	gem 'sprockets-rails', :require => 'sprockets/railtie'
	gem 'bootstrap', '~> 4.3.1'

* Database initialization

create_table "blogs", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.text "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoes", force: :cascade do |t|
    t.text "name"
    t.text "color"
    t.text "release_year"
    t.text "style"
    t.text "description"
    t.integer "cost_price"
    t.text "first_image_url"
    t.text "second_image_url"
    t.text "third_image_url"
    t.text "fourth_image_url"
    t.bigint "brand_id"
    t.bigint "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["brand_id"], name: "index_shoes_on_brand_id"
    t.index ["size_id"], name: "index_shoes_on_size_id"
    t.index ["user_id"], name: "index_shoes_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.text "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upcoming_shoes", force: :cascade do |t|
    t.text "name"
    t.text "image_url"
    t.text "release_date"
    t.integer "retail_price"
    t.bigint "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_upcoming_shoes_on_brand_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image_url"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "shoes", "users"
end

* Deployment instructions

bundle install
rails db:create
rails db:migrate
rails db:seed
rails server

* ...