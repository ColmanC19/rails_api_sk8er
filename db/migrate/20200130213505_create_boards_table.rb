class CreateBoardsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.column(:color, :string)
      t.column(:quark, :string)
      t.column(:skater_id, :integer)
    end
  end
end
