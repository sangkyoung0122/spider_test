package org.kosta.spider.model;

import java.util.List;

public interface BoardDao {
  public List<BoardVo> list(PagingBean pb);
  public int getCount();
  public List pageRow();
}
