class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.integer :follwerid
      t.integer :followedid

      t.timestamps
    end
  end
end
