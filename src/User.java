public class User {
    private int userID;
    private String firstName;
    private String lastName;
    private String email;
    private String password;

    public int getUserID() {
        return userID;
    } //getUserID

    public void setUserID(int newUserID) {
        this.userID = newUserID;
    } //setUserID

    public String getFirstName() {
        return firstName;
    } //getFirstName

    public void setFirstName(String newFirstName) {
        this.firstName = newFirstName;
    } //setFirstName

    public String getLastName() {
        return lastName;
    } //getLastName

    public void setLastName(String newLastName) {
        this.lastName = newLastName;
    } //setLastName

    public String getEmail() {
        return email;
    } //getEmail

    public void setEmail(String newEmail) {
        this.email = newEmail;
    } //setLastName

    public String getPassword() {
        return password;
    } //getLastName

    public void setPassword(String newPassword) {
        this.password = newPassword;
    } //setLastName
} //User