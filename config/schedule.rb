set :enviroment, 'development'
set :RAILS_ENV, 'development'
env :PATH, ENV['PATH']
set :output, "log/cron.log"

every :monday, at: '7am' do
  rake "weekly_mailing"
end

every 1.day, at: '7am' do
  rake "daily_mailing"
end
