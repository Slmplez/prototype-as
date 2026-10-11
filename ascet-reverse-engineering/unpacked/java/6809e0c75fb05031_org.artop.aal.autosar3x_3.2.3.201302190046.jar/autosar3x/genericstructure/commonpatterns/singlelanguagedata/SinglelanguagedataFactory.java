/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.singlelanguagedata;

import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData1;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData10;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData2;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData3p;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SinglelanguagedataFactory
extends EFactory {
    public static final SinglelanguagedataFactory eINSTANCE = SinglelanguagedataFactoryImpl.init();

    public SlData1 createSlData1();

    public SlData10 createSlData10();

    public SlData2 createSlData2();

    public SlData3 createSlData3();

    public SlData3p createSlData3p();

    public SlData5 createSlData5();

    public SlData4 createSlData4();

    public SinglelanguagedataPackage getSinglelanguagedataPackage();
}

