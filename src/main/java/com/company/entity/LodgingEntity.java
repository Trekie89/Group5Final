package com.company.entity;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name = "lodging", schema = "qline", catalog = "")
public class LodgingEntity {
    private int lodgingId;
    private String name;
    private String address;
    private String website;

    @ManyToOne
    @ForeignKey(name="FK_Station")
    private StationsEntity stationL;
    private int stationId;

    public int getStationId() {
        return stationId;
    }

    public void setStationId(int stationId) {
        this.stationId = stationId;
    }


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lodgingID", nullable = false)
    public int getLodgingId() {
        return lodgingId;
    }

    public void setLodgingId(int lodgingId) {
        this.lodgingId = lodgingId;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 75)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 75)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "website", nullable = true, length = 75)
    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LodgingEntity that = (LodgingEntity) o;

        if (lodgingId != that.lodgingId) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (website != null ? !website.equals(that.website) : that.website != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = lodgingId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (website != null ? website.hashCode() : 0);
        return result;
    }
}
