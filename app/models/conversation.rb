class Conversation < ApplicationRecord

    has_many :messages, dependent: :destroy
  belongs_to :sender, foreign_key: :id, class_name: User
  belongs_to :recipient, foreign_key: :id, class_name: User

  validates :sender_id, uniqueness: { scope: :recipient_id }

  def opposed_user(user)
    user == recipient ? sender : recipient
  end
end
