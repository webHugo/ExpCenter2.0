package org.expc.daoimpl;

import org.expc.dao.AdminDao;
import org.expc.entity.Admin;
import org.springframework.stereotype.Repository;
@Repository("adminDaoImpl")
public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao{

}
