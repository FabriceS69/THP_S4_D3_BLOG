class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
 # une table est créée pour les likes
 # chaque like est lié à un seul article
 # chaque like est lié à un seul user
 	    t.belongs_to :article, index:true
      	t.belongs_to :user, index:true	

      t.timestamps
    end
  end
end
