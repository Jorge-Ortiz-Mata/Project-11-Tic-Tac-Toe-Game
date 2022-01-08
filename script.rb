
#  ---------------------------------------------------------------  PRACTICE 05. TIC TAC TOE GAME.  ------------------------------------------------------------
=begin

    Description: 
        This is the TIC TAC TOE GAME.
        You will have to introduce the participant's names.
        Remeber, each player will use either X or O.
        Once a player gather three consecutives symbols,
        that player will win. 

    Instructions used:
        - Variables.
        - If-Else Statements.
        - While Loops.
        - For Loops.
        - Case expresions.
        - Methods or functions.
        - Clases.
        - Arrays.

    Author:
        - Jorge Ortiz Mata.
        - San Luis Potosí S.L.P. México
        - ortiz.mata.jorge@gmail.com
        - +52 (444) 576 3034.
=end

# ------------------------------------------------ HELP. -------------------------------------------------

=begin

# ------- EXAMPLE 01. Comparing two arrays. -----

array = [0, 1, 2]
arra_2 = [0, 1, 3]

if array == arra_2
    puts true
    else
    puts false
end

arra_2 = [0, 1, 2]

if array == arra_2
    puts true
    else
    puts false
end

=end

# ------------------------------------------------ START -------------------------------------------------

# ----------------------------------- CLASSES. --------------------------------

class Player
    attr_accessor :name, :victories
    def initialize(player_name, player_victories)
        @name = player_name
        @victories = player_victories
    end
end

# ----------------------------------- METHODS. --------------------------------

def cratePlayer(players_stock)
    puts "\n"
    puts "You've decided to create a new player."
    puts "\n"
    print "Please tell me your name: "
    player_name = (gets.chomp).to_s
    player_victories = 0
    player_id = players_stock.length
    player_info = Player.new(player_name, player_victories)
    puts "\n"
    puts "GREAT. Now please, take note of the next information."
    puts "\n"
    puts "ID-IDENTIFICATION's player: #{player_id}. PLAYER's name: #{player_info.name}. VICTORIES' player: #{player_info.victories}"
    puts "\n"
    puts "Good Luck!!"
    players_stock.push(player_info)
    return players_stock
end

def showPlayersList(players_stock)
    puts "\n"
    for i in 0...players_stock.length
        puts "ID: #{i}. NAME: #{(players_stock[i].name)}. VICTORIES: #{players_stock[i].victories}."
    end
end






# ---------------------------------- VARIABLES. --------------------------------

player_name = "Jorge"
player_victories = 0

player1 = 0
player2 = 0
player_choice = 0

ready_or_not = 0
players_agree = 0
turn_games = 0
menu_option_1 = 0

response = false

# ------------------------------------ OBJECTS. --------------------------------

player_info = Player.new(player_name, player_victories)

# ------------------------------------ ARRAYS. --------------------------------

players_stock = Array.new
player_result_1 = Array.new
player_result_2 = Array.new

players_stock.push(player_info)

tic_tac_toe_wins = [        # All the possible winner's combinations.

    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [2, 1, 0],
    [5, 4, 3],
    [8, 7, 6],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 3, 0],
    [7, 4, 1],
    [8, 5, 2],
    [0, 4, 8],
    [2, 4, 6],
    [8, 4, 0],
    [6, 4, 2]

]

# ---------------------------------- STEPS. --------------------------------


# --------- STEP 00. Welcome message------------
puts "\n"
puts "WELCOME TO THE TIC TAC TOC GAME"
puts "\n"

