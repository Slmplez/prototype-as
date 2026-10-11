/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.swclass;

import autosar40.commonstructure.swclass.SwVariableImpl;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.commonstructure.swclass.impl.SwclassFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SwclassFactory
extends EFactory {
    public static final SwclassFactory eINSTANCE = SwclassFactoryImpl.init();

    public SwVariableImpl createSwVariableImpl();

    public SwclassPackage getSwclassPackage();
}

