package service;

import java.io.Serializable;
import java.util.List;
/**
 * 
* @ClassName: IBaseService 
* @Description: 这里的方法与IBaseDAO相一致
* @author 王亦雷 
* @date 2017年9月22日 下午9:40:02 
* 
* @param <T>
 */
public interface IBaseService<T> {
	T load(Serializable id);

	T get(Serializable id);

	List<T> loadAll();

	Serializable save(T entity);

	void remove(Serializable id);

	void saveOrUpdate(T entity);

	void update(T entity);

	void delete(T entity);
}
