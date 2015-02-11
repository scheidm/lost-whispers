class CreateWikiParts < ActiveRecord::Migration
  def change
    create_table :wiki_parts do |t|
      t.text :html
      t.integer   :parent_id
      t.boolean :is_page, index: true
      t.boolean :is_private
      t.string :type

      t.timestamps
    end
  end
end
