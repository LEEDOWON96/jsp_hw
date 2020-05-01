package jsp_hw;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class UserDAO2 {

    public static List<User> findAll() throws Exception {
    	 String sql = "SELECT userid, name, email, departmentName, userType " +
         		      "FROM user u JOIN department d ON u.departmentId=d.id";
         try (Connection connection = DB.getConnection("student1");
              PreparedStatement statement = connection.prepareStatement(sql);
              ResultSet resultSet = statement.executeQuery()) {
             ArrayList<User> list = new ArrayList<User>();
             while (resultSet.next()) {
                 User user = new User();
                 user.setuserid(resultSet.getString("userid"));
                 user.setname(resultSet.getString("name"));
                 user.setemail(resultSet.getString("email"));
                 user.setdepartmentName(resultSet.getString("departmentName"));
                 user.setuserType(resultSet.getString("userType"));
                 list.add(user);
             }
             return list;
        }
    }

    public static List<User> findByName(String name) throws Exception {
        String sql = "SELECT userid, name, email, departmentName, userType " +
         		     "FROM user u JOIN department d ON u.departmentId=d.id " +
                      "WHERE name LIKE ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, name + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                ArrayList<User> list = new ArrayList<User>();
                while (resultSet.next()) {
                	 User user = new User();
                     user.setuserid(resultSet.getString("userid"));
                     user.setname(resultSet.getString("name"));
                     user.setemail(resultSet.getString("email"));
                     user.setdepartmentName(resultSet.getString("departmentName"));
                     user.setuserType(resultSet.getString("userType"));
                     list.add(user);
                }
                return list;
            }
        }
    }
}
