package com.tosit.yls.entiy;

/**
 * Created by DELL on 2016/9/26.
 */
public class DataFile {
    private int id;
    private String title;//新闻标题
    private int columnID;//栏目id
    private String time;//新闻发布时间
    private String main;//新闻内容
    private String img;//图片
    private String conlumnName;//栏目名
    public DataFile() {
    }

    public DataFile(int id, String title, int columnID, String time, String main, String img, String conlumnName) {
        this.id = id;
        this.title = title;
        this.columnID = columnID;
        this.time = time;
        this.main = main;
        this.img = img;
        this.conlumnName = conlumnName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getConlumnName() {
        return conlumnName;
    }

    public void setConlumnName(String conlumnName) {
        this.conlumnName = conlumnName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMain() {
        return main;
    }

    public void setMain(String main) {
        this.main = main;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getColumnID() {
        return columnID;
    }

    public void setColumnID(int columnID) {
        this.columnID = columnID;
    }
}
