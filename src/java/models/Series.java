package models;
// Generated 05-mar-2021 17:56:37 by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Series generated by hbm2java
 */
public class Series  implements java.io.Serializable {


     private BigDecimal idserie;
     private String serie;
     private String imagen;
     private Double puntuacion;
     private BigDecimal anyo;

    public Series() {
    }

	
    public Series(BigDecimal idserie) {
        this.idserie = idserie;
    }
    public Series(BigDecimal idserie, String serie, String imagen, Double puntuacion, BigDecimal anyo) {
       this.idserie = idserie;
       this.serie = serie;
       this.imagen = imagen;
       this.puntuacion = puntuacion;
       this.anyo = anyo;
    }
   
    public BigDecimal getIdserie() {
        return this.idserie;
    }
    
    public void setIdserie(BigDecimal idserie) {
        this.idserie = idserie;
    }
    public String getSerie() {
        return this.serie;
    }
    
    public void setSerie(String serie) {
        this.serie = serie;
    }
    public String getImagen() {
        return this.imagen;
    }
    
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    public Double getPuntuacion() {
        return this.puntuacion;
    }
    
    public void setPuntuacion(Double puntuacion) {
        this.puntuacion = puntuacion;
    }
    public BigDecimal getAnyo() {
        return this.anyo;
    }
    
    public void setAnyo(BigDecimal anyo) {
        this.anyo = anyo;
    }




}


