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
public class EasybuyUserAddress implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 用户主键
     */
    @TableField("userId")
    private Integer userId;
    /**
     * 地址
     */
    private String address;
    /**
     * 创建时间
     */
    @TableField("createTime")
    private Date createTime;
    /**
     * 是否是默认地址（1:是 0否）
     */
    @TableField("isDefault")
    private Integer isDefault;
    /**
     * 备注
     */
    private String remark;


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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "EasybuyUserAddress{" +
        ", id=" + id +
        ", userId=" + userId +
        ", address=" + address +
        ", createTime=" + createTime +
        ", isDefault=" + isDefault +
        ", remark=" + remark +
        "}";
    }
}
