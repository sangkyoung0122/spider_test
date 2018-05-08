package org.kosta.spider.model;

import java.util.List;

public class ListVo {
private PagingBean pb;
private List<BoardVo> blist;
public ListVo() {
  super();
  // TODO Auto-generated constructor stub
}
public ListVo(PagingBean pb, List<BoardVo> blist) {
  super();
  this.pb = pb;
  this.blist = blist;
}
public PagingBean getPb() {
  return pb;
}
public void setPb(PagingBean pb) {
  this.pb = pb;
}
public List<BoardVo> getBlist() {
  return blist;
}
public void setBlist(List<BoardVo> blist) {
  this.blist = blist;
}
@Override
public String toString() {
  return "ListVo [pb=" + pb + ", blist=" + blist + "]";
}

}
