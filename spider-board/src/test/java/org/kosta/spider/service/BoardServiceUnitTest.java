package org.kosta.spider.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kosta.spider.model.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class BoardServiceUnitTest {

		@Test
		public void findTest() {
		  System.out.println("test");
//		  System.out.println(boardService.list());
		}
}
