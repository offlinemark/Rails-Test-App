class User < ActiveRecord::Base
   attr_accessible :age, :name
   validates :age, :name, :presence => true
   validates :age, :numericality => { :greater_than => 21 }
   validates :name, :uniqueness => true
end
