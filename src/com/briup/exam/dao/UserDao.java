package com.briup.exam.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.briup.exam.bean.User;

@Repository
public class UserDao extends BaseDao<User> {
	public User findByExample(User user)
	{
		Criteria criteria = getSession().createCriteria(getEntityClass());
       List<User>list =  criteria.add(Restrictions.eq("name", user.getName())).add(Restrictions.eq("password",user.getPassword())).list();
       return list.isEmpty()?null:list.get(0);
	}
}
