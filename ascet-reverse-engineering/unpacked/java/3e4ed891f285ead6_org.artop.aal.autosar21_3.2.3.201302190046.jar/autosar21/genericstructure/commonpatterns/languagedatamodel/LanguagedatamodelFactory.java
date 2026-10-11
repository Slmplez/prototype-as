/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel;

import autosar21.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LanguagedatamodelFactory
extends EFactory {
    public static final LanguagedatamodelFactory eINSTANCE = LanguagedatamodelFactoryImpl.init();

    public L1 createL1();

    public L10 createL10();

    public L2 createL2();

    public L3 createL3();

    public L4 createL4();

    public L5 createL5();

    public LanguagedatamodelPackage getLanguagedatamodelPackage();
}

