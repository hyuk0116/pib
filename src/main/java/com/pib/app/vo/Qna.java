package com.pib.app.vo;

import java.util.Date;

public class Qna {
    private Integer bno;
    private String title;
    private String content;
    private String writer;
    private Date date;
    private Integer from;
    private Integer prevBno;
    private Integer nextBno;

    public Integer getPrevBno() {
        return prevBno;
    }

    public void setPrevBno(Integer prevBno) {
        this.prevBno = prevBno;
    }

    public Integer getNextBno() {
        return nextBno;
    }

    public void setNextBno(Integer nextBno) {
        this.nextBno = nextBno;
    }

    public Integer getFrom() {
        return from;
    }

    public void setFrom(Integer from) {
        this.from = from;
    }

    public Integer getBno() {
        return bno;
    }

    public void setBno(Integer bno) {
        this.bno = bno;
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

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
