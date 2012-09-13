class MessageGateway

   def initialize
      load_adapters
      load_authorizers
   end


   # Message
   def process_message(message)
      if authorized?(message)
         send_message(message)
      else
         puts "Unauthorized"
      end
   end


   def send_message(message)
      adapter = adapter_for(message)
      adapter.send(message)   ### Be careful. It is NOT send_message
   end


   def adapter_for(message)
      protocol = message.to.scheme
      adapter_class = protocol.capitalize + 'Adapter'
      adapter_class = self.class.const_get(adapter_class)
      adapter_class.new
   end


   def load_adapters
      lib_dir = File.dirname(__FILE__)
      full_pattern = File.join(lib_dir, 'adapter', '*.rb')
      Dir.glob(full_pattern).each { |file| require file }
   end


   # Authorization
   def camel_case(string)
      tokens = string.split('.')
      tokens.map! { |t| t.capitalize }
      tokens.join('Dot')
   end


   def worm_case(string)
      tokens = string.split('.')
      tokens.map! { |t| t.downcase }
      tokens.join('_dot_')
   end


   def authorized?(message)
      authorizer = authorizer_for(message)
      puts "Authorizer is #{authorizer}"
      user_method = worm_case(message.from) + '_authorized?'
      puts "User method is #{user_method}"
      if authorizer.respond_to?(user_method)
         return authorizer.send(user_method, message)
      end
      authorizer.authorized?(message)
   end


   def authorizer_for(message)
      to_host = message.to.host || 'default'
      authorizer_class = camel_case(to_host) + 'Authorizer'
      authorizer_class = self.class.const_get(authorizer_class)
      authorizer_class.new
   end


   def load_authorizers
      lib_dir = File.dirname(__FILE__)
      full_pattern = File.join(lib_dir, 'auth', '*.rb')
      Dir.glob(full_pattern).each { |file| require file }
   end



end