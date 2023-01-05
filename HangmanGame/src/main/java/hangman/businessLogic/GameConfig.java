package hangman.businessLogic;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages="hangman.businessLogic")
public class GameConfig {
	
//	@Bean("gameRepository")
//	public GameRepository gameRepository() {
//		return gameRepository();
//	}
//	
//	@Bean("gameService")
//	public GameService gameService() {
//		return new GameService();
//	}
//	
//	@Bean("wordList")
//	public wordList wordList() {
//		String[] list=new String[] {"Abyss","Bubbly",
//        "Buzz",
//        "Buff",
//        "Cozy",
//        "Fluff",
//        "Fluffy",
//        "Fizz",
//        "Fizzy",
//        "Fox",
//        "Jinx",
//       "Lucky",
//        "Puzzle",
//       // <!-- medium words-->
//        "Foxglove",
//       "Abruptly",
//        "Voyeurism",
//        "Pneumonia",
//        "Jiujitsu",
//        "Espionage",
//        "Witchcraft",
//        "Razzmatazz",
//        "Zigzagging",
//        "Buckaroo",
//        "Iatrogenic",
//        "Jawbreaker",
//     // <!-- hard words-->
//        "Voodoo",
//        "Jazz_singer_drops_beats",
//        "Buzzing_around_the_beekeeper",
//        "Awkward_klutzy_numbskull",
//        "Croquet_players_fix_games",
//        "Throwing_gnarly_punches",
//        "Absurd_wizard_mystifies",
//        "Jiujitsu_masters_train",
//        "Wimpy_geek_panics",
//        "Twelve_foxes_hunt",
//        "A_quiet_jinx_sulks",
//        "Nine_tailed_demon_fox",
//        "The_great__wall_of_china",
//        "Sage_of_six_paths"};
//		wordList wordList=new wordList(list);
//		return wordList;
//	}

}
