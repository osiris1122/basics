package com.basics.common.constant;

public enum CoinEnum {

	USE_MONEY(1, "NBSS可用"), USE_COIN(2, "可用UVS"), LOCK_COIN(3, "冻结UVS"), USE_ETH(4, "ETH"), USE_XRP(5, "XRP"), USE_USDT(6, "USDT");

	private Integer type;

	private String name;

	CoinEnum(Integer type, String name) {
		this.name = name;
		this.type = type;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
