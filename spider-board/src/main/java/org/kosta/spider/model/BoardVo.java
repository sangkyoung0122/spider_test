package org.kosta.spider.model;

public class BoardVo {

  private String no;
  private String title;
  private String content;
  private int hits;
  private String time_posted;
  private MemberVo memberVo;
  public BoardVo() {
    super();
    // TODO Auto-generated constructor stub
  }
  public BoardVo(String no, String title, String content, int hits, String time_posted,
      MemberVo memberVo) {
    super();
    this.no = no;
    this.title = title;
    this.content = content;
    this.hits = hits;
    this.time_posted = time_posted;
    this.memberVo = memberVo;
  }
  public String getNo() {
    return no;
  }
  public void setNo(String no) {
    this.no = no;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public int getHits() {
    return hits;
  }
  public void setHits(int hits) {
    this.hits = hits;
  }
  public String getTime_posted() {
    return time_posted;
  }
  public void setTime_posted(String time_posted) {
    this.time_posted = time_posted;
  }
  public MemberVo getMemberVo() {
    return memberVo;
  }
  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
  }
  @Override
  public String toString() {
    return "BoardVo [no=" + no + ", title=" + title + ", content=" + content + ", hits=" + hits
        + ", time_posted=" + time_posted + ", memberVo=" + memberVo + "]";
  }
}