while menu_option_1 != 4

    puts "\n"
    puts "Before to start, tell me, are you a new player or you've already registered in our database?"
    puts "\n"
    puts "(1) I'm a new player."
    puts "(2) Play the game."
    puts "(3) Show players."
    puts "(4) Leave."
    puts "\n"
    print "R: "
    menu_option_1 = (gets.chomp).to_i

    case menu_option_1

        when menu_option_1 = 1
            puts "\n"
            cratePlayer(players_stock)
            menu_option_1 = 0

        when menu_option_1 = 2
            puts "\n"
            puts "You've chosen play the game!."

            if players_stock.length > 1
                puts "\n"
                puts "This our current player's database: "
                puts "\n"
                showPlayersList(players_stock)
                puts "\n"
                print "Please, who's gonna be PLAYER 1 (TYPE THE PLAYER'S ID IDENTIFICATION): "
                player1 = (gets.chomp).to_i
                print "Finally, who's gonna be PLAYER 2 (TYPE THE PLAYER'S ID IDENTIFICATION): "
                player2 = (gets.chomp).to_i
                puts "\n"
                puts "Player 1 (X) will be: #{players_stock[player1].name}, victories: #{players_stock[player1].victories}"
                puts "Player 2 (O) will be: #{players_stock[player2].name}, victories: #{players_stock[player2].victories}"
                puts "\n"
                puts "Are you ready?"
                puts "\n"
                puts "(1) Yes."
                puts "(2) No."
                puts "\n"
                ready_or_not = (gets.chomp).to_i

                if ready_or_not == 1
                    puts "\n"
                    puts "HERE WE GO! TIC TAC TOE'S GAME WAS BEGIN!"
                    puts "\n"
                    puts "Remember you have to type the position's number of the tic tac toe. These are the positions: "
                    puts "\n"
                    puts "0|1|2"
                    puts "-----"
                    puts "3|4|5"
                    puts "-----"
                    puts "6|7|8"
                    puts "\n"
                    puts "For example, if I am player 1 (X) and I type the position's number 3 on the keyboard, this will be the result: "
                    puts "\n"
                    puts " | | "
                    puts "-----"
                    puts "X| | "
                    puts "-----"
                    puts " | | "
                    puts "\n"
                    puts "And, if I am player 2 (O) and I type the position's number 6 on the keyboard, this will be the result: "
                    puts "\n"
                    puts " | | "
                    puts "-----"
                    puts "X| | "
                    puts "-----"
                    puts "O| | "
                    puts "\n"
                    print "Did you understand? "
                    puts "\n"
                    puts "(1) Yes."
                    puts "(2) No."
                    puts "\n"
                    players_agree = (gets.chomp).to_i

                    if players_agree == 1
                        puts "\n"
                        puts "PERFECT! Let's do this!."

                        turn_games = 0
                        while turn_games < 9

                                response = setPlayerChoice(player_result_1, player_result_2, tic_tac_toe_wins, players_stock, player_choice)
                                if response true
                                    turn_games = 9
                                elsif
                                    turn_games += 1
                                end

                                response = setPlayerChoice(player_result_1, player_result_2, tic_tac_toe_wins, players_stock, player_choice)
                                if response true
                                    turn_games = 9
                                elsif
                                    turn_games += 1
                                end
                            
























                        end
                        response = false
                        player_result_1 = []
                        player_result_2 = []
                        turn_games = 0
                    else
                        puts "\n"
                        puts "I see, well you can see an example by going to this website: yorch-edu.com"
                        puts "\n"
                    end
                    players_agree = 0
                    else
                        puts "\n"
                        puts "Come on! Well, you can do it later."
                end
                ready_or_not = 0
                else
                puts "\n"
                puts "Sorry, but, it seems that there's only one player. You need another player to play with."
                puts "Please, add another player to our database."
                puts "\n"
                puts "This our current player's database: "
                puts "\n"
                showPlayersList(players_stock)
                puts "\n"
            end

            menu_option_1 = 0
        when menu_option_1 = 3
            puts "\n"
            puts "You've decided to see all the players in our database."
            puts "This is the list."
            puts "\n"
            showPlayersList(players_stock)
            menu_option_1 = 0

        when menu_option_1 = 4
            puts "\n"
            puts "You've decided to leave the game."
            puts "Have an amazing day!!"
            puts "\n"

        else
            puts "\n"
            puts "You type a different value, please try again."
            puts "\n"
    end
end

# ------------------------------------------------- END --------------------------------------------------
