package com.tosit.yls.entiy;

/**
 * Created by DELL on 2016/9/28.
 */
public class OrdersEntiy {
    private int ticketId;
    private String ticketName;
    private double ticketPrice;
    private int ticketNum;
    private double ticketTotal;

    public OrdersEntiy() {
    }

    public OrdersEntiy(int ticketId, String ticketName, double ticketPrice, int ticketNum, double ticketTotal) {
        this.ticketId = ticketId;
        this.ticketName = ticketName;
        this.ticketPrice = ticketPrice;
        this.ticketNum = ticketNum;
        this.ticketTotal = ticketTotal;
    }

    public int getTicketId() {
        return ticketId;
    }

    public void setTicketId(int ticketId) {
        this.ticketId = ticketId;
    }

    public String getTicketName() {
        return ticketName;
    }

    public void setTicketName(String ticketName) {
        this.ticketName = ticketName;
    }

    public double getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(double ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public int getTicketNum() {
        return ticketNum;
    }

    public void setTicketNum(int ticketNum) {
        this.ticketNum = ticketNum;
    }

    public double getTicketTotal() {
        return ticketTotal;
    }

    public void setTicketTotal(double ticketTotal) {
        this.ticketTotal = ticketTotal;
    }
}
