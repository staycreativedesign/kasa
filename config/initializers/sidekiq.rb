Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redistogo:c88937501e08bca15a7c1722858ef8fa@tarpon.redistogo.com:11403' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redistogo:c88937501e08bca15a7c1722858ef8fa@tarpon.redistogo.com:11403' }
end
