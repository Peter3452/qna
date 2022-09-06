class Question < ApplicationRecord
  has_many :answers, dependent: :destroy

  has_one_attached :att
end
