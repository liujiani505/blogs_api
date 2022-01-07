class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  # delegate :username, :to => :user
  def as_json(options={})
    super(only: [:id, :description, :created_at, :user_id],
    include: [user: { only: [:username] }]
    )
  end
end
