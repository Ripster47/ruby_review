
def drive_thru

  welcome_msg = rand(3)
  
    if welcome_msg == 1
        puts "Welcome to Goodburger, Home of the goodburger, can I take your order?"
    elsif welcome_msg == 2
        puts "Welcome to the Krusty Krab, Home of the Krabby Patty! How may I help yooooooouuuuuu..."
    else welcome_msg == 3
        puts "Hello and welcome the Chokey Chicken! The chicken necks are on special today! How many ya want?"
    end

  stop = false
  thats_it = 0
  
  until stop == true

    order = gets.chomp
   
      if order != order.upcase
        puts "Sorry dude! Can't hear you!"

      elsif order.include? "manager".upcase
        puts "Bro, I am the manager..."
        
      elsif order == "THATS IT"
          thats_it += 1
          
          if thats_it == 3
             stop = true
          else
             puts "Anything else?"
          end 

      else order == order.upcase
          
        response = rand(6)
            
            if response == 1
              puts "Whatever dude, what else do you want?"

            elsif response == 2
              puts "Would you like to super size that?"

            elsif response == 3
              puts "You said orange soda, right?"

            elsif response == 4
              puts "You want twelve of those?"

            elsif response == 5
              puts "You dont have to be so loud bro!"

            else response == 6
              puts "One of everything? Got it!"
            
            end 
        end
    end

  puts "Pull up to the first window"

end

drive_thru

