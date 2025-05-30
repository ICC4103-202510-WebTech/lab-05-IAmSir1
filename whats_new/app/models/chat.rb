class Chat < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
    has_many :messages, dependent: :destroy

    validates :sender_id, presence: true
    validates :receiver_id, presence: true
    validate :different_users
    validate :unique_chat_between_users
  
    private
  
    def different_users
      if sender_id == receiver_id
        errors.add(:sender_id, "must be different from the receiver")
      end
    end

    def unique_chat_between_users
      return if sender_id.nil? || receiver_id.nil?

      existing_chat = Chat.where(sender_id: sender_id, receiver_id: receiver_id)
                      .or(Chat.where(sender_id: receiver_id, receiver_id: sender_id))
                      .where.not(id: id)
                      .exists?
      if existing_chat
        errors.add(:base, "There's already an existing chat between both users")
      end
    end
end