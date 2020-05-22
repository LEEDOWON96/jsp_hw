package jsp_hw;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class ProfessorDAO {

    private static Professor getProfessorFrom(ResultSet resultSet) throws SQLException {
    	Professor professor = new Professor();
    	professor.setDepartmentName(resultSet.getString("departmentName"));
    	professor.setDepartmentId(resultSet.getInt("departmentId"));
    	professor.setId(resultSet.getInt("id"));
    	professor.setProfessorName(resultSet.getString("professorName"));
        return professor;
    }

    public static List<Professor> findAll() throws Exception {
        String sql = "SELECT p.*,departmentName " +
                     "FROM professor p left join department d on p.departmentId=d.id";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<Professor> list = new ArrayList<Professor>();
            while (resultSet.next())
                list.add(getProfessorFrom(resultSet));
            return list;
        }
    }

    public static Professor findByProfesserName(String professerName) throws Exception {
        String sql = "SELECT p.*, d.departmentName" +
                     " FROM professor p left join department d on p.departmentId=d.id" +
                     " WHERE professerName like ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, professerName + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next())
                    return getProfessorFrom(resultSet);
                else
                    return null;
            }
        }
    }

    public static Professor findById(int id) throws Exception {
        String sql = "SELECT p.*, d.departmentName" +
                     " FROM professor p left join department d on p.departmentId=d.id" +
                     " WHERE p.id = ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next())
                    return getProfessorFrom(resultSet);
                else
                    return null;
            }
        }
    }

    public static void insert(Professor professor) throws Exception {
        String sql = "INSERT professor (id, professorName, departmentId)" +
                     " VALUES (?, ?, ?)";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, professor.getId());
            statement.setString(2, professor.getProfessorName());
            statement.setInt(3, professor.getDepartmentId());

            statement.executeUpdate();
        }
    }


    public static void update(Professor professor) throws Exception {
        String sql = "UPDATE professor SET id=?, professorName=?, departmentId=? " +
                     " WHERE id = ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
        	statement.setInt(1, professor.getId());
            statement.setString(2, professor.getProfessorName());
            statement.setInt(3, professor.getDepartmentId());

            statement.executeUpdate();
        }
    }
}
