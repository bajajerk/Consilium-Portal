# Preview all emails at http://localhost:3000/rails/mailers/teamcreated
class TeamcreatedPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/teamcreated/mockstock
  def mockstock
    Teamcreated.mockstock
  end

end
