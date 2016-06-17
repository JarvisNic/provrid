# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"db:dump
# end

#job_type :rake,    "db:dump :path && :environment_variable=:environment bundle exec rake :task --silent :output"

#job_type :awe, '/home/denis/Sites/provrid/db :rake :db:' whenever --update-crontab whenever

set :output, '/home/denis/Sites/provrid/db/respaldonew4.log'
#set :output1, '/home/denis/Sites/provrid/db/'

every :day, at: '16:20 pm' do

#rake "db:create"
rake "db:dump "

end

#every :day, at: '15:20 pm' do

#rake "db:create"
#rake "db:restore "

#end

job_type :rake, 'db:provrid_development :paht && :environment_variable=:environment bundle exec rake :task :output'

#job_type :rake, 'db:provrid_development :paht && :environment_variable=:environment bundle exec rake :task :output1'
