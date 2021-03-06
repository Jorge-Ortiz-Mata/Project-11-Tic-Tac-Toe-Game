
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

# ------- EXAMPLE 02. Break a loop. -----

for  in 0...50
    puts a
    if a == 20
        break
    end
    a += 1
end

=end

=begin
array = [3, 6, 4]
array2 = Array.new

for i in 0...array.length
    print "Insert a value: "
    value = (gets.chomp).to_i
end
=end

# ------- EXAMPLE 03. Comparing array's contents. -----
=begin
numbers = [
    [2,8,4],
    [6,2,9],
    [9,2,9],
    [9,2,6],
    [2,6,1],
    [0,7,4]
]

numbers2 = [9,6,2]

for i in 0...numbers.length
    numbers[i] = numbers[i].sort
    print "#{numbers[i]} "
    numbers2 = numbers2.sort
    if numbers[i] == numbers2
        print true
    elsif
        print false
    end
    puts "\n"
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

def ticTacToeCompare(player_own_response, tic_tac_toe_wins)
        
    tic_tac_toe_wins_ind = Array.new
    value = 0

    for i in 0...tic_tac_toe_wins.length

        tic_tac_toe_wins_ind = []
        tic_tac_toe_wins_ind = tic_tac_toe_wins[i]
        value = 0

        for i in 0...player_own_response.length

            if tic_tac_toe_wins_ind.include? player_own_response[i]
                value += 1
            else
                value = value
            end
        end

        if value == 3
            return true
        end
    end    
end

def ticTacToeDisplay(player_choice, symbol, tic_tac_toe_matrix)
        if player_choice == 0
        tic_tac_toe_matrix [0][0] = symbol

        elsif player_choice == 1
        tic_tac_toe_matrix [0][1] = symbol

        elsif player_choice == 2
        tic_tac_toe_matrix [0][2] = symbol

        elsif player_choice == 3
        tic_tac_toe_matrix [1][0] = symbol
        
        elsif player_choice == 4
        tic_tac_toe_matrix [1][1] = symbol

        elsif player_choice == 5
        tic_tac_toe_matrix [1][2] = symbol

        elsif player_choice == 6
        tic_tac_toe_matrix [2][0] = symbol

        elsif player_choice == 7
        tic_tac_toe_matrix [2][1] = symbol

        elsif player_choice == 8
        tic_tac_toe_matrix [2][2] = symbol    

        end    

        puts "\n"
        puts "#{tic_tac_toe_matrix [0][0]} | #{tic_tac_toe_matrix [0][1]} | #{tic_tac_toe_matrix [0][2]}          0 | 1 | 2"
        puts "---------         -----------"
        puts "#{tic_tac_toe_matrix [1][0]} | #{tic_tac_toe_matrix [1][1]} | #{tic_tac_toe_matrix [1][2]}          3 | 4 | 5"
        puts "---------         -----------"
        puts "#{tic_tac_toe_matrix [2][0]} | #{tic_tac_toe_matrix [2][1]} | #{tic_tac_toe_matrix [2][2]}          6 | 7 | 8"
        puts "\n"

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
same_response = 0

response = false

# ------------------------------------ OBJECTS. --------------------------------

player_info = Player.new(player_name, player_victories)

# ------------------------------------ ARRAYS. --------------------------------

players_stock = Array.new
player_result_1 = Array.new
player_result_2 = Array.new
tic_tac_toe_matrix = Array.new
players_in_role = Array.new
general_answers = Array.new

players_stock.push(player_info)

tic_tac_toe_wins = [        # All the possible winner's combinations.

    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],

    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],

    [0, 4, 8],
    [2, 4, 6]

]

tic_tac_toe_matrix = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
]

# ---------------------------------- STEPS. --------------------------------

# --------- STEP 00. Welcome message------------
puts "\n"
puts "WELCOME TO THE TIC TAC TOC GAME"
puts "\n"
puts "Before to start, tell me, are you a new player or you've already registered in our database?"

# --------- STEP 10. Ask to the players. ------------

while menu_option_1 != 4

    puts "\n"
    puts "(1) I'm a new player."
    puts "(2) Play the game."
    puts "(3) Show players."
    puts "(4) Leave."
    puts "\n"
    print "R: "
    menu_option_1 = (gets.chomp).to_i

    case menu_option_1

# --------- STEP 20. Create a new player. ------------

        when menu_option_1 = 1
            puts "\n"
            cratePlayer(players_stock)
            menu_option_1 = 0

# --------- STEP 30. Play the game. ------------

        when menu_option_1 = 2
            puts "\n"
            puts "You've chosen play the game!."

