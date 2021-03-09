/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.math.BigDecimal;
import java.util.List;
import models.Personajes;
import models.Series;
import repositories.RepositorySeries;

/**
 *
 * @author lscar
 */
public class ControllerSeries {
    
    RepositorySeries repo;
    
    public ControllerSeries() {
        this.repo = new RepositorySeries();
    }
    
    public String getSeries() {
        List<Series> series = this.repo.getSeries();
        String html = "";
        for(Series s: series) {
            html += "<tr>";
            html += "<td><img src='" + s.getImagen() + "' width='150' height='auto'/></td>";
            html += "<td>" + s.getSerie() + "</td>";
            html += "<td>" + s.getAnyo()+ "</td>";
            html += "<td>" + s.getPuntuacion()+ "</td>";
            html += "<td><button type='button' class='btn btn-warning'>";
            html += "<a href='webpersonajes.jsp?perserie=" + s.getIdserie()+ "'>Personajes</a>";
            html +="</button></td>";
            html += "</tr>";
        }
        return html;
    }
    
    public String getOptionsSeries() {
        List<Series> series = this.repo.getSeries();
        String html ="";
        for (Series s: series) {
            html += "<option value='" + s.getIdserie() + "'>" + s.getSerie() + "</option>";
        }
        return html; 
    }
    
    public String getOptionsPersonajes() {
        List<Personajes> personajes = this.repo.getPersonajes();
        String html ="";
        for (Personajes p: personajes) {
            html += "<option value='" + p.getIdpersonaje()+ "'>" + p.getPersonaje() + "</option>";
        }
        return html;         
    }
    
    public String getPersonajes(int idseriepers) {
        List<Personajes> listapersonajes = this.repo.idSeriePersonajes(idseriepers);
        String html = "";
        for(Personajes p: listapersonajes) {
            html += "<tr>";
            html += "<td>" + p.getPersonaje() + "</td>";
            html += "<td><img src='" + p.getImagen() + "' width='150' height='auto'/></td>";
            html += "</tr>";
        }
        return html;
    }
       
    public void insertarPersonaje(String nom, String img, int idserie) {
        this.repo.insertarPersonaje(nom, img, idserie);
    }
}
