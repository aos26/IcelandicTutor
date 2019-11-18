package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Users;
import project.service.UserService;

import javax.servlet.http.HttpSession;

public class GameController {
    private UserService userService;

    @Autowired
    public GameController(UserService userService) {
        this.userService = userService;
    }

    // Request mapping to "localhost:8080/game"
    // user must be logged in to access the page, otherwise they are
    // redirected to the login page
    @RequestMapping(value = "/game", method = RequestMethod.GET)
    public String user(HttpSession session, Model model) {
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());
            return "game";
        }

        session.setAttribute("error", "User must be logged in!");
        return "redirect:/login";
    }

    // Method that logs the user out and redirects to Index
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session, Model model){
        session.removeAttribute("login");
        session.setAttribute("error", "User logged out");

        return "redirect:/login";
    }








}
