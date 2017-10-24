package com.lucatic.agenda.dao;

import java.util.List;


public interface IDAO <T,K> {

	public T findById(K key);

	public  List<T> findAll();

	public int delete(T ov);

	public int insert(T ov);

	public int update(T ov);

}
