class Product < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_by_title, against: { title: 'A' , description: 'B'}, using: { tsearch: { dictionary: 'english', tsvector_column: 'searchable', prefix: true} }
    pg_search_scope :search_by_brand, against: :brand, using: { tsearch: { dictionary: 'english' } }

    has_many :comment
end
