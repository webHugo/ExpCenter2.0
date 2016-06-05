package org.expc.daoimpl;

import org.expc.dao.StudentDao;
import org.expc.entity.Student;
import org.springframework.stereotype.Repository;
@Repository("studentDaoImpl")
public class StudentDaoImpl extends BaseDaoImpl<Student> implements StudentDao{

}
