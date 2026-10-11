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
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.BusTermination;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar3x.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsFactory;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.HwElementDefaultResetBehaviorEnum;
import autosar3x.ecuresource.ecuelectronics.HwElementPowerDriverTypeEnum;
import autosar3x.ecuresource.ecuelectronics.HwElementResetOnFaultBehaviourEnum;
import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar3x.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar3x.ecuresource.ecuelectronics.impl.BusTerminationImpl;
import autosar3x.ecuresource.ecuelectronics.impl.ClockImpl;
import autosar3x.ecuresource.ecuelectronics.impl.CommunicationTransceiverImpl;
import autosar3x.ecuresource.ecuelectronics.impl.DiscreteECUElectronicsImpl;
import autosar3x.ecuresource.ecuelectronics.impl.OscillatorImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerDriverHWElementImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerDriverHWPortImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerDriverNotificationImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerDriverProtectionImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerSupplyCurrentNotificationImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerSupplyHWElementImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerSupplyHWPortImpl;
import autosar3x.ecuresource.ecuelectronics.impl.PowerSupplyVoltageNotificationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcuelectronicsFactoryImpl
extends EFactoryImpl
implements EcuelectronicsFactory {
    public static EcuelectronicsFactory init() {
        try {
            EcuelectronicsFactory theEcuelectronicsFactory = (EcuelectronicsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/ecue");
            if (theEcuelectronicsFactory != null) {
                return theEcuelectronicsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcuelectronicsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBusTermination();
            }
            case 1: {
                return this.createClock();
            }
            case 3: {
                return this.createCommunicationTransceiver();
            }
            case 4: {
                return this.createDiscreteECUElectronics();
            }
            case 5: {
                return this.createPowerDriverHWElement();
            }
            case 6: {
                return this.createPowerDriverNotification();
            }
            case 7: {
                return this.createPowerDriverProtection();
            }
            case 8: {
                return this.createPowerDriverHWPort();
            }
            case 9: {
                return this.createPowerSupplyCurrentNotification();
            }
            case 10: {
                return this.createPowerSupplyHWElement();
            }
            case 11: {
                return this.createPowerSupplyVoltageNotification();
            }
            case 12: {
                return this.createPowerSupplyHWPort();
            }
            case 13: {
                return this.createOscillator();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 14: {
                return this.createHwElementDefaultResetBehaviorEnumFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createHwElementPowerDriverTypeEnumFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createHwElementResetOnFaultBehaviourEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 14: {
                return this.convertHwElementDefaultResetBehaviorEnumToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertHwElementPowerDriverTypeEnumToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertHwElementResetOnFaultBehaviourEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BusTermination createBusTermination() {
        BusTerminationImpl busTermination = new BusTerminationImpl();
        return busTermination;
    }

    public Clock createClock() {
        ClockImpl clock = new ClockImpl();
        return clock;
    }

    public CommunicationTransceiver createCommunicationTransceiver() {
        CommunicationTransceiverImpl communicationTransceiver = new CommunicationTransceiverImpl();
        return communicationTransceiver;
    }

    public DiscreteECUElectronics createDiscreteECUElectronics() {
        DiscreteECUElectronicsImpl discreteECUElectronics = new DiscreteECUElectronicsImpl();
        return discreteECUElectronics;
    }

    public PowerDriverHWElement createPowerDriverHWElement() {
        PowerDriverHWElementImpl powerDriverHWElement = new PowerDriverHWElementImpl();
        return powerDriverHWElement;
    }

    public PowerDriverNotification createPowerDriverNotification() {
        PowerDriverNotificationImpl powerDriverNotification = new PowerDriverNotificationImpl();
        return powerDriverNotification;
    }

    public PowerDriverProtection createPowerDriverProtection() {
        PowerDriverProtectionImpl powerDriverProtection = new PowerDriverProtectionImpl();
        return powerDriverProtection;
    }

    public PowerDriverHWPort createPowerDriverHWPort() {
        PowerDriverHWPortImpl powerDriverHWPort = new PowerDriverHWPortImpl();
        return powerDriverHWPort;
    }

    public PowerSupplyCurrentNotification createPowerSupplyCurrentNotification() {
        PowerSupplyCurrentNotificationImpl powerSupplyCurrentNotification = new PowerSupplyCurrentNotificationImpl();
        return powerSupplyCurrentNotification;
    }

    public PowerSupplyHWElement createPowerSupplyHWElement() {
        PowerSupplyHWElementImpl powerSupplyHWElement = new PowerSupplyHWElementImpl();
        return powerSupplyHWElement;
    }

    public PowerSupplyVoltageNotification createPowerSupplyVoltageNotification() {
        PowerSupplyVoltageNotificationImpl powerSupplyVoltageNotification = new PowerSupplyVoltageNotificationImpl();
        return powerSupplyVoltageNotification;
    }

    public PowerSupplyHWPort createPowerSupplyHWPort() {
        PowerSupplyHWPortImpl powerSupplyHWPort = new PowerSupplyHWPortImpl();
        return powerSupplyHWPort;
    }

    public Oscillator createOscillator() {
        OscillatorImpl oscillator = new OscillatorImpl();
        return oscillator;
    }

    public HwElementDefaultResetBehaviorEnum createHwElementDefaultResetBehaviorEnumFromString(EDataType eDataType, String initialValue) {
        HwElementDefaultResetBehaviorEnum result = HwElementDefaultResetBehaviorEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHwElementDefaultResetBehaviorEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HwElementPowerDriverTypeEnum createHwElementPowerDriverTypeEnumFromString(EDataType eDataType, String initialValue) {
        HwElementPowerDriverTypeEnum result = HwElementPowerDriverTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHwElementPowerDriverTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public HwElementResetOnFaultBehaviourEnum createHwElementResetOnFaultBehaviourEnumFromString(EDataType eDataType, String initialValue) {
        HwElementResetOnFaultBehaviourEnum result = HwElementResetOnFaultBehaviourEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHwElementResetOnFaultBehaviourEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EcuelectronicsPackage getEcuelectronicsPackage() {
        return (EcuelectronicsPackage)this.getEPackage();
    }

    @Deprecated
    public static EcuelectronicsPackage getPackage() {
        return EcuelectronicsPackage.eINSTANCE;
    }
}

