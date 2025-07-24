source 'https://rubygems.org'
ruby "3.2.2"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core Rails
gem 'rails', '~> 7.2.0'
gem 'pg', '>= 1.1' # pg 0.x no es compatible con Rails 7+
gem 'puma', '~> 6.0'
gem 'sassc-rails' # reemplazo de sass-rails para compatibilidad con Rails 7
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'

# Front-end Assets
gem 'bootstrap', '~> 5.3'
gem 'jquery-rails'
gem 'jquery-slick-rails'
gem 'bxslider-rails'
gem 'animate-rails'

# JavaScript Bundling (puedes elegir uno)
# Opción 1 (recomendada por defecto en apps Rails nuevas)
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# Opción 2 (solo si quieres mantener webpacker, aunque se considera legacy)
# gem 'webpacker', '~> 5.4'

# Otros
gem 'dotenv-rails'

# Producción y desarrollo
gem 'bootsnap', require: false

group :development, :test do
  gem 'byebug'
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'letter_opener'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.7'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]