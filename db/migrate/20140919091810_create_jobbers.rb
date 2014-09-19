class CreateJobbers < ActiveRecord::Migration
  def change
    create_table :jobbers do |t|
      t.datetime :first_job_at
      t.datetime :last_job_at
      t.references :person, index: true

      t.timestamps
    end
  end
end
