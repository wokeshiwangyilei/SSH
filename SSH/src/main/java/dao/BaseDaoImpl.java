package dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
/**
 *  BaseDao 继承HibernateDaoSupport 实现操作简化。
 *  1.主要通过 HibernateDaoSupport的成员变量hibernateTemplate实现数据库的操作
 *     hibernateTemplate地位相当于hibernate里面session，主要通过它实现数据库的操作.
 *  2.HibernateDaoSupport 以来于sessionFactory.所以在声明dao时候需要注入sessionFactory
 */
public class BaseDaoImpl<T> extends HibernateDaoSupport implements IBaseDAO<T>{

	@SuppressWarnings("rawtypes")
	private Class entityClass=null;//T的类型是在运行时候才能确定
	//注入sessoinFactory，通过byName来注入sessoiono
	
		@Resource(name = "sessionFactory")
		public void setNewSessionFactory(SessionFactory sessionFacrory){
			this.setSessionFactory(sessionFacrory);
		}
		@SuppressWarnings("unchecked")
		public BaseDaoImpl(){
			@SuppressWarnings("rawtypes")
			//获取运行时候的类型userDao
			Class c = this.getClass();
			//-------end----------
			
			//获取父类
			Type t = c.getGenericSuperclass();
			//-------end----------
			
			//判断父类是否是具有泛型参数的类型
			if (t instanceof ParameterizedType) {
				//获取泛型
	            Type[] p = ((ParameterizedType) t).getActualTypeArguments();
	            
	            //获取第0个泛型类型
	            this.entityClass = (Class<T>) p[0];
			}
			//-------end----------
		}
		
		public Serializable save(T entity) { 
			Serializable ret = this.getHibernateTemplate().save(entity); 
			return ret;
		}

		public void update(T entity) {
			this.getHibernateTemplate().update(entity);
		}

		public void delete(T entity) {
			this.getHibernateTemplate().delete(entity);
		}

		public void saveOrUpdate(T entity) {
			this.getHibernateTemplate().saveOrUpdate(entity);
		}

		@SuppressWarnings("unchecked")
		public T get(Serializable id) {
			return (T) this.getHibernateTemplate().get(entityClass, id);
		}

		@SuppressWarnings("unchecked")
		public T load(Serializable id) {
			return (T) this.getHibernateTemplate().load(entityClass, id);
		}

		public List<T> loadAll() {
			// TODO Auto-generated method stub
			return null;
		}
		public void remove(Serializable id) {
			// TODO Auto-generated method stub
			
		}

		public List<T> find(final String hql, final Object... params) {
			//在HibernateCallback 的doInHibernate方法返回数据就是得到的数据.
			List<T> list = (List<T>) this.getHibernateTemplate().execute(new HibernateCallback<List<T>>() {
				
				@SuppressWarnings("unchecked")
				public List<T> doInHibernate(Session session) throws HibernateException {
					Query qr = session.createQuery(hql);
					//设置查询参数
					for(int i=0;i<params.length;i++){
						qr.setParameter(i,params[i]);
					}
					List<T> list2 = qr.list();
					return list2;
				}

				
			});
			return list;
		}
		
		@SuppressWarnings("rawtypes")
		public List findPage(final String hql,final int pageStar,final int pageSize, final Object... params) {
			List<T> list = (List<T>) this.getHibernateTemplate().execute(new HibernateCallback<List<T>>() {
				@SuppressWarnings("unchecked")
				public List<T> doInHibernate(Session session) throws HibernateException {
					Query qr = session.createQuery(hql);
					//设置查询参数
					for(int i=0;i<params.length;i++){
						qr.setParameter(i,params[i]);
					}
					
					//设置翻页参数
					qr.setFirstResult(pageStar);
					qr.setMaxResults(pageSize);
					
					List<T> list = qr.list();
					return list;
				}
			}); 
			
			return list;
		}
		
		public int exeUpdate(final String hql, final Object... values) {
			Integer count = (Integer) this.getHibernateTemplate().execute(new HibernateCallback<Integer>() {
				public Integer doInHibernate(Session session) throws HibernateException {
					Query qr = session.createQuery(hql);
					//设置查询参数
					for(int i=0;i<values.length;i++){
						qr.setParameter(i,values[i]);
					}
					
					int ret = qr.executeUpdate();
					
					return ret;
				}
			});
			return count;
		}
		
}
