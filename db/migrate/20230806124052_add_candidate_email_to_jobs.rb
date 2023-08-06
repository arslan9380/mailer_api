class AddCandidateEmailToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :candidate_email, :string
  end
end
