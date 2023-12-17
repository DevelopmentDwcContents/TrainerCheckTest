class BookComment < ApplicationRecord
    belongs_to :users
    belongs_to :books
    
    validates :comment, presence: true
end
