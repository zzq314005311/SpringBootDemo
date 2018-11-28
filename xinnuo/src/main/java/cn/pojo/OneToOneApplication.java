package cn.pojo;

public class OneToOneApplication {
    private Integer id;

    private String content;

    private String whether;

    private Integer lawyerid;

    private String type;

    private String average;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getWhether() {
        return whether;
    }

    public void setWhether(String whether) {
        this.whether = whether == null ? null : whether.trim();
    }

    public Integer getLawyerid() {
        return lawyerid;
    }

    public void setLawyerid(Integer lawyerid) {
        this.lawyerid = lawyerid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getAverage() {
        return average;
    }

    public void setAverage(String average) {
        this.average = average == null ? null : average.trim();
    }
}