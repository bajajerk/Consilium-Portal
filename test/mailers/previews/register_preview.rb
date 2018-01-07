# Preview all emails at http://localhost:3000/rails/mailers/register
class RegisterPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/register/success
  def success
    Register.success
  end

end
