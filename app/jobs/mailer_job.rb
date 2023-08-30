class MailerJob < ApplicationJob
  queue_as :mailers

  def perform(*args)
    # Do something later
    sleep 5
    p "hello from MailerJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
    
  end
end
