# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


require 'pry'
class User
    attr_accessor :name, :photo
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def photos
        Photo.all.select{|photo| photo.user == self}
    end
    def  self.all
        @@all
    end
end
class Photo
    attr_accessor :photo, :user
    @@all = []
    def initialize()
        @@all << self
    end
    # def user=(user_name)
    #     User.all.find{|user| user.photo == self}
    # end
    def comments
        Comment.all.select{|comment| comment.photo == self }
    end
    def  self.all
        @@all
    end
    def make_comment(comment)
        Comment.new(comment)
    end
end
class Comment
    attr_accessor :photo, :comment
    @@all = []
    def initialize(comment)
        @comment = comment
        @@all << self
    end
    def  self.all
        @@all
    end
end
sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]
sandwich_photo.comments
# => []
sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]
Comment.all
#=> [#<Comment:0x00007fae28043700>]
binding.pry


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
