package com.company.controller;

/**
 * Created by Mike on 3/16/2017.
 */
public class PlacesCount {
    private int StationID;
    private String StattionName;
    private int Quantity;

    public PlacesCount(int stationID, String stattionName, int quantity) {
        StationID = stationID;
        StattionName = stattionName;
        Quantity = quantity;
    }

    public PlacesCount() {
        this(0,"",0);
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
}