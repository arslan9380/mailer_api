class Job < ApplicationRecord

  def as_json
    {
      name: name,
      email: email,
      file_url: file_url,
      image: image,
      candidate_name: candidate_name,
      candidate_description: candidate_description
    }
  end
end
