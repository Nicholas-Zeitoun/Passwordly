class Key < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_full_text,
    against: {
      name: 'A',
      account: 'B',
      url: 'C'
    },
    using: {
      tsearch: { prefix: true }
    }
end
