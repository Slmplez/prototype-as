/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel.impl;

import autosar21.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelFactory;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L10Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L1Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L2Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L3Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L4Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.L5Impl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LanguagedatamodelFactoryImpl
extends EFactoryImpl
implements LanguagedatamodelFactory {
    public static LanguagedatamodelFactory init() {
        try {
            LanguagedatamodelFactory theLanguagedatamodelFactory = (LanguagedatamodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/ldm");
            if (theLanguagedatamodelFactory != null) {
                return theLanguagedatamodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LanguagedatamodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createL1();
            }
            case 1: {
                return this.createL10();
            }
            case 2: {
                return this.createL2();
            }
            case 3: {
                return this.createL3();
            }
            case 4: {
                return this.createL4();
            }
            case 5: {
                return this.createL5();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 12: {
                return this.createLEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 12: {
                return this.convertLEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public L1 createL1() {
        L1Impl l1 = new L1Impl();
        return l1;
    }

    public L10 createL10() {
        L10Impl l10 = new L10Impl();
        return l10;
    }

    public L2 createL2() {
        L2Impl l2 = new L2Impl();
        return l2;
    }

    public L3 createL3() {
        L3Impl l3 = new L3Impl();
        return l3;
    }

    public L4 createL4() {
        L4Impl l4 = new L4Impl();
        return l4;
    }

    public L5 createL5() {
        L5Impl l5 = new L5Impl();
        return l5;
    }

    public LEnum createLEnumFromString(EDataType eDataType, String initialValue) {
        LEnum result = LEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LanguagedatamodelPackage getLanguagedatamodelPackage() {
        return (LanguagedatamodelPackage)this.getEPackage();
    }

    @Deprecated
    public static LanguagedatamodelPackage getPackage() {
        return LanguagedatamodelPackage.eINSTANCE;
    }
}

