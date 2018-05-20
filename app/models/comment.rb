class Comment < ApplicationRecord
    #Friend 에 속해 있다.
    belongs_to :friend
end
