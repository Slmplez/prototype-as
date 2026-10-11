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
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.ecuelectronics.ClockTypeEnum;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiverArchitectureEnum;
import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsFactory;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.ecuelectronics.OscillatorOscillatorModeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementDefaultResetBehaviuorEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementPowerDriverTypeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar21.ecuresource.ecuelectronics.impl.BusTerminationImpl;
import autosar21.ecuresource.ecuelectronics.impl.ClockImpl;
import autosar21.ecuresource.ecuelectronics.impl.CommunicationTransceiverImpl;
import autosar21.ecuresource.ecuelectronics.impl.DiscreteECUElectronicsImpl;
import autosar21.ecuresource.ecuelectronics.impl.OscillatorImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerDriverHWElementImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerDriverHWPortImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerDriverNotificationImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerDriverProtectionImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerSupplyCurrentNotificationImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerSupplyHWElementImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerSupplyHWPortImpl;
import autosar21.ecuresource.ecuelectronics.impl.PowerSupplyVoltageNotificationImpl;
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
            EcuelectronicsFactory theEcuelectronicsFactory = (EcuelectronicsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/ecue");
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
                return this.createPowerDriverProtection();
            }
            case 7: {
                return this.createPowerDriverNotification();
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
                return this.createClockTypeEnumFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createCommunicationTransceiverArchitectureEnumFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createPowerDriverHWElementResetOnFaultBehaviourEnumFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createPowerDriverHWElementDefaultResetBehaviuorEnumFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createPowerDriverHWElementPowerDriverTypeEnumFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createPowerSupplyHWElementResetOnFaultBehaviourEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createOscillatorOscillatorModeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 14: {
                return this.convertClockTypeEnumToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertCommunicationTransceiverArchitectureEnumToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertPowerDriverHWElementResetOnFaultBehaviourEnumToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertPowerDriverHWElementDefaultResetBehaviuorEnumToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertPowerDriverHWElementPowerDriverTypeEnumToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertPowerSupplyHWElementResetOnFaultBehaviourEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertOscillatorOscillatorModeEnumToString(eDataType, instanceValue);
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

    public PowerDriverProtection createPowerDriverProtection() {
        PowerDriverProtectionImpl powerDriverProtection = new PowerDriverProtectionImpl();
        return powerDriverProtection;
    }

    public PowerDriverNotification createPowerDriverNotification() {
        PowerDriverNotificationImpl powerDriverNotification = new PowerDriverNotificationImpl();
        return powerDriverNotification;
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

    public ClockTypeEnum createClockTypeEnumFromString(EDataType eDataType, String initialValue) {
        ClockTypeEnum result = ClockTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertClockTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationTransceiverArchitectureEnum createCommunicationTransceiverArchitectureEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationTransceiverArchitectureEnum result = CommunicationTransceiverArchitectureEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationTransceiverArchitectureEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PowerDriverHWElementResetOnFaultBehaviourEnum createPowerDriverHWElementResetOnFaultBehaviourEnumFromString(EDataType eDataType, String initialValue) {
        PowerDriverHWElementResetOnFaultBehaviourEnum result = PowerDriverHWElementResetOnFaultBehaviourEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPowerDriverHWElementResetOnFaultBehaviourEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PowerDriverHWElementDefaultResetBehaviuorEnum createPowerDriverHWElementDefaultResetBehaviuorEnumFromString(EDataType eDataType, String initialValue) {
        PowerDriverHWElementDefaultResetBehaviuorEnum result = PowerDriverHWElementDefaultResetBehaviuorEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPowerDriverHWElementDefaultResetBehaviuorEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PowerDriverHWElementPowerDriverTypeEnum createPowerDriverHWElementPowerDriverTypeEnumFromString(EDataType eDataType, String initialValue) {
        PowerDriverHWElementPowerDriverTypeEnum result = PowerDriverHWElementPowerDriverTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPowerDriverHWElementPowerDriverTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PowerSupplyHWElementResetOnFaultBehaviourEnum createPowerSupplyHWElementResetOnFaultBehaviourEnumFromString(EDataType eDataType, String initialValue) {
        PowerSupplyHWElementResetOnFaultBehaviourEnum result = PowerSupplyHWElementResetOnFaultBehaviourEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPowerSupplyHWElementResetOnFaultBehaviourEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public OscillatorOscillatorModeEnum createOscillatorOscillatorModeEnumFromString(EDataType eDataType, String initialValue) {
        OscillatorOscillatorModeEnum result = OscillatorOscillatorModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertOscillatorOscillatorModeEnumToString(EDataType eDataType, Object instanceValue) {
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

