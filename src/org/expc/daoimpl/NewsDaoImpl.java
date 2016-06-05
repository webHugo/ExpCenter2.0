package org.expc.daoimpl;

import org.expc.dao.NewsDao;
import org.expc.entity.News;
import org.springframework.stereotype.Repository;
@Repository("newsDaoImpl")
public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao{

}
