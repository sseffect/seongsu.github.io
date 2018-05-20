class Friend < ApplicationRecord
    #여러개의 Comments를 가지고 있다
    has_many :comments
    has_many :items
end
