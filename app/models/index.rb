class Index < ApplicationRecord
  validates :explanation, presence: true
  # belongs_to :user

  def self.search(search)
    if search !=""
      Index.where('explanation LIKE(?)', "%#{search}%")
    else
      Index.all
    end
  end
end
