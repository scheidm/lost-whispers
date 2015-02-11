class WikiPart < ActiveRecord::Base
  has_many :parts, class_name: "WikiParts",
                   foreign_key: "parent_id"
  has_and_belongs_to_many :groups
end
