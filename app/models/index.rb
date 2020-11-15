class Index < ApplicationRecord
  validates :explanation, presence: true

  def self.search(search)
    if search !=""
      Index.where('explanation LIKE(?)', "%#{search}%")
    else
      Index.all
    end
  end
end
