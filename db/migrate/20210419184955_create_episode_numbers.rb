class CreateEpisodeNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :episode_numbers do |t|
      t.int :attribute

      t.timestamps
    end
  end
end
