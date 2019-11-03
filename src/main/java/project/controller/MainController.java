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
}