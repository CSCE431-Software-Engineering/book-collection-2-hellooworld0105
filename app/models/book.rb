class Book < ApplicationRecord
    #attribute :title, :string
    #attribute :author, :string
    #attribute :price, :decimal
    #attribute :published_date, :date

    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true
end
