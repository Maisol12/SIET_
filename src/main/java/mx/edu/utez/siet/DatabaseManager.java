package mx.edu.utez.siet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseManager {
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/SIET";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public static void guardarRespuesta(String idShop, String idSurvey, int idQuestion, int numberValue) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String query = "INSERT INTO answers (foreingIdShop, foreingIdSurvey, foreingIdQuestions, number_valor) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, idShop);
                statement.setString(2, idSurvey);
                statement.setInt(3, idQuestion);
                statement.setInt(4, numberValue);
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

