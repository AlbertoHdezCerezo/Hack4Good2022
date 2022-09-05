class CreateDocumentFragments < ActiveRecord::Migration[7.0]
  def change
    create_table :document_fragments, id: :uuid do |t|
      t.string :type, null: false
      t.integer :position, null: false
      t.string :content

      t.timestamps
    end

    add_index :document_fragments, :id
  end
end
