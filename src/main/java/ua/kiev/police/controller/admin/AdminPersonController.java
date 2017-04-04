package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.kiev.police.model.Person;
import ua.kiev.police.model.enums.Rank;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class AdminPersonController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminPersonController.class);

    private Path path;

    @Autowired
    private PersonService personService;


    @RequestMapping("/admin/personInventory")
    public String personInventory(Model model) {
        List<Person> personList = personService.getAllPersons();
        model.addAttribute("personList", personList);
        return "personInventory";
    }


    @RequestMapping("/admin/personInventory/addPerson")
    public String addPerson(Model model) {
        Person person = new Person();
        person.setRank(Rank.OFFICER);
        model.addAttribute("person", person);
        return "personAdd";
    }


    @RequestMapping(value = "/admin/personInventory/addPerson", method = RequestMethod.POST)
    public String addPersonPost(@Valid @ModelAttribute("person") Person person,
                                BindingResult result, HttpServletRequest request) {
        if (result.hasErrors()) {
            return "personAdd";
        }

        personService.addPerson(person);

        MultipartFile personImage = person.getPersonImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + person.getPersonId() + ".png");
        if (personImage != null && !personImage.isEmpty()) {
            try {
                personImage.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                LOG.info("Error occur when try to save file to path {}" + path.toString());
                throw new RuntimeException("Person image saving failed!", e);
            }
        }
        return "redirect:/admin/personInventory/";
    }


    @RequestMapping("/admin/personInventory/deletePerson/{personId}")
    public String deletePerson(@PathVariable int personId, Model model, HttpServletRequest request) {
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + personId + ".png");
        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
                LOG.info("Error occur when try to delete file with path {}" + path.toString());
                e.printStackTrace();
            }
        }
        personService.deletePerson(personId);
        return "redirect:/admin/personInventory";
    }


    @RequestMapping("/admin/personInventory/editPerson/{personId}")
    public String editPerson(@PathVariable("personId") int personId, Model model) {
        Person person = personService.getPersonById(personId);
        model.addAttribute(person);
        return "personEdit";
    }


    @RequestMapping(value = "/admin/personInventory/editPerson/", method = RequestMethod.POST)
    public String editPerson(@Valid @ModelAttribute("person") Person person, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            return "personEdit";
        }
        MultipartFile personImage = person.getPersonImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\photo_person\\" + person.getPersonId() + ".png");
        if (personImage != null && !personImage.isEmpty()) {
            try {
                personImage.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                LOG.info("Error occur when edit person object");
                throw new RuntimeException("Product image saving failed!", e);
            }
        }
        personService.editPerson(person);
        return "redirect:/admin/personInventory/";
    }


    //    Exception handler methods

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
    public void handleClientErrors(Exception e) {
        LOG.error("Exception occur in {}: " + e);
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal server error!")
    public void handleServerErrors(Exception e) {
        LOG.error("Exception occur in {}: " + e);
    }


}
