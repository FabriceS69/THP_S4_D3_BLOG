class Comment < ApplicationRecord
	  t.belongs_to :article
      t.belongs_to :user
end
