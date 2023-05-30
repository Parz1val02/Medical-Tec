package com.example.medicaltec.repository;

import com.example.medicaltec.Entity.Informe;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface InformeRepository extends JpaRepository<Informe,Integer> {

    @Query(value = "SELECT * FROM telesystem.informe WHERE cita_idcita=?1;",
            nativeQuery = true)
    Informe listarInformePorCita(int id_cita);
    @Transactional
    @Modifying
    @Query("update Informe c set c.activo = ?1 where c.id = ?2")
    int updateActivoByActivo(Boolean activoNuevo, int id);

    @Query(value = "SELECT * FROM telesystem_2.informe a Inner Join historialmedico b on a.historialmedico_idhistorialmedico=b.idhistorialmedico Inner Join usuario c on b.idhistorialmedico=c.historialmedico_idhistorialmedico where a.idinforme = ?1;",
            nativeQuery = true)
    Informe listarInforme(int id_cita);
}
