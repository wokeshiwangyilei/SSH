package service;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.IBaseDAO;

public class BaseServiceImp<T> implements IBaseService<T> {
	private IBaseDAO<T> iBaseDAO;


	public void setiBaseDAO(IBaseDAO<T> iBaseDAO) {
		this.iBaseDAO = iBaseDAO;
	}

	@Transactional
	public T load(Serializable id) {

		return iBaseDAO.load(id);
	}

	@Transactional
	public T get(Serializable id) {

		return iBaseDAO.get(id);
	}

	@Transactional
	public List<T> loadAll() {

		return iBaseDAO.loadAll();
	}

	@Transactional
	public Serializable save(T entity) {

		return iBaseDAO.save(entity);
	}

	@Transactional
	public void remove(Serializable id) {
		iBaseDAO.remove(id);
	}

	@Transactional
	public void saveOrUpdate(T entity) {
		iBaseDAO.saveOrUpdate(entity);
	}

	@Transactional
	public void update(T entity) {
		iBaseDAO.update(entity);
	}

	@Transactional
	public void delete(T entity) {
		iBaseDAO.delete(entity);
	}

}
