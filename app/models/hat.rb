class Hat < ActiveRecord::Base
	validates :name , presence: { message: '모자의 이름을 입력해 주세요.'}
	mount_uploader :photo, ImageUploader
end
