class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:loginid]
  belongs_to :admin

  validates :employee_number, presence: true
  validates :name, presence: true
  validates :Affiliation, presence: true

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  def email_required?
    false
  end
      
  def email_changed?
    false
  end
        
  def will_save_change_to_email?
    false
  end
end
