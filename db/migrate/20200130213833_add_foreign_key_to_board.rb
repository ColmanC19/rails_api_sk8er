class AddForeignKeyToBoard < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :boards, :skaters
  end
end
