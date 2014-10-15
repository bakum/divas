package ua.divas.view;

import java.util.ArrayList;
import java.util.List;

import javax.faces.model.SelectItem;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;

import oracle.jbo.Row;
import oracle.jbo.RowIterator;

public class ShuttleDepartaments {
    List selectedValues = new ArrayList();
    List allValues = new ArrayList();

    public ShuttleDepartaments() {
    }

    public void setSelectedValues(List selectedValues) {
        this.selectedValues = selectedValues;
    }

    public List getSelectedValues() {
        DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("DivisionSotrView1Iterator");
        
        DCIteratorBinding divi = bindings.findIteratorBinding("DivisionsView1Iterator");

        // Get all the rows of a iterator
        Row[] rows = dcIteratorBindings.getAllRowsInRange();
        for (Row rw : rows) {
            String indx = (String) rw.getAttribute("DivId");
            RowIterator rIter= divi.findRowsByAttributeValue("Id", true, indx);
            String fn = rIter.first().getAttribute("Fullname").toString(); 
            selectedValues.add(fn);
        }
        return selectedValues;
    }

    public void setAllValues(List allValues) {
        this.allValues = allValues;
    }

    public List getAllValues() {
        DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("DivisionsView1Iterator");

        // Get all the rows of a iterator
        Row[] rows = dcIteratorBindings.getAllRowsInRange();
        for (Row rw : rows) {
            String indx = (String) rw.getAttribute("Fullname");
            Integer gr = (Integer) rw.getAttribute("IsGroup");
            if (gr.intValue() == 0) {
                allValues.add(new SelectItem(indx));
            }
        }
        return allValues;
    }
}
