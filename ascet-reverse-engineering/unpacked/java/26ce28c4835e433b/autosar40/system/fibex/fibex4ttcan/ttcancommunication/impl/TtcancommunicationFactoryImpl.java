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
package autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl;

import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanTriggerType;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationFactory;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl.TtcanAbsolutelyScheduledTimingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TtcancommunicationFactoryImpl
extends EFactoryImpl
implements TtcancommunicationFactory {
    public static TtcancommunicationFactory init() {
        try {
            TtcancommunicationFactory theTtcancommunicationFactory = (TtcancommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/ft/tc");
            if (theTtcancommunicationFactory != null) {
                return theTtcancommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TtcancommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTtcanAbsolutelyScheduledTiming();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createTtcanTriggerTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertTtcanTriggerTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public TtcanAbsolutelyScheduledTiming createTtcanAbsolutelyScheduledTiming() {
        TtcanAbsolutelyScheduledTimingImpl ttcanAbsolutelyScheduledTiming = new TtcanAbsolutelyScheduledTimingImpl();
        return ttcanAbsolutelyScheduledTiming;
    }

    public TtcanTriggerType createTtcanTriggerTypeFromString(EDataType eDataType, String initialValue) {
        TtcanTriggerType result = TtcanTriggerType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTtcanTriggerTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TtcancommunicationPackage getTtcancommunicationPackage() {
        return (TtcancommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static TtcancommunicationPackage getPackage() {
        return TtcancommunicationPackage.eINSTANCE;
    }
}

