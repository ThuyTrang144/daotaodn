class TaiKhoan < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = "tai_khoan"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:sinhvien, :giangvien, :giangvu, :vanphong, :admin]
end
