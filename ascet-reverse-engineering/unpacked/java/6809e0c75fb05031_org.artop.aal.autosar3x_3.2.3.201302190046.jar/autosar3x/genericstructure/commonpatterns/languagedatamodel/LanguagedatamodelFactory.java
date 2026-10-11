/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.languagedatamodel;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlGraphic;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelFactoryImpl;
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

    public MlGraphic createMlGraphic();

    public LanguagedatamodelPackage getLanguagedatamodelPackage();
}

