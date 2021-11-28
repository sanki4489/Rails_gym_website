class Client < ApplicationRecord
    belongs_to :program

    after_create :log_create
    after_save :log_save
    after_commit :log_commit

 private
    def log_create 
        logger.info("Client #{name} was created.")
    end
    
    def log_save
        logger.info("Client #{name} was saved.")
    end

    def log_commit
        logger.info("Client #{name} was commited.")
    end
end
