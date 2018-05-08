package org.kosta.spider.model;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDao {

  @Autowired
  private SqlSessionTemplate template;
  
  @Override
  public List<BoardVo> list(PagingBean pb){
    return template.selectList("board.list",pb);
  }
  public int getCount() {
    return template.selectOne("board.getCount");
  }
  @Override
  public List pageRow() {
    return template.selectList("board.pageRow");
  }
  
}
