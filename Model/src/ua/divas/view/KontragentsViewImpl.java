package ua.divas.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.ViewCriteria;
import oracle.jbo.ViewObject;
import oracle.jbo.server.Entity;
import oracle.jbo.server.ViewObjectImpl;

import oracle.jbo.server.ViewRowSetImpl;

import ua.divas.classes.DivasView;
import ua.divas.classes.IndexCharacterObject;
import ua.divas.view.common.KontragentsView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Aug 24 20:28:58 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class KontragentsViewImpl extends DivasView implements KontragentsView {
    /**
     * This is the default constructor (do not remove).
     */
    public KontragentsViewImpl() {
    }

    public String retrieveCustomersFirstParentId() {
        String rv = getCustomerParentId();
        if (rv != null) {
            return rv;
        }
        /* ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("KontragentsView1");
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteria(this.getViewCriteria("KontragentsCustomerParentGroup"), -1,
                                                   this.QUERY_MODE_SCAN_DATABASE_TABLES);
        Row row = rs.first();
        if (row != null) {
            rv = (String) row.getAttribute("Id");
            return rv;
        }*/
        return null; 
    }
    
    public String retrieveZamerFirstParentId() {
        String rv = getZamerParentId();
        if (rv != null) {
            return rv;
        };
        return null; 
    }
    
    public String retrieveSupplierFirstParentId() {
        String rv = getSupplierParentId();
        if (rv != null) {
            return rv;
        };
        return null; 
    }
    
    public String retrieveCustomersFirstParentName() {
        String rv = getCustomerParentName();
        if (rv != null) {
            return rv;
        }
        /* ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("KontragentsView1");
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteria(this.getViewCriteria("KontragentsCustomerParentGroup"), -1,
                                                   this.QUERY_MODE_SCAN_DATABASE_TABLES);
        Row row = rs.first();
        if (row != null) {
            rv = (String) row.getAttribute("Id");
            return rv;
        }*/
        return null; 
    }

    public String getRowStatus(Row row) {
        KontragentsViewRowImpl rwImpl = (KontragentsViewRowImpl) row;
        String rwStatus = translateStatusToString(rwImpl.getEntity(0).getEntityState());
        return rwStatus;
    }

    private String translateStatusToString(byte b) {
        String ret = null;
        switch (b) {
        case Entity.STATUS_INITIALIZED:
            {
                ret = "Initialized";
                break;
            }
        case Entity.STATUS_MODIFIED:
            {
                ret = "Modified";
                break;
            }
        case Entity.STATUS_UNMODIFIED:
            {
                ret = "Unmodified";
                break;
            }
        case Entity.STATUS_NEW:
            {
                ret = "New";
                break;
            }
        }
        return ret;
    }

    public List<IndexCharacterObject> getCharacterIndexList() {
        String[] alphabet = {
            "А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У",
            "Ф", "Х", "Ч", "Ш", "Щ", "Э", "Ю", "Я"
        };
        //list that contains 26 entries
        List<IndexCharacterObject> list = new ArrayList<IndexCharacterObject>();
        //a list of all in  itial characters that are found in the row set
        //last_name attribute
        HashMap map = new HashMap();
        RowSet rs = this.getRowSet();
        this.executeQuery();
        Row row = rs.first();

        //query all rows and memorize the initial characters of
        //all employees last name entries
        if (row != null) {
            //Optionally, change "LastName" to another column attribute name
            //to change the search attribute
            String lastname = (String) row.getAttribute("Fullname");
            String character = lastname.toUpperCase().substring(0, 1);
            updateMap(map, row, character);
            while (rs.hasNext()) {
                row = rs.next();
                character = ((String) row.getAttribute("Fullname")).toUpperCase().substring(0, 1);
                updateMap(map, row, character);
            }
        }

        for (int i = 0; i < alphabet.length; ++i) {
            if (map.containsKey(alphabet[i].toUpperCase())) {
                IndexCharacterObject ico = new IndexCharacterObject();
                ico.setCharacter(alphabet[i].toUpperCase());
                ico.setFound(true);
                //  get rowIndex from map
                ico.setRowIndex(((Key) map.get((alphabet[i].toUpperCase()))));
                list.add(i, ico);
            } else {
                IndexCharacterObject ico = new IndexCharacterObject();
                ico.setCharacter(alphabet[i].toUpperCase());
                ico.setFound(false);
                //get rowIndex from map
                ico.setRowIndex(null);
                list.add(i, ico);
            }
            rs.first();
        }
        return list;
    }

    private void updateMap(HashMap map, Row row, String character) {
        if (!map.containsKey(character)) {
            //remember character and first occurrence in rowSet
            map.put(character, row.getKey());
        }
    }

    /**
     * Returns the variable value for KonId.
     * @return variable value for KonId
     */
    public String getKonId() {
        return (String) ensureVariableManager().getVariableValue("KonId");
    }

    /**
     * Sets <code>value</code> for variable KonId.
     * @param value value to bind as KonId
     */
    public void setKonId(String value) {
        ensureVariableManager().setVariableValue("KonId", value);
    }
    
    public void findKontragentById (String Id) {
        String [] applyViewCriteriaNames = this.getApplyViewCriteriaNames();
        if (applyViewCriteriaNames != null) {
            for (String cname : applyViewCriteriaNames) {
                this.removeApplyViewCriteriaName(cname);
            }
        }
        
        ViewCriteria vc = this.getViewCriteria("KontragentByIdFilter");
        this.setKonId(Id);
        this.applyViewCriteria(vc);
        this.executeQuery();
    }
    
    public void removeAllViewCriteria () {
        String [] applyViewCriteriaNames = this.getApplyViewCriteriaNames();
        if (applyViewCriteriaNames != null) {
            for (String cname : applyViewCriteriaNames) {
                this.removeApplyViewCriteriaName(cname);
            }
        }
        ViewCriteria vc = this.getViewCriteria("KontragentsItems");
        this.applyViewCriteria(vc);
        this.executeQuery();
    }

    /**
     * Returns the variable value for KonName.
     * @return variable value for KonName
     */
    public String getKonName() {
        return (String) ensureVariableManager().getVariableValue("KonName");
    }

    /**
     * Sets <code>value</code> for variable KonName.
     * @param value value to bind as KonName
     */
    public void setKonName(String value) {
        ensureVariableManager().setVariableValue("KonName", value);
    }

    /**
     * Returns the variable value for ZamerName.
     * @return variable value for ZamerName
     */
    public String getZamerName() {
        return (String) ensureVariableManager().getVariableValue("ZamerName");
    }

    /**
     * Sets <code>value</code> for variable ZamerName.
     * @param value value to bind as ZamerName
     */
    public void setZamerName(String value) {
        ensureVariableManager().setVariableValue("ZamerName", value);
    }


    /**
     * Returns the variable value for SuppId.
     * @return variable value for SuppId
     */
    public String getSuppId() {
        return (String) ensureVariableManager().getVariableValue("SuppId");
    }

    /**
     * Sets <code>value</code> for variable SuppId.
     * @param value value to bind as SuppId
     */
    public void setSuppId(String value) {
        ensureVariableManager().setVariableValue("SuppId", value);
    }
}

