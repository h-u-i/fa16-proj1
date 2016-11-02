class Pokemon < ActiveRecord::Base
    include ActiveModel::Validations
    validates :name, :presence => {:message => "Can't be blank"}, :uniqueness => {:message => 'Be more creative'}
    after_initialize :init
    def init
        if self.new_record?
            self.health = 100
            self.level = 1
        end
    end
end
