source 'https://rubygems.org'
git_source( :github ) { | repo | "https://github.com/#{ repo }.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.3', '>= 6.0.3.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'bcrypt'

group :development, :test do
	gem 'byebug', platforms: %i[mri mingw x64_mingw]
	gem 'rspec-core',         git: 'https://github.com/rspec/rspec-core'
	gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations'
	gem 'rspec-mocks',        git: 'https://github.com/rspec/rspec-mocks'
	gem 'rspec-rails',        git: 'https://github.com/rspec/rspec-rails'
	gem 'rspec-support',      git: 'https://github.com/rspec/rspec-support'
	gem 'rubocop-performance', require: false
end

group :development do
	gem 'listen', '~> 3.2'
	gem 'spring'
	gem 'spring-watcher-listen', '~> 2.0.0'
	gem 'faker'
	gem 'jbuilder'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :test do
	gem 'factory_bot_rails'
end
