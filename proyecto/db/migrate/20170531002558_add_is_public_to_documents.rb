class AddIsPublicToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :is_public, :boolean
  end
end
