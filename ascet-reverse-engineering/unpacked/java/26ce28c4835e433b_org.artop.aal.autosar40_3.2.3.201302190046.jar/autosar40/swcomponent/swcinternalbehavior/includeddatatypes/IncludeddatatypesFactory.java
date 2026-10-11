/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.includeddatatypes;

import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludedDataTypeSet;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl.IncludeddatatypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface IncludeddatatypesFactory
extends EFactory {
    public static final IncludeddatatypesFactory eINSTANCE = IncludeddatatypesFactoryImpl.init();

    public IncludedDataTypeSet createIncludedDataTypeSet();

    public IncludeddatatypesPackage getIncludeddatatypesPackage();
}

