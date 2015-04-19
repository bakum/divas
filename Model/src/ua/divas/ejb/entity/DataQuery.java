package ua.divas.ejb.entity;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class DataQuery {

    
    private static EntityManager getEm() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Model");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        return em;
    }

    public static WlsSettings getCurrentWlsSettings() {
        try {
            WlsSettings u = getEm().createNamedQuery("WlsSettings.findAll", WlsSettings.class).getSingleResult();
            if (u != null) {
                return u;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
    
    public static QuartzProperty getCurrentQuartzSettings() {
        try {
            QuartzProperty u = getEm().createNamedQuery("QuartzProperty.findAll", QuartzProperty.class).getSingleResult();
            if (u != null) {
                return u;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
    
    public static Users getZamerUser(String Id) {
        try {
            Users u = getEm().createNamedQuery("Users.findById", Users.class)
                .setParameter("id", Id)
                .getSingleResult();
            if (u != null) {
                return u;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
    
    public static List<QuartzProperty> getAllQuartzSettings() {
        try {
            List<QuartzProperty> u = getEm().createNamedQuery("QuartzProperty.findAll", QuartzProperty.class).getResultList();
            if (u != null) {
                return u;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
