package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteDAO;
import com.quiz.lesson06.model.Favorite;

@Service
public class FavoriteBO {

	@Autowired
	private FavoriteDAO favoriteDAO;

	public void addBookmark(String name, String address) {
		favoriteDAO.insertBookmark(name, address);
	}
	public List<Favorite> getBookmarkList() {
		return favoriteDAO.selectBookmarkList();
	}
	
	public Favorite existBookmarkByAddress(String address) {
		return favoriteDAO.existBookmarkByAddress(address);
	}
	
	public void deleteBookmark(int id) {
		favoriteDAO.deleteBookmark(id);
	}
	
	public int deleteFavoriteById(int id) {
		return favoriteDAO.deleteFavoriteById(id);
	}
}