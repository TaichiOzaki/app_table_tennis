class Practice_Content < ApplicationRecord
    has_many :posts, foreign_key: "posts_id"
    has_many :tabletennistimes

end
