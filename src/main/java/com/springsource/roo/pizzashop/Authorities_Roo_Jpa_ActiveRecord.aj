// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.pizzashop;

import com.springsource.roo.pizzashop.Authorities;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Authorities_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Authorities.entityManager;
    
    public static final EntityManager Authorities.entityManager() {
        EntityManager em = new Authorities().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Authorities.countAuthoritieses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Authorities o", Long.class).getSingleResult();
    }
    
    public static List<Authorities> Authorities.findAllAuthoritieses() {
        return entityManager().createQuery("SELECT o FROM Authorities o", Authorities.class).getResultList();
    }
    
    public static Authorities Authorities.findAuthorities(Long id) {
        if (id == null) return null;
        return entityManager().find(Authorities.class, id);
    }
    
    public static List<Authorities> Authorities.findAuthoritiesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Authorities o", Authorities.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Authorities.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Authorities.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Authorities attached = Authorities.findAuthorities(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Authorities.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Authorities.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Authorities Authorities.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Authorities merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
