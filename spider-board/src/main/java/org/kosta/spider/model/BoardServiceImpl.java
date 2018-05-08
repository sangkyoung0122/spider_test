package org.kosta.spider.model;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
  @Autowired
  private BoardDao boardDao;

  @Override
  public ListVo list(int nowPage) {
    int count = boardDao.getCount();
    PagingBean pb = new PagingBean(count,nowPage);
    List<BoardVo> list1 = boardDao.list(pb);
    ListVo list=new ListVo(pb,list1);
    return list;
  }
  

}
