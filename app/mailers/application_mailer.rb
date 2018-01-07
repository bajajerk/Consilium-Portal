class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@consilium.com"
  layout 'mailer'
end
