class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string       :name
      t.timestamps
    end

    create_table :groups_users, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
    end

    create_table :groups_wiki_parts, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :wiki_part, index: true
    end
  end
end
