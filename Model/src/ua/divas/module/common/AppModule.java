package ua.divas.module.common;

import oracle.jbo.ApplicationModule;
import oracle.jbo.Key;
import oracle.jbo.RowIterator;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Sep 16 22:46:51 EEST 2014
// ---------------------------------------------------------------------
public interface AppModule extends ApplicationModule {
    void deleteChildren(RowIterator ri, Key selectedNodeKey);
}
