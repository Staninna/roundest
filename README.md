# Roundest Pokémon Voting Site

This is a web application built with PHP that allows users to vote on the roundest Pokémon. The application uses the Elo rating system to calculate each Pokémon's ranking based on user votes.

## How it works

Every time a user visits the site, they are presented with two random Pokémon. The user must then choose which of the two Pokémon is the rounder of the two. Each time a user votes, the application updates the Elo rating for both Pokémon based on the outcome of the vote. The Pokémon with the higher Elo rating is considered to be rounder, and their ranking is updated accordingly.

## Installation

To install this application, you will need to have PHP and a web server installed on your computer. Once you have those installed, follow these steps:

1. Clone this repository to your local machine.
2. Copy the contents of the `/src` directory to your web server's document root directory.
3. Create a new MySQL database and import/run the `pokemon.sql` file located in the `database` directory.
4. Update the details in the `config.example.php` file located in the `src/backend` directory and rename the file to `config.php`.
5. Navigate to the URL where you installed the application in your web browser.

## License

This project is licensed under the GNU General Public License v3.0. See the `LICENSE` file for details.
