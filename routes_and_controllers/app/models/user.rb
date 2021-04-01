class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_artworks,
        through: :shares,
        source: :artwork

    has_many :comments,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Comment,
        dependent: :destroy
        
    has_many :likes,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Llike

    has_many :collections,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Collection

    def favorite_artworks
        artworks.where(favorite: true)
     end

    def favorite_shared_artworks
        shared_artworks.where('artwork_shares.favorite = true')
    end

end 