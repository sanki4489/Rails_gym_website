class Instructor < ApplicationRecord
    validates :name, presence: true
    validates :salary, presence: true, numericality: true

    after_save :log_save

private
    def log_save
        logger.info("#{name} was saved.")
    end    
end
