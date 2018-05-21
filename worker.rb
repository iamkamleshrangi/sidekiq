require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { db: 1}
end

Sidekiq.configure_server do |config|
  config.redis = {db: 1}
end

class OurWorker
  include Sidekiq::Worker

  def perform(complexity)
    case complexity
    when 'super hard'
      sleep 20
      puts 'Take little bit of effort due to super hard work'
    when 'hard'
      sleep 10
      puts 'That was a bit of work'
    else
      sleep 1
      puts "That wasn't a lot of effort"
    end
  end
end
