package jsp_hw;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class bookDAO {

    private static book getBookFrom(ResultSet resultSet) throws SQLException {
        book book = new book();
        book.setId(resultSet.getInt("id"));
        book.settitle(resultSet.getString("title"));
        book.setauthor(resultSet.getString("author"));
        book.setcategoryId(resultSet.getInt("categoryId"));
        book.setprice(resultSet.getInt("price"));
        book.setpublisher(resultSet.getString("publisher"));
        book.setcategoryName(resultSet.getString("categoryName"));
        return book;
    }

    public static List<book> findAll() throws Exception {
        String sql = "SELECT b.*, categoryName " +
                     "FROM book b JOIN category c ON categoryId=c.id";
        try (Connection connection = DB.getConnection("book");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<book> list = new ArrayList<book>();
            while (resultSet.next())
                list.add(getBookFrom(resultSet));
            return list;
        }
    }

    public static List<book> findByAuthor(String author) throws Exception {
        String sql = "SELECT b.*, categoryName " +
                     "FROM book b JOIN category c ON categoryId=c.id " +
                     "WHERE author LIKE ?";
        try (Connection connection = DB.getConnection("book");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, author + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                ArrayList<book> list = new ArrayList<book>();
                while (resultSet.next())
                    list.add(getBookFrom(resultSet));
                return list;
            }
        }
    }

}
