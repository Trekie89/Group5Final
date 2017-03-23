package com.company.models;

public class PlacesCount {
    private int StationID;
    private String StattionName;
    private int Quantity;
    private String Discount;

    public PlacesCount(int stationID, String stattionName, int quantity, String discount) {
        StationID = stationID;
        StattionName = stattionName;
        Quantity = quantity;
        Discount = discount;
    }

    public PlacesCount() {
        this(0,"",0, "");
    }

    public int getStationID() {
        return StationID;
    }

    public void setStationID(int stationID) {
        StationID = stationID;
    }

    public String getStattionName() {
        return StattionName;
    }

    public void setStattionName(String stattionName) {
        StattionName = stattionName;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public String getDiscount() {
        return Discount;
    }

    public void setDiscount(String discount) {
        Discount = discount;
    }
}