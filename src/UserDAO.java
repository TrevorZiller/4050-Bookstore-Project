package bookstore;

import java.sql.*;

public class UserDAO {
    public User checkLogin(String email, String password) throws SQLException, ClassNotFoundException {
        String jdbcURL = "";
        String dbUser = "root";
        String dbPassword = "password";

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        User user = null;

        if (result.next()) {
            user = new User();
            user.setFirstName(result.getString("firstName"));
            user.setLastName(result.getString("lastName"));
            uset.setEmail(email);
        } //if

        connection.close();

        return user;
    }
}