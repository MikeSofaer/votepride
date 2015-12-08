class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.timestamp :polls_open, null: false
      t.string :name, null: false
    end
    create_table :candidates do |t|
      t.string :name, null: false
    end
    create_table :offices do |t|
      t.string :name, null: false
    end
    create_table :races do |t|
      t.integer :election_id, null: false
      t.integer :office_id, null: false
    end
    create_table :candidacies do |t|
      t.integer :candidate_id, null: false
      t.integer :race_id, null: false
    end
    create_table :voters do |t|
      t.string :given_name, null: false
      t.string :family_name, null: false
    end
    create_table :commitments do |t|
      t.integer :vote_plan_id, null: false
      t.integer :candidacy_id, null: false
    end
    create_table :motivators do |t|
      t.integer :candidacy_id, null: false
      t.string :name, null: false
      t.text :text
    end
    create_table :opinions do |t|
      t.integer :voter_id, null: false
      t.integer :motivator_id, null: false
      t.integer :likingness, null: false
      t.text :annotation
    end
    create_table :intentions do |t|
      t.integer :voter_id, null: false
      t.integer :race_id, null: false
      t.integer :candidacy_id, null: false
    end
    add_index :intentions, [:voter_id, :race_id], unique: true
  end
end
