package com.tosit.yls.entiy;

/**
 * Created by Administrator on 2016/9/28 0028.
 */
public class InformationEntity {
    private int goodsID;//商品编号
    private String goodsName;//商品名
    private String goodsMain;//商品介绍
    private String goodsSrc;//商品图片路径
    private double goodsPrice;//商品单价

    public InformationEntity() {
    }

    public InformationEntity(int goodsID, String goodsName, String goodsMain, String goodsSrc, double goodsPrice) {
        this.goodsID = goodsID;
        this.goodsName = goodsName;
        this.goodsMain = goodsMain;
        this.goodsSrc = goodsSrc;
        this.goodsPrice = goodsPrice;
    }

    public int getGoodsID() {
        return goodsID;
    }

    public void setGoodsID(int goodsID) {
        this.goodsID = goodsID;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsMain() {
        return goodsMain;
    }

    public void setGoodsMain(String goodsMain) {
        this.goodsMain = goodsMain;
    }

    public String getGoodsSrc() {
        return goodsSrc;
    }

    public void setGoodsSrc(String goodsSrc) {
        this.goodsSrc = goodsSrc;
    }

    public double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }
}
