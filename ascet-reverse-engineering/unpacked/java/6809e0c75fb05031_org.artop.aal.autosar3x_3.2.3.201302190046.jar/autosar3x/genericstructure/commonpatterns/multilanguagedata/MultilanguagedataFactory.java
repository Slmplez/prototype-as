/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata;

import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3p;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.impl.MultilanguagedataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MultilanguagedataFactory
extends EFactory {
    public static final MultilanguagedataFactory eINSTANCE = MultilanguagedataFactoryImpl.init();

    public MlData1 createMlData1();

    public MlData10 createMlData10();

    public MlData3 createMlData3();

    public MlData3p createMlData3p();

    public MlData4 createMlData4();

    public MlData5 createMlData5();

    public MlData2 createMlData2();

    public MultilanguagedataPackage getMultilanguagedataPackage();
}

