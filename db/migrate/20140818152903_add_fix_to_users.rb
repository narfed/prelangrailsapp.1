class AddFixToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :registrant, index: true
  end
end
