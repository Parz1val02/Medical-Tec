package com.example.medicaltec.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "deliverymedicamentos")
public class Deliverymedicamento {
    @Id
    @Column(name = "iddeliverymedicamentos", nullable = false)
    private Integer id;

    @Column(name = "latitudinicial", nullable = false)
    private Float latitudinicial;

    @Column(name = "longitudinicial", nullable = false)
    private Float longitudinicial;

    @Column(name = "latitudfinal", nullable = false)
    private Float latitudfinal;

    @Column(name = "longitudfinal", nullable = false)
    private Float longitudfinal;

    @Column(name = "estado", nullable = false, length = 45)
    private String estado;

    @ManyToOne( optional = false)
    @JoinColumn(name = "receta_idreceta", nullable = false)
    private Receta recetaIdreceta;

}