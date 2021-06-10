desc 'scheduled task weekly'
task whenever_call: :environment do
  users = User.all
  users.each  do |user|
    SubscribeMailer.with(user: user).subscribe_email.deliver_later
  end
end
