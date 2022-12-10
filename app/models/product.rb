class Product < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_by_title, against: [:title, :description], using: { tsearch: {negation: true, any_word: true} }
    pg_search_scope :search_by_brand, against: :brand

end
