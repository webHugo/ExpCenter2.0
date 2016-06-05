package org.expc.daoimpl;

import org.expc.dao.CourseDao;
import org.expc.entity.Course;
import org.springframework.stereotype.Repository;
@Repository("courseDaoImpl")
public class CourseDaoImpl extends BaseDaoImpl<Course> implements CourseDao{

}
