class CreateRegistrants < ActiveRecord::Migration
  def change
    create_table :registrants do |t|

      t.timestamps
    end
  end
end
