require 'slack-notifier'
require 'clockwork'
require 'active_support/time'
module Clockwork
handler do |notice|
  notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
  notifier.ping('Hello, How a u doing.')
end
every(30.seconds, 'notice')
end