CREATE TABLE pokemon (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    elo_rating int NOT NULL DEFAULT '1500',
    total_votes int NOT NULL DEFAULT '0'
);

INSERT INTO pokemon (name) VALUES
('Bulbasaur'),
('Ivysaur'),
('Venusaur'),
('Charmander'),
('Charmeleon'),
('Charizard'),
('Squirtle'),
('Wartortle'),
('Blastoise'),
('Caterpie'),
('Metapod'),
('Butterfree'),
('Weedle'),
('Kakuna'),
('Beedrill'),
('Pidgey'),
('Pidgeotto'),
('Pidgeot'),
('Rattata'),
('Raticate'),
('Spearow'),
('Fearow'),
('Ekans'),
('Arbok'),
('Pikachu'),
('Raichu'),
('Sandshrew'),
('Sandslash'),
('Nidoran♀'),
('Nidorina'),
('Nidoqueen'),
('Nidoran♂'),
('Nidorino'),
('Nidoking'),
('Clefairy'),
('Clefable'),
('Vulpix'),
('Ninetales'),
('Jigglypuff'),
('Wigglytuff'),
('Zubat'),
('Golbat'),
('Oddish'),
('Gloom'),
('Vileplume'),
('Paras'),
('Parasect'),
('Venonat'),
('Venomoth'),
('Diglett'),
('Dugtrio'),
('Meowth'),
('Persian'),
('Psyduck'),
('Golduck'),
('Mankey'),
('Primeape'),
('Growlithe'),
('Arcanine'),
('Poliwag'),
('Poliwhirl'),
('Poliwrath'),
('Abra'),
('Kadabra'),
('Alakazam'),
('Machop'),
('Machoke'),
('Machamp'),
('Bellsprout'),
('Weepinbell'),
('Victreebel'),
('Tentacool'),
('Tentacruel'),
('Geodude'),
('Graveler'),
('Golem'),
('Ponyta'),
('Rapidash'),
('Slowpoke'),
('Slowbro'),
('Magnemite'),
('Magneton'),
('Farfetchd'),
('Doduo'),
('Dodrio'),
('Seel'),
('Dewgong'),
('Grimer'),
('Muk'),
('Shellder'),
('Cloyster'),
('Gastly'),
('Haunter'),
('Gengar'),
('Onix'),
('Drowzee'),
('Hypno'),
('Krabby'),
('Kingler'),
('Voltorb'),
('Electrode'),
('Exeggcute'),
('Exeggutor'),
('Cubone'),
('Marowak'),
('Hitmonlee'),
('Hitmonchan'),
('Lickitung'),
('Koffing'),
('Weezing'),
('Rhyhorn'),
('Rhydon'),
('Chansey'),
('Tangela'),
('Kangaskhan'),
('Horsea'),
('Seadra'),
('Goldeen'),
('Seaking'),
('Staryu'),
('Starmie'),
('Mr. mime'),
('Scyther'),
('Jynx'),
('Electabuzz'),
('Magmar'),
('Pinsir'),
('Tauros'),
('Magikarp'),
('Gyarados'),
('Lapras'),
('Ditto'),
('Eevee'),
('Vaporeon'),
('Jolteon'),
('Flareon'),
('Porygon'),
('Omanyte'),
('Omastar'),
('Kabuto'),
('Kabutops'),
('Aerodactyl'),
('Snorlax'),
('Articuno'),
('Zapdos'),
('Moltres'),
('Dratini'),
('Dragonair'),
('Dragonite'),
('Mewtwo'),
('Mew');
