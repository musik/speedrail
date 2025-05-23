url = Rails.env.development? ? 'redis://127.0.0.1:6379/-1' : ENV['REDIS_URL']
Sidekiq.configure_server do |config|
  config.redis = { url: url }
end
Sidekiq.configure_client do |config|
  config.redis = { url: url }
end


# schedule_file = 'config/schedule.yml'
# Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?