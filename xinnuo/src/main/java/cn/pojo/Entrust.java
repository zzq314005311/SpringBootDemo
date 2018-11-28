package cn.pojo;

import java.util.Date;


public class Entrust {
    private Integer id;

    private Integer userid;

    private String title;

    private String money;

    private String address;

    private String type;

    private String content;

    private String lawtype;

    private Date time;

    private String reply;

    private String whether;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getLawtype() {
        return lawtype;
    }

    public void setLawtype(String lawtype) {
        this.lawtype = lawtype == null ? null : lawtype.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply == null ? null : reply.trim();
    }

    public String getWhether() {
        return whether;
    }

    public void setWhether(String whether) {
        this.whether = whether == null ? null : whether.trim();
    }
}