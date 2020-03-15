module Blorgh
  class Article < ApplicationRecord
    attr_accessor :author_name
    before_validation :set_author

    has_many :comments
    # belongs_to :author, class_name: "User"
    # belongs_to :author, class_name: Blorgh.author_class
    belongs_to :author, class_name: Blorgh.author_class.to_s
    private
    def set_author
      # self.author = User.find_or_create_by(name: author_name)
      # self.author = Blorgh.author_class.constantize.find_or_create_by(name: author_name)
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end
  end
end
