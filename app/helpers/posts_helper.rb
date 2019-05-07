module PostsHelper
   def author_id_field(post)
      if post.author.nil?
         collection_select(:post, :author_id, Author.all, :id, :name)
      else
         hidden_field(:post, :author_id) 
      end
   end
end
