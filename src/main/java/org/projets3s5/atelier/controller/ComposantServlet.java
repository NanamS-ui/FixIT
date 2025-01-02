package org.projets3s5.atelier.controller;

import org.projets3s5.atelier.model.Composant;
import org.projets3s5.atelier.utils.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/composants")
public class ComposantServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection connection = null;
        try {
            connection = DatabaseUtil.getConnectionPostgre();
            List<Composant> composants = Composant.getAll(connection);

            request.setAttribute("composants", composants);

            request.getRequestDispatcher("/temp/front_Office/pages/accueil.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Une erreur est survenue lors de la récupération des composants :" +e.getMessage());
            request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);
        }
        finally {
            try {
                if (connection != null){
                    connection.close();
                }
            }
            catch (Exception e){
                request.setAttribute("error", "Une erreur est survenue lors du la fermeture connection :" +e.getMessage());
                request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
