package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Favorite;

@Repository
public interface FavoriteDAO {
	public void insertBookmark(@Param("name") String name, @Param("address") String address);
	
	public List<Favorite> selectBookmarkList();
}