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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehaviorTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl.TDEventSwcInternalBehaviorImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventswcinternalbehaviorFactoryImpl
extends EFactoryImpl
implements TdeventswcinternalbehaviorFactory {
    public static TdeventswcinternalbehaviorFactory init() {
        try {
            TdeventswcinternalbehaviorFactory theTdeventswcinternalbehaviorFactory = (TdeventswcinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdesib");
            if (theTdeventswcinternalbehaviorFactory != null) {
                return theTdeventswcinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventswcinternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTDEventSwcInternalBehavior();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createTDEventSwcInternalBehaviorTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertTDEventSwcInternalBehaviorTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TDEventSwcInternalBehavior createTDEventSwcInternalBehavior() {
        TDEventSwcInternalBehaviorImpl tdEventSwcInternalBehavior = new TDEventSwcInternalBehaviorImpl();
        return tdEventSwcInternalBehavior;
    }

    public TDEventSwcInternalBehaviorTypeEnum createTDEventSwcInternalBehaviorTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventSwcInternalBehaviorTypeEnum result = TDEventSwcInternalBehaviorTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventSwcInternalBehaviorTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TdeventswcinternalbehaviorPackage getTdeventswcinternalbehaviorPackage() {
        return (TdeventswcinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventswcinternalbehaviorPackage getPackage() {
        return TdeventswcinternalbehaviorPackage.eINSTANCE;
    }
}

