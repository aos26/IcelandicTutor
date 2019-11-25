package project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Users;
import project.service.UserService;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class DictionaryController {
    private UserService userService;

    // Dependency Injection
    @Autowired
    public DictionaryController(UserService userService) {

        this.userService = userService;
    }


    // Request mapping to "localhost:8080/dictionary"
    // user must be logged in to access the page, otherwise they are
    // redirected to the login page
    @RequestMapping(value = "/dictionary", method = RequestMethod.GET)
    public String dictionary(HttpSession session, Model model) {
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());
            return "dictionary";
        }

        session.setAttribute("error", "User must be logged in!");
        return "redirect:/login";
    }
}

