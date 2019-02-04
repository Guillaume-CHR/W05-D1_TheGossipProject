class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :commentable, polymorphic: true
      t.timestamps
    end
  end
end
