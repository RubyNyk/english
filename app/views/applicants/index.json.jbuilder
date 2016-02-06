json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :name, :email, :cell, :line, :major, :section, :teachernation, :message
  json.url applicant_url(applicant, format: :json)
end
