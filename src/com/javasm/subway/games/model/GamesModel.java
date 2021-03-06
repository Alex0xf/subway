package com.javasm.subway.games.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * 
 * ClassName: GamesModel 
 * @Description: 游戏模型对应表pn_game
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesModel {
	
	private Integer gid;				// 游戏ID
	private String name;			// 游戏名称
	private String title;			// 游戏标题
	private Integer downloadCount; 		// 游戏下载量
	private Double size;				// 游戏大小(单位: M)
	private String des;				// 游戏描述
	private String gameIcon;		// 游戏图标
	private String iosUrl;			// ios下载地址
	private String androidUrl;		// android下载地址
	private String pictures;		// 游戏详情图片url,以逗号分隔
	private Integer status;				// 状态(1启用, 0下线)
	private Integer tid;				// 游戏分类
	private Integer recType;			// 推荐类型: 1普通, 2最新, 3精选, 4首页推荐
	private Date ctime;				// 创建时间
	private Date utime;				// 更新时间
	private Integer platform;			// 平台类型 1all, 2android, 3ios
	private Integer sortnum;			// 排序数字: 数字越大排名越靠前
		
	public GamesModel() {
		super();
	}
	
	public GamesModel(ResultSet rs) {		
		super();
		try {
			this.gid = rs.getInt("gid");
			this.name = rs.getString("name");
			this.title = rs.getString("title");
			this.downloadCount = rs.getInt("downloadCount");
			this.size = rs.getDouble("size");
			this.des = rs.getString("des");
			this.gameIcon = rs.getString("gameIcon");
			this.iosUrl = rs.getString("iosUrl");
			this.androidUrl = rs.getString("androidUrl");
			this.pictures = rs.getString("pictures");
			this.status = rs.getInt("status");
			this.tid = rs.getInt("tid");
			this.recType = rs.getInt("recType");
			this.ctime = (Date)rs.getTimestamp("ctime");
			this.utime = (Date)rs.getTimestamp("utime");
			this.platform = rs.getInt("platform");
			this.sortnum = rs.getInt("sortnum");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public GamesModel(int gid, String name, String title, int downloadCount, Double size, String des, String gameIcon,
			String iosUrl, String androidUrl, String pictures, int status, int tid, int recType, Date ctime, Date utime,
			int platform, int sortnum) {
		super();
		this.gid = gid;
		this.name = name;
		this.title = title;
		this.downloadCount = downloadCount;
		this.size = size;
		this.des = des;
		this.gameIcon = gameIcon;
		this.iosUrl = iosUrl;
		this.androidUrl = androidUrl;
		this.pictures = pictures;
		this.status = status;
		this.tid = tid;
		this.recType = recType;
		this.ctime = ctime;
		this.utime = utime;
		this.platform = platform;
		this.sortnum = sortnum;
	}
	
	@Override
	public String toString() {
		return "GameModel [gid=" + gid + ", name=" + name + ", title=" + title + ", downloadCount=" + downloadCount
				+ ", size=" + size + ", des=" + des + ", gameIcon=" + gameIcon + ", iosUrl=" + iosUrl + ", androidUrl="
				+ androidUrl + ", pictures=" + pictures + ", status=" + status + ", tid=" + tid + ", recType=" + recType
				+ ", ctime=" + ctime + ", utime=" + utime + ", platform=" + platform + ", sortnum=" + sortnum + "]";
	}

	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getDownloadCount() {
		return downloadCount;
	}
	public void setDownloadCount(Integer downloadCount) {
		this.downloadCount = downloadCount;
	}
	public Double getSize() {
		return size;
	}
	public void setSize(Double size) {
		this.size = size;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getGameIcon() {
		return gameIcon;
	}
	public void setGameIcon(String gameIcon) {
		this.gameIcon = gameIcon;
	}
	public String getIosUrl() {
		return iosUrl;
	}
	public void setIosUrl(String iosUrl) {
		this.iosUrl = iosUrl;
	}
	public String getAndroidUrl() {
		return androidUrl;
	}
	public void setAndroidUrl(String androidUrl) {
		this.androidUrl = androidUrl;
	}
	public String getPictures() {
		return pictures;
	}
	public void setPictures(String pictures) {
		this.pictures = pictures;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getRecType() {
		return recType;
	}
	public void setRecType(Integer recType) {
		this.recType = recType;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public Date getUtime() {
		return utime;
	}
	public void setUtime(Date utime) {
		this.utime = utime;
	}
	public Integer getPlatform() {
		return platform;
	}
	public void setPlatform(Integer platform) {
		this.platform = platform;
	}
	public Integer getSortnum() {
		return sortnum;
	}
	public void setSortnum(Integer sortnum) {
		this.sortnum = sortnum;
	}
}
