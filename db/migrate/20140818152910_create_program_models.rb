class CreateProgramModels < ActiveRecord::Migration
  def change
    create_table :program_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
