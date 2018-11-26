class Discussion < ApplicationRecord
  belongs_to :Subject
  belongs_to :user
end
