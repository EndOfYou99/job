package hangman.businessLogic;

import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component("gameRepository")
@Primary
public class GameRepository implements IGameRepository{
public HashMap<UUID,GameBean> gameRepository;

	
public GameRepository(HashMap<UUID,GameBean> gameRepository) {
	this.gameRepository=gameRepository;
	System.out.println("New GameRepository Constructor");
	System.out.println("New GameRepository Constructor");
	System.out.println("New GameRepository Constructor");
	System.out.println("New GameRepository Constructor");
}

    public boolean contains(UUID id) {
    	return gameRepository.containsKey(id);
    }

	public void update(UUID id,GameBean game) {
		gameRepository.replace(id,game);
	}
 
	public void add(UUID id,GameBean game) {
		gameRepository.put(id,game);
	}
	
	public GameBean getGameById(UUID id) {
		GameBean game=gameRepository.get(id);
		return game;
	}
	
	public boolean isEmpty() {
		if(gameRepository.isEmpty()) {
			return true;
		}
		else return false;
	}




	

	
	

}
