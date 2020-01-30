class CreateSkaters < ActiveRecord::Migration[6.0]
  def change
    create_table :skaters do |t|
      t.column(:name, :string)
      t.column(:skill_rating, :integer)
    end
  end
end
