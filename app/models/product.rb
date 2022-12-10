class Product < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_by_title, against: [:title, :description]
    pg_search_scope :search_by_brand, against: :brand

end
