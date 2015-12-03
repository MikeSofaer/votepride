class AddMotivators < ActiveRecord::Migration
  def change
    create_table :motivators do |t|
      t.integer :candidacy_id
      t.integer :vote_plan_id
      t.string :name
      t.text :text
    end
    create_table :opinions do |t|
      t.integer :voter_id
      t.integer :motivator_id
      t.integer :likingness
      t.text :annotation
    end
  end
end
