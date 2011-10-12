class Post < ActiveRecord::Base
    attr_accessible :content, :user_from, :user_to

end
