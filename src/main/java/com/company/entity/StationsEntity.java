package com.company.entity;


import javax.persistence.*;
import java.util.Set;

/**
 * Created by Samantha on 3/13/2017.
 */
@Entity
@Table(name = "stations", schema = "qline", catalog = "")
public class StationsEntity {
    private int stationId;
    private String stattionName;
    private double latitude;
    private double longitude;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="stationID")
    private Set<FoodEntity> foodEntity;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="stationID")
    private Set<EntertainmentEntity> entertainmentEntity;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="stationID")
    private Set<RetailEntity> retailEntity;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="stationID")
    private Set<LodgingEntity> lodgingEntity;

    public StationsEntity(Set<FoodEntity> foodEntity, Set<EntertainmentEntity> entertainmentEntity, Set<RetailEntity> retailEntity, Set<LodgingEntity> lodgingEntity) {
        this.foodEntity = foodEntity;
        this.entertainmentEntity = entertainmentEntity;
        this.retailEntity = retailEntity;
        this.lodgingEntity = lodgingEntity;
    }

    public StationsEntity() {
    }

    @Id
    @Column(name = "stationID", nullable = false)
    public int getStationId() {
        return stationId;
    }

    public void setStationId(int stationId) {
        this.stationId = stationId;
    }

    @Basic
    @Column(name = "stattionName", nullable = false, length = 50)
    public String getStattionName() {
        return stattionName;
    }

    public void setStattionName(String stattionName) {
        this.stattionName = stattionName;
    }

    @Basic
    @Column(name = "latitude", nullable = false, precision = 0)
    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    @Basic
    @Column(name = "longitude", nullable = false, precision = 0)
    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StationsEntity that = (StationsEntity) o;

        if (stationId != that.stationId) return false;
        if (Double.compare(that.latitude, latitude) != 0) return false;
        if (Double.compare(that.longitude, longitude) != 0) return false;
        if (stattionName != null ? !stattionName.equals(that.stattionName) : that.stattionName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = stationId;
        result = 31 * result + (stattionName != null ? stattionName.hashCode() : 0);
        temp = Double.doubleToLongBits(latitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(longitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
