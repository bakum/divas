package ua.divas.view.common;

import java.math.BigDecimal;

import oracle.jbo.Row;
import oracle.jbo.ViewObject;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed May 13 16:48:48 EEST 2015
// ---------------------------------------------------------------------
public interface VwKontragZamer extends ViewObject {
    void paySelectedRows(String kassaId, BigDecimal Summ);

    void paySelRow(Row rw, String kassaId, BigDecimal Summ);
}

