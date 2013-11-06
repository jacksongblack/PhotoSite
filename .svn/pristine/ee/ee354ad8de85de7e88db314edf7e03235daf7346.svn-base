# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
require 'active_record/fixtures'
require 'yaml'
require 'erb'
require 'zlib'

YAML::ENGINE.yamler= 'syck'
unless ENV["table"].nil?
  puts ENV["table"]
  ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/db/fixtures", ENV["table"])
else
  Dir["#{Rails.root}/db/fixtures/*.yml"].each do |file|
      puts file
      ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/db/fixtures", File.basename(file)[/[\w]*/])
  end
end