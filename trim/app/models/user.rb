class User < ActiveRecord::Base
  validates :fullname, :email, :repo, :url, presence: true, length: { maximum: 200 }
  validates :email, uniqueness: true
  validates :oop, :modular, :workflow, :testing, :database, :problem, :javascript,
            :html, :css, :team, :self, :communication, :debugging, presence: true,
            numericality: { greater_than_or_equal_to: 0 }
end
