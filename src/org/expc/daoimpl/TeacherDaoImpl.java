package org.expc.daoimpl;

import org.expc.dao.TeacherDao;
import org.expc.entity.Teacher;
import org.springframework.stereotype.Repository;
@Repository("teacherDaoImpl")
public class TeacherDaoImpl extends BaseDaoImpl<Teacher> implements TeacherDao{

}
