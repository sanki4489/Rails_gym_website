class User < ApplicationRecord
    validates :name, presence: true, length: {min: 1}
    validates :plan, presence: true
    validates :contactNumber, presence: true, numericality: true
    after_commit :log_save

 private 
    def log_save
        logger.info("User: {name} is saved")
    end    
end