# --------- STEP 31. Chose players. ------------

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
                players_in_role = [
                    [players_stock[player1], player_result_1, "X"], 
                    [players_stock[player2], player_result_2, "O"] 
                ]
                puts "\n"
                puts "Are you ready?"
                puts "\n"
                puts "(1) Yes."
                puts "(2) No."
                puts "\n"
                print "R: "
                ready_or_not = (gets.chomp).to_i

# --------- STEP 32. Game's instructions. ------------

                if ready_or_not == 1
                    puts "\n"
                    puts "HERE WE GO! TIC TAC TOE'S GAME WAS BEGIN!"
                    puts "\n"
                    puts "Remember you have to type the position's number of the tic tac toe. These are the positions: "
                    puts "\n"
                    puts " 0 | 1 | 2"
                    puts "-----------"
                    puts " 3 | 4 | 5"
                    puts " ----------"
                    puts " 6 | 7 | 8"
                    puts "\n"
                    puts "For example, if I am player 1 (X) and I type the position's number 3 on the keyboard, this will be the result: "
                    puts "\n"
                    puts "   |   |  "
                    puts "-----------"
                    puts " X |   |  "
                    puts "-----------"
                    puts "   |   | "
                    puts "\n"
                    puts "And, if I am player 2 (O) and I type the position's number 6 on the keyboard, this will be the result: "
                    puts "\n"
                    puts "   |   |   "
                    puts "-----------"
                    puts " X |   |   "
                    puts "-----------"
                    puts " O |   |   "
                    puts "\n"
                    print "Did you understand? "
                    puts "\n"
                    puts "(1) Yes."
                    puts "(2) No."
                    puts "\n"
                    print "R: "
                    players_agree = (gets.chomp).to_i

# --------- STEP 33. Playing the game. ------------

                    if players_agree == 1
                        puts "\n"
                        puts "PERFECT! Let's do this!."
                        puts "\n"
                        puts "   |   |             0 | 1 | 2"
                        puts "-----------"
                        puts "   |   |             3 | 4 | 5"
                        puts "-----------"
                        puts "   |   |             6 | 7 | 8"
                        puts "\n"

                        turn_games = 0
                        response = false
                        while turn_games < 9

                            players_in_role.each do |player_in_turn, player_own_response, symbol|
                                if turn_games == 9
                                    puts "\n"
                                    puts "No one could win this time. Good luck next time!"
                                    break
                                break
                                end

                                puts "\n"
                                same_response = 0
                                while same_response == 0

                                    print "Please: #{player_in_turn.name}, you turn: "
                                    player_choice = (gets.chomp).to_i
                                    puts "\n"
                                    
                                    if player_choice >= 0 && player_choice <= 8

                                        if general_answers.include? player_choice
                                        puts "A player already selected that answer, please try again."
                                        same_response = 0
                                        else
                                        general_answers.push(player_choice)
                                        same_response = 1
                                        end
                                    
                                    elsif player_choice < 0 || player_choice > 8
                                        puts "You type a wrong value (only 0 to 8)"
                                        puts "Please, try again."
                                        same_response = 0
                                    end
                                end
                                puts "\n"

                                player_own_response.push(player_choice)
                                puts "You response: #{player_own_response}"
                                ticTacToeDisplay(player_choice, symbol, tic_tac_toe_matrix)
                                response = ticTacToeCompare(player_own_response, tic_tac_toe_wins)
                                if response == true
                                    puts "#{player_in_turn.name}, YOU WON !!!"
                                    puts "It was a really good match." 
                                    puts "Ready for a new game?"
                                    player_in_turn.victories += 1
                                    turn_games = 9
                                    break
                                break
                                else
                                    response = false
                                end
                                turn_games += 1
                                puts "Turn: #{turn_games}"
                            end
                        end

# --------- STEP 33. Reseting the game. ------------

                        same_response = 0
                        response = 0
                        player_choice = 0
                        player_result_1 = []
                        player_result_2 = []
                        players_in_role = []
                        general_answers = []
                        tic_tac_toe_matrix = [
                            [" ", " ", " "],
                            [" ", " ", " "],
                            [" ", " ", " "]
                        ]
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
                players_in_role = []
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

# --------- STEP 40. See all players. ------------

            menu_option_1 = 0
        when menu_option_1 = 3
            puts "\n"
            puts "You've decided to see all the players in our database."
            puts "This is the list."
            puts "\n"
            showPlayersList(players_stock)
            menu_option_1 = 0

# --------- STEP 50. Leave the game. ------------

        when menu_option_1 = 4
            puts "\n"
            puts "You've decided to leave the game."
            puts "Have an amazing day!!"
            puts "\n"

# --------- STEP 60. Wrong option. ------------

        else
            puts "\n"
            puts "You type a different value, please try again."
            puts "\n"
            menu_option_1 = 0
    end
end

# ------------------------------------------------- END --------------------------------------------------
