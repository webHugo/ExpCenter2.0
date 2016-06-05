package org.expc.daoimpl;

import org.expc.dao.BoardDao;
import org.expc.entity.Board;
import org.springframework.stereotype.Repository;
@Repository("boardDaoImpl")
public class BoardDaoImpl extends BaseDaoImpl<Board> implements BoardDao{

}
