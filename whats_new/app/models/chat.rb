class Chat < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
    has_many :messages

    validates :sender_id, presence: true
    validates :receiver_id, presence: true
    validate :different_users
  
    private
  
    def different_users
      if sender_id == receiver_id
        errors.add(:sender_id, "Users must be different")
      end
    end
end