package MVC.controllers;
import MVC.models.TestFormModel;

import MVC.repositories.TestFormRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Carlos Zubiran on 6/8/2016.
 */
@Controller
public class TestFormModelController {

    @Autowired
    private TestFormRepository testFormRepository;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String testFormGet(Model model) {

        model.addAttribute("testForm", new TestFormModel());

        return "index";

    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String testFormPost(Model model, @ModelAttribute("testForm") TestFormModel testFormModel) {

        testFormRepository.save(testFormModel);

        return "redirect:/index";
    }

}
