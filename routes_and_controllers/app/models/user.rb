class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    # has_many :artists,
    #     through: :artworks,
    #     source: :artist

    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    

end 