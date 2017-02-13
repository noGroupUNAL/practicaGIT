class Message < ApplicationRecord
    validates :tittle, :description, presence: true
    validates :description, length: {minimum: 10}
    validates :tittle, uniqueness: true
end
