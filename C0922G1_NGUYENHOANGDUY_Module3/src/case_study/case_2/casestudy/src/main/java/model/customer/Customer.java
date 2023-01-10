package model.customer;

public class Customer {
    private int id;
    private String name;
    private String birthDay;
    private boolean gender;
    private String idCard;
    private int numberPhone;
    private String address;
    private String mail;
    private CustomerType customerType;

    public Customer(int id, int customerTypeId, String name, String dateOfBirth, boolean gender, String idCard, int phoneNumber, String address, String email) {
    }

    public Customer(int id, String name, String birthDay, boolean gender, String idCard, int numberPhone, String address, String mail, CustomerType customerType) {
        this.id = id;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.idCard = idCard;
        this.numberPhone = numberPhone;
        this.address = address;
        this.mail = mail;
        this.customerType = customerType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public int getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(int numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }
}
