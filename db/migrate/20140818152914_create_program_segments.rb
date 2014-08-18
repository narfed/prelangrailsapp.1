class CreateProgramSegments < ActiveRecord::Migration
  def change
    create_table :program_segments do |t|
      t.string :name
      t.datetime :date
      t.decimal :cost
      t.integer :capacity
      t.integer :enrolled
      t.references :program_model, index: true

      t.timestamps
    end
  end
end
