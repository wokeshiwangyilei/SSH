package dao;

import java.io.Serializable;
import java.util.List;



public interface IBaseDAO<T> {
	/**
	 * 加载一个实体，属性延迟加载
	 * @param id
	 * @return
	 */
	T load(Serializable id);
	
	/**
	 * 取出一个实体，所有属性都取出
	 * @param id
	 * @return
	 */
	T get(Serializable id);
	
	/**
	 * 加载所有实体
	 * @return
	 */
	List<T> loadAll();
	
	/**
	 * 添加实体
	 * @param entity
	 * @return
	 */
	Serializable save(T entity);
	
	/**
	 * 删除实体
	 * @param id
	 */
	void remove(Serializable id);
	
	/**
	 * 保存或更新实体
	 * @param entity
	 */
	void saveOrUpdate(T entity);
	
	/**
	 * 更新实体
	 * @param entity
	 */
	void update(T entity);
	

	int exeUpdate(String hql, Object...values);

	void delete(T entity);
	
	@SuppressWarnings("rawtypes")
	List find(String hql, Object... params);
	@SuppressWarnings("rawtypes")
	List findPage(String hql, int pageStar, int pageSize, Object... params);
}
