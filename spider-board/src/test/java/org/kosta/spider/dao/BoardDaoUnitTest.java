package org.kosta.spider.dao;

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.kosta.spider.model.BoardService;
import org.kosta.spider.model.BoardVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class BoardDaoUnitTest {
  @Resource
  BoardService boardService;
  @Test
  public void findTest() {
//   List<BoardVo> list=boardService.list(5);
//   for(BoardVo vo:list)
//     System.out.println(vo);
  }
}


