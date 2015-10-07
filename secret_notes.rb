def exit
    ## this method will save and close opened  file s
    exit 
end

def file_list
    puts "You are logged in as..."
    puts "What would you like to do?"
    puts "Select NEW or VIEW"
    puts "you can exit at anytime by typing EXIT"
    file_list_input = gets.chomp.downcase
    ## temp
    puts file_list_input
    puts "this is the end so far"
    exit
end


def create_account
    puts "Create an account"
    puts  "enter your username"
    new_username = gets.chomp
    ## user file needs to be loaded globally in order to be searched for current users and new users
    puts "Ok, now enter your password"
    new_password = gets.chomp
    ## entering the password should send it off to a private encryption method that uses the generated pin to encrypt the password.
    puts. "Enter your password again just to be safe!"
    validate_password = gets.chomp
    if new_password == validate_password
        prompt "they match!"
        file_list
    else
        ## this will be an error module which will then fallback to re-enter password
        puts "try again, your passwords don't match. "
    end
        
    
end

def load_user
    user_file = File.read('user.csv', 'a+') 
    user_file.each do |user| 
        if user == @current_new
            puts "placeholder, you exist!"
        else
            create_account
        end
end



def intro
    puts "Welcome to SEECRET NOTES!"
    puts "Are you an CURRENT user or a NEW user?"
    @current_new = gets.chomp
    load_user
end



def initiate
    if File.exist?('pin.txt') && File.exist?("user.csv")
        intro
    else
        user_file = File.new("user.csv")
        close
        @application_pin = rand(1..z)
        pin_file = File.new('pin.txt')
        @application_pin
        close
    end
        
        
end
    
    initiate