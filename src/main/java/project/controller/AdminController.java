package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Users;
import project.service.UserService;

import javax.servlet.http.HttpSession;

public class AdminController {
    private UserService userService;

    @Autowired
    public AdminController(UserService userService) {
        this.userService = userService;
    }

    // Request mapping to "localhost:8080/homepage"
    // user must be logged in to access the page, otherwise they are
    // redirected to the login page
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String user(HttpSession session, Model model) {
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());
            return "admin";
        }

        session.setAttribute("error", "User must be logged in!");
        return "redirect:/login";
    }
}

