class Commentary < ApplicationRecord
  belongs_to :user
  belongs_to :discussion
end
