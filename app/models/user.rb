class User < ActiveRecord::Base
	# validates :name, presence: true, length: { maximum: 50 }
	# validates(:name, presence: true)
	# validates :email, presence: true, true, length: { maximum: 255 }
	# validates :name, presence: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum: 255 },
	# format: { with: VALID_EMAIL_REGEX }

	# validates :name, presence: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum: 255 },
						# format: { with: VALID_EMAIL_REGEX },
											# uniqueness: true

	# enforces email uniqueness
	# validates :name, presence: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum: 255 },
							# format: { with: VALID_EMAIL_REGEX },
							# uniqueness: { case_sensitive: false }


	# before_save { self.email = email.downcase }
	# validates :name, presence: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum: 255 },
							# format: { with: VALID_EMAIL_REGEX },
							# uniqueness: { case_sensitive: false }
	# has_secure_password
	before_save { email.downcase! }
	# before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
							format: { with: VALID_EMAIL_REGEX },
							uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
end
