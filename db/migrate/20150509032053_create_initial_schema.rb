class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.timestamp :polls_open
      t.string :name
    end
    create_table :candidates do |t|
      t.string :name
    end
    create_table :offices do |t|
      t.string :name
    end
    create_table :candidacies do |t|
      t.integer :candidate_id
      t.integer :election_id
      t.integer :office_id
    end
    create_table :voters do |t|
      t.string :given_name
      t.string :family_name
    end
    create_table :vote_plans do |t|
      t.integer :voter_id
      t.integer :election_id
    end
    create_table :commitments do |t|
      t.integer :vote_plan_id
      t.integer :candidacy_id
    end
  end
end
