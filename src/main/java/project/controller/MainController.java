package project.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.persistence.entities.Users;
import project.service.UserService;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {
    private UserService userService;

    @Autowired
    public MainController(UserService userService) {
        this.userService = userService;
    }

    // Request mapping to "localhost:8080/homepage"
    // user must be logged in to access the page, otherwise they are
    // redirected to the login page
    @RequestMapping(value = "/homepage", method = RequestMethod.GET)
    public String user(HttpSession session, Model model) {
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());
            return "homepage";
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
