desc 'scheduled task weekly'
task weekly_mailing: :environment do
  users = User.all
  users.each  do |user|
    if user.schedule_values_id == 1
      SubscribeMailer.with(user: user, interval: false).digest.deliver_later
    end
  end
end

desc 'scheduled task daily'
task daily_mailing: :environment do
  users = User.all
  users.each  do |user|
    if user.schedule_values_id == 2
      SubscribeMailer.with(user: user, interval: false).digest.deliver_now
    end
  end
end
