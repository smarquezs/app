Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379/0', namespace: 'app' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379/0', namespace: 'app' }
end