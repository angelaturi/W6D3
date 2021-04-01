class Collection < ApplicationRecord

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    has_many :collection_artworks,
        primary_key: :id,
        foreign_key: :collection_id,
        class_name: :CollectionArtwork

    has_many :artworks,
        through: :collection_artworks,
        source: :artwork

    has_many :artists,
        through: :collection_artworks,
        source: :artist
end