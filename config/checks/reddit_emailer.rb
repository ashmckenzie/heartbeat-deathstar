Stethoscope.check :reddit_emailer do |response|
  cron_entries_count = `crontab -l | grep "bin/reddit-emailer"`.chomp.split("\n").count
  status = (cron_entries_count == 3) ? 200 : 500

  response[:cron_entries_count] = cron_entries_count
  response[:status] = status
end
