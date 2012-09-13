class RussolsenDotComAuthorizer

   def russ_dot_olsen_authorized?(message)
      true
   end


    def authorized?(message)
      message.text.size < 2048
   end

end