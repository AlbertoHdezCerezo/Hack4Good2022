class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.integer :status, null: false, default: 0
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
