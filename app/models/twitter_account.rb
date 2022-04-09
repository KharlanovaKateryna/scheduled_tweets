class TwitterAccount < ApplicationRecord
  has_many :tweets, dependent: :destroy
  belongs_to :user

  validates :username, uniqueness: true

  def client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "0H9xgW4bdKtTUAcZHzjFFJDfq"
      config.consumer_secret     = "UxPjxIdfzOTVj4XITDnKcGa9a7x90JTdemBfe3wIFjVYITy9TL"
      config.access_token        = token
      config.access_token_secret = secret
    end
  end
end
