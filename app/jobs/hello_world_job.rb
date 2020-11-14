class HelloWorldJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep(2)
    Rails.logger.info("Hellow World")
  end
end
