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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehaviorTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl.TDEventBswInternalBehaviorImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventbswinternalbehaviorFactoryImpl
extends EFactoryImpl
implements TdeventbswinternalbehaviorFactory {
    public static TdeventbswinternalbehaviorFactory init() {
        try {
            TdeventbswinternalbehaviorFactory theTdeventbswinternalbehaviorFactory = (TdeventbswinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib");
            if (theTdeventbswinternalbehaviorFactory != null) {
                return theTdeventbswinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventbswinternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTDEventBswInternalBehavior();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createTDEventBswInternalBehaviorTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertTDEventBswInternalBehaviorTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TDEventBswInternalBehavior createTDEventBswInternalBehavior() {
        TDEventBswInternalBehaviorImpl tdEventBswInternalBehavior = new TDEventBswInternalBehaviorImpl();
        return tdEventBswInternalBehavior;
    }

    public TDEventBswInternalBehaviorTypeEnum createTDEventBswInternalBehaviorTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventBswInternalBehaviorTypeEnum result = TDEventBswInternalBehaviorTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventBswInternalBehaviorTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TdeventbswinternalbehaviorPackage getTdeventbswinternalbehaviorPackage() {
        return (TdeventbswinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventbswinternalbehaviorPackage getPackage() {
        return TdeventbswinternalbehaviorPackage.eINSTANCE;
    }
}

