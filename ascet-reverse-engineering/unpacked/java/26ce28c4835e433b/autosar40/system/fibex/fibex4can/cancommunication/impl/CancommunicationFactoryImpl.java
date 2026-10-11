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
package autosar40.system.fibex.fibex4can.cancommunication.impl;

import autosar40.system.fibex.fibex4can.cancommunication.CanAddressingModeType;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrame;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationFactory;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar40.system.fibex.fibex4can.cancommunication.impl.CanFrameImpl;
import autosar40.system.fibex.fibex4can.cancommunication.impl.CanFrameTriggeringImpl;
import autosar40.system.fibex.fibex4can.cancommunication.impl.RxIdentifierRangeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CancommunicationFactoryImpl
extends EFactoryImpl
implements CancommunicationFactory {
    public static CancommunicationFactory init() {
        try {
            CancommunicationFactory theCancommunicationFactory = (CancommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fcan/cc");
            if (theCancommunicationFactory != null) {
                return theCancommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CancommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCanFrame();
            }
            case 1: {
                return this.createCanFrameTriggering();
            }
            case 2: {
                return this.createRxIdentifierRange();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createCanAddressingModeTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertCanAddressingModeTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CanFrame createCanFrame() {
        CanFrameImpl canFrame = new CanFrameImpl();
        return canFrame;
    }

    public CanFrameTriggering createCanFrameTriggering() {
        CanFrameTriggeringImpl canFrameTriggering = new CanFrameTriggeringImpl();
        return canFrameTriggering;
    }

    public RxIdentifierRange createRxIdentifierRange() {
        RxIdentifierRangeImpl rxIdentifierRange = new RxIdentifierRangeImpl();
        return rxIdentifierRange;
    }

    public CanAddressingModeType createCanAddressingModeTypeFromString(EDataType eDataType, String initialValue) {
        CanAddressingModeType result = CanAddressingModeType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCanAddressingModeTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CancommunicationPackage getCancommunicationPackage() {
        return (CancommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static CancommunicationPackage getPackage() {
        return CancommunicationPackage.eINSTANCE;
    }
}

