def bye
    ## this method will save and close opened  file s
    exit 
end

  #this is to test code, user id will be a global var when a user is logged in
    @user_id = "Michael"


def create_file 
    puts "Ok, start typing. Remember, this app ain't fancy so don't hit enter till your done typing. :-)"
    
    new_user_post = gets.chomp
    post_count = 0
    post_id = "#{@user_id} + #{post_count}" ## post count will += each time a new post is created.
    puts new_user_post
    puts post_id
    file_list
end

def file_list
    puts "You are logged in as..."
    puts "What would you like to do?"
    puts "Select NEW or VIEW"
    puts "you can exit at anytime by typing EXIT"
    file_list_input = gets.chomp.downcase
    
    if file_list_input == "new"
        create_file
    elsif file_list_input == "view"
        
        puts "tough crackers, nothing to view yet. this is the end so far"
    exit
    elsif file_list_input == "exit"
        bye
    else 
        puts "try again bro-dog, I'm not hear'n ya good"
        file_list
    end
end


def create_account
    puts "Create an account"
    puts  "enter your username"
    new_username = gets.chomp
    ## user file needs to be loaded globally in order to be searched for current users and new users
    puts "Ok, now enter your password"
    new_password = gets.chomp
    ## entering the password should send it off to a private encryption method that uses the generated pin to encrypt the password.
    puts "Enter your password again just to be safe!"
    validate_password = gets.chomp
    if new_password == validate_password
        prompt "they match!"
        file_list
    else
        ## this will be an error module which will then fallback to re-enter password
        puts "try again, your passwords don't match. "
    end
        
    
end

def current_user_load
   # user_file =  ### decrypted user file, this method will run a decryption method

def load_user
        if @intro_user == "current"
            puts "placeholder, you exist!"
            ## temp goes strait to file list without validation
            file_list
        elsif @intro_user == "new"
            create_account
        elsif @intro_user == "exit"
            puts "ba-bye"
            bye
        else    
            puts "I didn't get that! Try again"
            intro
        end
    
end



def intro
    puts "Welcome to SEECRET NOTES!"
    puts "Are you an CURRENT user or a NEW user?"
    @intro_user = gets.chomp.downcase
    load_user
end

def create_user_file
    user_file = File.new('user.txt', 'w')
    user_file.close
end

def create_pin
    pin_file = File.new('pin.txt', "w")
    pin_file.puts(rand(1..99))
    pin_file.close
end



def initiate
    if File.exist?('pin.txt') && File.exist?("user.txt")
        intro
    else
        create_user_file
        create_pin
        puts "reload program " #will be auto reload after init
        initiate
    end
        
        
end

    initiate