package model;

public class postasdriver {

	private String postID;
	private String email;
	private String departure;
	private String destination;
	private String departuredate;
	private String estimatedleavingtime;
	private String availableseats;
	private String cartype;
	private String estimatedtotalcost;
	private String estimatedcostperpassenger;
	private String phone;
	private String memo;
	private String numberofappliedpassengers;
	
	public String getPostID() {
		return postID;
	}
	public void setPostID(String postID) {
		this.postID = postID;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDeparturedate() {
		return departuredate;
	}
	public void setDeparturedate(String departuredate) {
		this.departuredate = departuredate;
	}
	public String getEstimatedleavingtime() {
		return estimatedleavingtime;
	}
	public void setEstimatedleavingtime(String estimatedleavingtime) {
		this.estimatedleavingtime = estimatedleavingtime;
	}
	public String getAvailableseats() {
		return availableseats;
	}
	public void setAvailableseats(String availableseats) {
		this.availableseats = availableseats;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
	public String getEstimatedtotalcost() {
		return estimatedtotalcost;
	}
	public void setEstimatedtotalcost(String estimatedtotalcost) {
		this.estimatedtotalcost = estimatedtotalcost;
	}
	public String getEstimatedcostperpassenger() {
		return estimatedcostperpassenger;
	}
	public void setEstimatedcostperpassenger(String estimatedcostperpassenger) {
		this.estimatedcostperpassenger = estimatedcostperpassenger;
	}

	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getNumberofappliedpassengers() {
		return numberofappliedpassengers;
	}
	public void setNumberofappliedpassengers(String numberofappliedpassengers) {
		this.numberofappliedpassengers = numberofappliedpassengers;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
