package cn.liuwen.dn.entity;

import java.io.Serializable;

public class customUi implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 5560834809804693288L;

	private Integer id;

    private String customK;

    private String customName;

    private String customAuth;
    
    private String customIndex;

    private String customTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomK() {
        return customK;
    }

    public void setCustomK(String customK) {
        this.customK = customK == null ? null : customK.trim();
    }

   

	public String getCustomIndex() {
		return customIndex;
	}

	public void setCustomIndex(String customIndex) {
		this.customIndex = customIndex;
	}

	public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName == null ? null : customName.trim();
    }

    public String getCustomAuth() {
        return customAuth;
    }

    public void setCustomAuth(String customAuth) {
        this.customAuth = customAuth == null ? null : customAuth.trim();
    }

    public String getCustomTime() {
        return customTime;
    }

    public void setCustomTime(String customTime) {
        this.customTime = customTime == null ? null : customTime.trim();
    }
}