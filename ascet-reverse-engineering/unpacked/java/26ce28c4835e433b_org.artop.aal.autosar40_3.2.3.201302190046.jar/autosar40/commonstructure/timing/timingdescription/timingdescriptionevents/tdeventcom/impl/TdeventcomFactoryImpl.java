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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrClusterCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrame;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrameTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPdu;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPduTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignal;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignalTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventTTCanCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventFrClusterCycleStartImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventFrameImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventIPduImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventISignalImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventTTCanCycleStartImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventcomFactoryImpl
extends EFactoryImpl
implements TdeventcomFactory {
    public static TdeventcomFactory init() {
        try {
            TdeventcomFactory theTdeventcomFactory = (TdeventcomFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecom");
            if (theTdeventcomFactory != null) {
                return theTdeventcomFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventcomFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 2: {
                return this.createTDEventFrame();
            }
            case 3: {
                return this.createTDEventFrClusterCycleStart();
            }
            case 4: {
                return this.createTDEventIPdu();
            }
            case 5: {
                return this.createTDEventISignal();
            }
            case 6: {
                return this.createTDEventTTCanCycleStart();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createTDEventFrameTypeEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createTDEventIPduTypeEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createTDEventISignalTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertTDEventFrameTypeEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertTDEventIPduTypeEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertTDEventISignalTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TDEventFrame createTDEventFrame() {
        TDEventFrameImpl tdEventFrame = new TDEventFrameImpl();
        return tdEventFrame;
    }

    public TDEventFrClusterCycleStart createTDEventFrClusterCycleStart() {
        TDEventFrClusterCycleStartImpl tdEventFrClusterCycleStart = new TDEventFrClusterCycleStartImpl();
        return tdEventFrClusterCycleStart;
    }

    public TDEventIPdu createTDEventIPdu() {
        TDEventIPduImpl tdEventIPdu = new TDEventIPduImpl();
        return tdEventIPdu;
    }

    public TDEventISignal createTDEventISignal() {
        TDEventISignalImpl tdEventISignal = new TDEventISignalImpl();
        return tdEventISignal;
    }

    public TDEventTTCanCycleStart createTDEventTTCanCycleStart() {
        TDEventTTCanCycleStartImpl tdEventTTCanCycleStart = new TDEventTTCanCycleStartImpl();
        return tdEventTTCanCycleStart;
    }

    public TDEventFrameTypeEnum createTDEventFrameTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventFrameTypeEnum result = TDEventFrameTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventFrameTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TDEventIPduTypeEnum createTDEventIPduTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventIPduTypeEnum result = TDEventIPduTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventIPduTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TDEventISignalTypeEnum createTDEventISignalTypeEnumFromString(EDataType eDataType, String initialValue) {
        TDEventISignalTypeEnum result = TDEventISignalTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTDEventISignalTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TdeventcomPackage getTdeventcomPackage() {
        return (TdeventcomPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventcomPackage getPackage() {
        return TdeventcomPackage.eINSTANCE;
    }
}

