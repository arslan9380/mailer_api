class AddCandidateNameAndCandidateDescriptionToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :candidate_name, :string
    add_column :jobs, :candidate_description, :string
  end
end
