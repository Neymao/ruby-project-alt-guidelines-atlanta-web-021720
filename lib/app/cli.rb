require "tty-prompt"

class CommandLineInterface
    def run 
        greet
        optionMenu
    end

    def greet
        puts "Never miss another soccer game!!"
        puts "Thinking of watching your favorite soccer team?  but not sure when they play? We can help you with that!"
        puts "what is your name?"
        name = gets.chomp
        puts "Welcome #{name}!"
    end

    def optionMenu 
        puts "menu options!"
        puts "1. create"
        puts "2. list"
        puts "3. update"
        puts "4. delete"
        puts "choose the option number you want to execute"
        option = gets.chomp.to_i

        case option
        when 1
          create
        when 2
          listTeams
        when 3
          update
        when 4
          delete
        else
          puts "option invalid"
          optionMenu
        end
    end   

    def create
        puts "Type your team"
        name = gets.chomp
        team = Team.new
        team.name = name
        team.save
        puts "Team succesfully saved"
        optionMenu
    end

    def listTeams
        puts "existing teams:"
        list = Team.select("name")
        puts "#{list}"
        list.each do  |value| 
            puts "team => #{value.name}"
        end 
        optionMenu
    end

    def update
        puts "existing teams:"
        list = Team.select("name")
        puts "#{list}"
        list.each do  |value| 
            puts "team => #{value.name}"
        end 

        puts "Type the team name you want to modify"
        nameOld = gets.chomp
        found_team = Team.where(name: nameOld)
        puts "Type your new team name"
        newName = gets.chomp
        found_team[0].name = newName
        found_team[0].save
        puts "Successfully Updated"
        optionMenu
    end

    def delete
        puts "existing teams:"
        list = Team.select("name")
        puts "#{list}"
        list.each do  |value| 
            puts "team => #{value.name}"
        end 

        puts "Type the team name you want to delete"
        nameDelete = gets.chomp
        found_team = Team.where(name: nameDelete)
        found_team[0].delete
        puts "Successfully Deleted"
        optionMenu
    end 
end