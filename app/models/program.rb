class Program < ApplicationRecord
    has_many :clients, :dependent => :delete_all

    after_create :log_create
    after_save :log_save
    after_commit :log_commit

 private
    def log_create 
        logger.info("Program #{name} was created.")
    end
    
    def log_save
        logger.info("Program #{name} was saved.")
    end

    def log_commit
        logger.info("Program #{name} was commited.")
    end
end
