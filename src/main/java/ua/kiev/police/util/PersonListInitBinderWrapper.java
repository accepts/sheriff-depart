package ua.kiev.police.util;

import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import ua.kiev.police.model.Person;
import ua.kiev.police.service.PersonService;

import java.util.Collection;

public class PersonListInitBinderWrapper extends CustomCollectionEditor {

    private PersonService personService;

    public PersonListInitBinderWrapper(Class<? extends Collection> collectionType, PersonService personService) {
        super(collectionType);
        this.personService = personService;
    }

    protected Object convertElement(Object element) {
        if (element != null) {
            Integer personId = Integer.parseInt(element.toString());
            Person person = personService.getPersonById(personId);
            return person;
        }
        return null;
    }
}
