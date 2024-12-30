package org.projets3s5.atelier.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
    private static final String URL = "jdbc:postgresql://localhost:5432/atelier";
    private static final String USER = "postgres";
    private static final String PASSWORD = "toky";

    public static Connection getConnectionPostgre() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}