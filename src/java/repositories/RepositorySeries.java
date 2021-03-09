/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*  Proc. PLSQL -
    create or replace procedure Pr_insertarPersonaje(p_nombre personajes.personaje%type,
                                                     p_imagen personajes.imagen%type,
                                                     p_idserie personajes.idserie%type)
    as
        v_idpersonaje int;
    begin
        select max(idpersonaje)+1 into v_idpersonaje from personajes;
        insert into personajes values(v_idpersonaje, p_nombre, p_imagen, p_idserie);
    end;
*/

package repositories;

import java.math.BigDecimal;
import java.util.List;
import models.HibernateUtil;
import models.Personajes;
import models.Series;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author lscar
 */
public class RepositorySeries {
 
    Session session;
    Transaction transaction;
    
    public RepositorySeries() {
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    private void initTransaccion() {
        if(this.session.isOpen() == false){
            this.session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        this.transaction = this.session.beginTransaction();
    }
    
    public List<Series> getSeries() {
        this.initTransaccion();
        String z_hql = "from Series as series";
        Query query = this.session.createQuery(z_hql);
        List<Series> series = query.list();
        this.session.close();
        return series;
    }
    
    public List<Personajes> getPersonajes() {
        this.initTransaccion();
        String z_hql = "from Personajes as personajes";
        Query query = this.session.createQuery(z_hql);
        List<Personajes> personajes = query.list();
        this.session.close();
        return personajes;
    }
    
//    public Series getSerie(BigDecimal idserie) {
//        this.initTransaccion();
//        String z_hql = "from Series as series where series.serie='" + idserie + "'";
//        Query query = this.session.createQuery(z_hql);
//        Series serie = (Series) query.list(). get(0);
//        this.session.close();
//        if(serie == null) {
//            return null;
//        } else {
//            return serie;
//        }
//    }
    
    public void insertarPersonaje(String nom, String img, int idserie) {
        this.initTransaccion();
        String z_sql = "CALL PR_INSERTARPERSONAJE(?, ?, ?)";
        Query query = this.session.createSQLQuery(z_sql);
        query.setParameter(0, nom);
        query.setParameter(1, img);
        query.setParameter(2, idserie);
        query.executeUpdate();
        this.transaction.commit();
    }
    
    public List<Personajes> idSeriePersonajes(int idseriepers) {
        this.initTransaccion();
        String z_hql = "from Personajes as pers where pers.idserie='" + idseriepers + "'";
        Query query = this.session.createQuery(z_hql);
        List<Personajes> personajes = query.list();
        this.session.close();
        return personajes;
    }
}
