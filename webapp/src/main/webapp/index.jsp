<!DOCTYPE html>
<html>
<head>
    <title>Colorful Guessing Game</title>
    <style>
        body {
            text-align: center;
            background-color: #f0f0f0;
        }
        .game-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #888888;
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1>Colorful Guessing Game</h1>
    <div class="game-container">
        <h2>Guess a Number Between 1 and 10</h2>
        <form action="colorful_game.jsp" method="post">
            Enter your guess: <input type="number" name="guess" min="1" max="10">
            <input type="submit" value="Submit">
        </form>
        
        <%
            // Java code to handle the game logic
            int randomNumber = (int) (Math.random() * 10) + 1;
            String message = "";

            if (request.getMethod().equals("POST")) {
                int userGuess = Integer.parseInt(request.getParameter("guess"));
                if (userGuess == randomNumber) {
                    message = "Congratulations! You guessed the correct number.";
                } else {
                    message = "Try again. The correct number is not " + userGuess + ".";
                }
            }
        %>

        <p><%= message %></p>
    </div>
</body>
</html>
