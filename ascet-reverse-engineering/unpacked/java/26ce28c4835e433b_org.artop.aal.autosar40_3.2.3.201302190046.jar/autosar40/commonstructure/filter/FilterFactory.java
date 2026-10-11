/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.filter;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.filter.impl.FilterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FilterFactory
extends EFactory {
    public static final FilterFactory eINSTANCE = FilterFactoryImpl.init();

    public DataFilter createDataFilter();

    public FilterPackage getFilterPackage();
}

