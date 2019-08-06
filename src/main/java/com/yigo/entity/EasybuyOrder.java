package com.yigo.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author Ethan123
 * @since 2019-08-05
 */
public class EasybuyOrder implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 用户主键
     */
    @TableField("userId")
    private Integer userId;
    @TableField("loginName")
    private String loginName;
    /**
     * 用户地址
     */
    @TableField("userAddress")
    private String userAddress;
    /**
     * 创建时间
     */
    @TableField("createTime")
    private Date createTime;
    /**
     * 总消费
     */
    private Float cost;
    /**
     * 订单号
     */
    @TableField("serialNumber")
    private String serialNumber;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    @Override
    public String toString() {
        return "EasybuyOrder{" +
        ", id=" + id +
        ", userId=" + userId +
        ", loginName=" + loginName +
        ", userAddress=" + userAddress +
        ", createTime=" + createTime +
        ", cost=" + cost +
        ", serialNumber=" + serialNumber +
        "}";
    }
}
