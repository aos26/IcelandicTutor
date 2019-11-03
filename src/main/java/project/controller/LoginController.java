package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Users;
import javax.servlet.http.HttpSession;
import project.service.UserService;

@Controller
public class LoginController {

    // Instance Variables
    private UserService userService;

    // Dependency Injection
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    // Request mapping is the path that you want to map this method to
    // In this case, the mapping is the root "/", so when the project
    // is running and you enter "localhost:8080" into a browser, this
    // method is called
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String init(Model model){
        model.addAttribute("msg","Please enter your login details");
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submit(@ModelAttribute("users") Users users, HttpSession session, Model model){
        model.addAttribute("users", new Users());
        model.addAttribute("error", session.getAttribute("error"));
        session.removeAttribute("error");
        String userName = users.getUserName();
        String password = users.getPassword();
        String name = users.getName(); // Afh er þetta null?
        System.out.println(name);
        Users exists = userService.getByUserName(userName);

        System.out.println(exists == null);

        if (exists != null && userName != null
                && password != null) {

            if (password.equals(exists.getPassword())) {
                session.setAttribute("login", exists);
                return "redirect:/homepage";
            }
        }

        model.addAttribute("error", "Invalid Details");
        return "login";
    }

}
