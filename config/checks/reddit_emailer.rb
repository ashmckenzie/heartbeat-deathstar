Stethoscope.check :reddit_emailer do |response|
  cron_entries = `crontab -l | grep "bin/reddit-emailer"`.chomp
  status = (cron_entries.split("\n").count == 2) ? 200 : 500

  response[:cron_entries] = cron_entries
  response[:status] = status
end
