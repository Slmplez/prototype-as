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
package autosar21.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData3;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData3p;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataFactory;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData10Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData1Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData2Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData3Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData3pImpl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData4Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MlData5Impl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MultilanguagedataFactoryImpl
extends EFactoryImpl
implements MultilanguagedataFactory {
    public static MultilanguagedataFactory init() {
        try {
            MultilanguagedataFactory theMultilanguagedataFactory = (MultilanguagedataFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/md");
            if (theMultilanguagedataFactory != null) {
                return theMultilanguagedataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MultilanguagedataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMlData1();
            }
            case 1: {
                return this.createMlData10();
            }
            case 2: {
                return this.createMlData2();
            }
            case 3: {
                return this.createMlData3();
            }
            case 4: {
                return this.createMlData3p();
            }
            case 5: {
                return this.createMlData4();
            }
            case 6: {
                return this.createMlData5();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MlData1 createMlData1() {
        MlData1Impl mlData1 = new MlData1Impl();
        return mlData1;
    }

    public MlData10 createMlData10() {
        MlData10Impl mlData10 = new MlData10Impl();
        return mlData10;
    }

    public MlData2 createMlData2() {
        MlData2Impl mlData2 = new MlData2Impl();
        return mlData2;
    }

    public MlData3 createMlData3() {
        MlData3Impl mlData3 = new MlData3Impl();
        return mlData3;
    }

    public MlData3p createMlData3p() {
        MlData3pImpl mlData3p = new MlData3pImpl();
        return mlData3p;
    }

    public MlData4 createMlData4() {
        MlData4Impl mlData4 = new MlData4Impl();
        return mlData4;
    }

    public MlData5 createMlData5() {
        MlData5Impl mlData5 = new MlData5Impl();
        return mlData5;
    }

    public MultilanguagedataPackage getMultilanguagedataPackage() {
        return (MultilanguagedataPackage)this.getEPackage();
    }

    @Deprecated
    public static MultilanguagedataPackage getPackage() {
        return MultilanguagedataPackage.eINSTANCE;
    }
}

