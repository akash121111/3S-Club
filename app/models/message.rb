class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def as_json(options)
    super(options).merge(user_avatar_url: user.gravatar_url)
  end
end
