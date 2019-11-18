class Blog < ApplicationRecord
    after_create :notify_slack
    def notify_slack
    SlackNotifier::CLIENT.ping ":tada: New Post created: #{title} :tada:"
    end
end
