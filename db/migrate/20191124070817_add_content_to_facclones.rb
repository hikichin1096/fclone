class AddContentToFacclones < ActiveRecord::Migration[5.2]
  def change
    add_column :facclones, :content, :text
  end
end
