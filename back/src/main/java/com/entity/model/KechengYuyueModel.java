package com.entity.model;

import com.entity.KechengYuyueEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 课程选课
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class KechengYuyueModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 课程
     */
    private Integer kechengId;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 选课状态
     */
    private Integer kechengYuyueYesnoTypes;


    /**
     * 审核结果
     */
    private String kechengYuyueYesnoText;


    /**
     * 打分
     */
    private Integer kechengYuyueNumber;


    /**
     * 评论
     */
    private String kechengYuyueText;


    /**
     * 审核时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date kechengYuyueShenheTime;


    /**
     * 创建时间 show3 listShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：课程
	 */
    public Integer getKechengId() {
        return kechengId;
    }


    /**
	 * 设置：课程
	 */
    public void setKechengId(Integer kechengId) {
        this.kechengId = kechengId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：选课状态
	 */
    public Integer getKechengYuyueYesnoTypes() {
        return kechengYuyueYesnoTypes;
    }


    /**
	 * 设置：选课状态
	 */
    public void setKechengYuyueYesnoTypes(Integer kechengYuyueYesnoTypes) {
        this.kechengYuyueYesnoTypes = kechengYuyueYesnoTypes;
    }
    /**
	 * 获取：审核结果
	 */
    public String getKechengYuyueYesnoText() {
        return kechengYuyueYesnoText;
    }


    /**
	 * 设置：审核结果
	 */
    public void setKechengYuyueYesnoText(String kechengYuyueYesnoText) {
        this.kechengYuyueYesnoText = kechengYuyueYesnoText;
    }
    /**
	 * 获取：打分
	 */
    public Integer getKechengYuyueNumber() {
        return kechengYuyueNumber;
    }


    /**
	 * 设置：打分
	 */
    public void setKechengYuyueNumber(Integer kechengYuyueNumber) {
        this.kechengYuyueNumber = kechengYuyueNumber;
    }
    /**
	 * 获取：评论
	 */
    public String getKechengYuyueText() {
        return kechengYuyueText;
    }


    /**
	 * 设置：评论
	 */
    public void setKechengYuyueText(String kechengYuyueText) {
        this.kechengYuyueText = kechengYuyueText;
    }
    /**
	 * 获取：审核时间
	 */
    public Date getKechengYuyueShenheTime() {
        return kechengYuyueShenheTime;
    }


    /**
	 * 设置：审核时间
	 */
    public void setKechengYuyueShenheTime(Date kechengYuyueShenheTime) {
        this.kechengYuyueShenheTime = kechengYuyueShenheTime;
    }
    /**
	 * 获取：创建时间 show3 listShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show3 listShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
