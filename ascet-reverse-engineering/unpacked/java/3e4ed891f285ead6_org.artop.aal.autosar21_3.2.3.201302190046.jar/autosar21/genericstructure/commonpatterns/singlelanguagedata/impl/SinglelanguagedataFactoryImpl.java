/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata.impl;

import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataFactory;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData1;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData10;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData2;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3p;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData10Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData1Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData2Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData3Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData3pImpl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData4Impl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SlData5Impl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SinglelanguagedataFactoryImpl
extends EFactoryImpl
implements SinglelanguagedataFactory {
    public static SinglelanguagedataFactory init() {
        try {
            SinglelanguagedataFactory theSinglelanguagedataFactory = (SinglelanguagedataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/sld");
            if (theSinglelanguagedataFactory != null) {
                return theSinglelanguagedataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SinglelanguagedataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSlData1();
            }
            case 1: {
                return this.createSlData10();
            }
            case 2: {
                return this.createSlData2();
            }
            case 3: {
                return this.createSlData3();
            }
            case 4: {
                return this.createSlData3p();
            }
            case 5: {
                return this.createSlData4();
            }
            case 6: {
                return this.createSlData5();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SlData1 createSlData1() {
        SlData1Impl slData1 = new SlData1Impl();
        return slData1;
    }

    public SlData10 createSlData10() {
        SlData10Impl slData10 = new SlData10Impl();
        return slData10;
    }

    public SlData2 createSlData2() {
        SlData2Impl slData2 = new SlData2Impl();
        return slData2;
    }

    public SlData3 createSlData3() {
        SlData3Impl slData3 = new SlData3Impl();
        return slData3;
    }

    public SlData3p createSlData3p() {
        SlData3pImpl slData3p = new SlData3pImpl();
        return slData3p;
    }

    public SlData4 createSlData4() {
        SlData4Impl slData4 = new SlData4Impl();
        return slData4;
    }

    public SlData5 createSlData5() {
        SlData5Impl slData5 = new SlData5Impl();
        return slData5;
    }

    public SinglelanguagedataPackage getSinglelanguagedataPackage() {
        return (SinglelanguagedataPackage)this.getEPackage();
    }

    @Deprecated
    public static SinglelanguagedataPackage getPackage() {
        return SinglelanguagedataPackage.eINSTANCE;
    }
}

