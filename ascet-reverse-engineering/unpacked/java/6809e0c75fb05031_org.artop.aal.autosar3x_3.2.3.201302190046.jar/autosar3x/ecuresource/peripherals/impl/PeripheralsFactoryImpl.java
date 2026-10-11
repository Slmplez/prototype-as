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
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.ADC;
import autosar3x.ecuresource.peripherals.AdcBehaviourAtLimitEnum;
import autosar3x.ecuresource.peripherals.AnalogueIoModeEnum;
import autosar3x.ecuresource.peripherals.Buffer;
import autosar3x.ecuresource.peripherals.CCU;
import autosar3x.ecuresource.peripherals.CcuModeEnum;
import autosar3x.ecuresource.peripherals.CommunicationArchitectureEnum;
import autosar3x.ecuresource.peripherals.CommunicationDirectionEnum;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMediumEnum;
import autosar3x.ecuresource.peripherals.CommunicationProtocol;
import autosar3x.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar3x.ecuresource.peripherals.CommunicationSpeedList;
import autosar3x.ecuresource.peripherals.CommunicationSpeedRange;
import autosar3x.ecuresource.peripherals.DAC;
import autosar3x.ecuresource.peripherals.DigitalIO;
import autosar3x.ecuresource.peripherals.DigitalIoEdgeDetectionEnum;
import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.ecuresource.peripherals.OscillatorModeEnum;
import autosar3x.ecuresource.peripherals.PWD;
import autosar3x.ecuresource.peripherals.PWM;
import autosar3x.ecuresource.peripherals.Peripheral;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;
import autosar3x.ecuresource.peripherals.PeripheralsFactory;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.PwdModeEnum;
import autosar3x.ecuresource.peripherals.Timer;
import autosar3x.ecuresource.peripherals.TimerCountDirectionEnum;
import autosar3x.ecuresource.peripherals.TimerModeEnum;
import autosar3x.ecuresource.peripherals.WatchDog;
import autosar3x.ecuresource.peripherals.WatchDogModeEnum;
import autosar3x.ecuresource.peripherals.impl.ADCImpl;
import autosar3x.ecuresource.peripherals.impl.BufferImpl;
import autosar3x.ecuresource.peripherals.impl.CCUImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationFilterImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationHWPortImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationPeripheralImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationPhysicalMediumImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationProtocolImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationSpeedFixedImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationSpeedListImpl;
import autosar3x.ecuresource.peripherals.impl.CommunicationSpeedRangeImpl;
import autosar3x.ecuresource.peripherals.impl.DACImpl;
import autosar3x.ecuresource.peripherals.impl.DigitalIOImpl;
import autosar3x.ecuresource.peripherals.impl.ECUCommunicationPortImpl;
import autosar3x.ecuresource.peripherals.impl.PWDImpl;
import autosar3x.ecuresource.peripherals.impl.PWMImpl;
import autosar3x.ecuresource.peripherals.impl.PeripheralHWPortImpl;
import autosar3x.ecuresource.peripherals.impl.PeripheralImpl;
import autosar3x.ecuresource.peripherals.impl.TimerImpl;
import autosar3x.ecuresource.peripherals.impl.WatchDogImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PeripheralsFactoryImpl
extends EFactoryImpl
implements PeripheralsFactory {
    public static PeripheralsFactory init() {
        try {
            PeripheralsFactory thePeripheralsFactory = (PeripheralsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/p");
            if (thePeripheralsFactory != null) {
                return thePeripheralsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PeripheralsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBuffer();
            }
            case 1: {
                return this.createCCU();
            }
            case 3: {
                return this.createPeripheral();
            }
            case 4: {
                return this.createCommunicationFilter();
            }
            case 5: {
                return this.createCommunicationHWPort();
            }
            case 6: {
                return this.createPeripheralHWPort();
            }
            case 7: {
                return this.createCommunicationPhysicalMedium();
            }
            case 9: {
                return this.createCommunicationPeripheral();
            }
            case 10: {
                return this.createCommunicationProtocol();
            }
            case 11: {
                return this.createCommunicationSpeedFixed();
            }
            case 12: {
                return this.createCommunicationSpeedList();
            }
            case 13: {
                return this.createCommunicationSpeedRange();
            }
            case 14: {
                return this.createECUCommunicationPort();
            }
            case 15: {
                return this.createTimer();
            }
            case 16: {
                return this.createWatchDog();
            }
            case 17: {
                return this.createADC();
            }
            case 19: {
                return this.createDAC();
            }
            case 20: {
                return this.createDigitalIO();
            }
            case 21: {
                return this.createPWD();
            }
            case 23: {
                return this.createPWM();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.createAdcBehaviourAtLimitEnumFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createAnalogueIoModeEnumFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createCommunicationArchitectureEnumFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createOscillatorModeEnumFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createCcuModeEnumFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createCommunicationPhysicalMediumEnumFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createDigitalIoEdgeDetectionEnumFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createPwdModeEnumFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createTimerCountDirectionEnumFromString(eDataType, initialValue);
            }
            case 33: {
                return this.createTimerModeEnumFromString(eDataType, initialValue);
            }
            case 34: {
                return this.createWatchDogModeEnumFromString(eDataType, initialValue);
            }
            case 35: {
                return this.createCommunicationDirectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.convertAdcBehaviourAtLimitEnumToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertAnalogueIoModeEnumToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertCommunicationArchitectureEnumToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertOscillatorModeEnumToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertCcuModeEnumToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertCommunicationPhysicalMediumEnumToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertDigitalIoEdgeDetectionEnumToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertPwdModeEnumToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertTimerCountDirectionEnumToString(eDataType, instanceValue);
            }
            case 33: {
                return this.convertTimerModeEnumToString(eDataType, instanceValue);
            }
            case 34: {
                return this.convertWatchDogModeEnumToString(eDataType, instanceValue);
            }
            case 35: {
                return this.convertCommunicationDirectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Buffer createBuffer() {
        BufferImpl buffer = new BufferImpl();
        return buffer;
    }

    public CCU createCCU() {
        CCUImpl ccu = new CCUImpl();
        return ccu;
    }

    public Peripheral createPeripheral() {
        PeripheralImpl peripheral = new PeripheralImpl();
        return peripheral;
    }

    public CommunicationFilter createCommunicationFilter() {
        CommunicationFilterImpl communicationFilter = new CommunicationFilterImpl();
        return communicationFilter;
    }

    public CommunicationHWPort createCommunicationHWPort() {
        CommunicationHWPortImpl communicationHWPort = new CommunicationHWPortImpl();
        return communicationHWPort;
    }

    public PeripheralHWPort createPeripheralHWPort() {
        PeripheralHWPortImpl peripheralHWPort = new PeripheralHWPortImpl();
        return peripheralHWPort;
    }

    public CommunicationPhysicalMedium createCommunicationPhysicalMedium() {
        CommunicationPhysicalMediumImpl communicationPhysicalMedium = new CommunicationPhysicalMediumImpl();
        return communicationPhysicalMedium;
    }

    public CommunicationPeripheral createCommunicationPeripheral() {
        CommunicationPeripheralImpl communicationPeripheral = new CommunicationPeripheralImpl();
        return communicationPeripheral;
    }

    public CommunicationProtocol createCommunicationProtocol() {
        CommunicationProtocolImpl communicationProtocol = new CommunicationProtocolImpl();
        return communicationProtocol;
    }

    public CommunicationSpeedFixed createCommunicationSpeedFixed() {
        CommunicationSpeedFixedImpl communicationSpeedFixed = new CommunicationSpeedFixedImpl();
        return communicationSpeedFixed;
    }

    public CommunicationSpeedList createCommunicationSpeedList() {
        CommunicationSpeedListImpl communicationSpeedList = new CommunicationSpeedListImpl();
        return communicationSpeedList;
    }

    public CommunicationSpeedRange createCommunicationSpeedRange() {
        CommunicationSpeedRangeImpl communicationSpeedRange = new CommunicationSpeedRangeImpl();
        return communicationSpeedRange;
    }

    public ECUCommunicationPort createECUCommunicationPort() {
        ECUCommunicationPortImpl ecuCommunicationPort = new ECUCommunicationPortImpl();
        return ecuCommunicationPort;
    }

    public Timer createTimer() {
        TimerImpl timer = new TimerImpl();
        return timer;
    }

    public WatchDog createWatchDog() {
        WatchDogImpl watchDog = new WatchDogImpl();
        return watchDog;
    }

    public ADC createADC() {
        ADCImpl adc = new ADCImpl();
        return adc;
    }

    public DAC createDAC() {
        DACImpl dac = new DACImpl();
        return dac;
    }

    public DigitalIO createDigitalIO() {
        DigitalIOImpl digitalIO = new DigitalIOImpl();
        return digitalIO;
    }

    public PWD createPWD() {
        PWDImpl pwd = new PWDImpl();
        return pwd;
    }

    public PWM createPWM() {
        PWMImpl pwm = new PWMImpl();
        return pwm;
    }

    public AdcBehaviourAtLimitEnum createAdcBehaviourAtLimitEnumFromString(EDataType eDataType, String initialValue) {
        AdcBehaviourAtLimitEnum result = AdcBehaviourAtLimitEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAdcBehaviourAtLimitEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AnalogueIoModeEnum createAnalogueIoModeEnumFromString(EDataType eDataType, String initialValue) {
        AnalogueIoModeEnum result = AnalogueIoModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAnalogueIoModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationArchitectureEnum createCommunicationArchitectureEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationArchitectureEnum result = CommunicationArchitectureEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationArchitectureEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public OscillatorModeEnum createOscillatorModeEnumFromString(EDataType eDataType, String initialValue) {
        OscillatorModeEnum result = OscillatorModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertOscillatorModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CcuModeEnum createCcuModeEnumFromString(EDataType eDataType, String initialValue) {
        CcuModeEnum result = CcuModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCcuModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationPhysicalMediumEnum createCommunicationPhysicalMediumEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationPhysicalMediumEnum result = CommunicationPhysicalMediumEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationPhysicalMediumEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DigitalIoEdgeDetectionEnum createDigitalIoEdgeDetectionEnumFromString(EDataType eDataType, String initialValue) {
        DigitalIoEdgeDetectionEnum result = DigitalIoEdgeDetectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDigitalIoEdgeDetectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PwdModeEnum createPwdModeEnumFromString(EDataType eDataType, String initialValue) {
        PwdModeEnum result = PwdModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPwdModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TimerCountDirectionEnum createTimerCountDirectionEnumFromString(EDataType eDataType, String initialValue) {
        TimerCountDirectionEnum result = TimerCountDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTimerCountDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TimerModeEnum createTimerModeEnumFromString(EDataType eDataType, String initialValue) {
        TimerModeEnum result = TimerModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTimerModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public WatchDogModeEnum createWatchDogModeEnumFromString(EDataType eDataType, String initialValue) {
        WatchDogModeEnum result = WatchDogModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertWatchDogModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationDirectionEnum createCommunicationDirectionEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationDirectionEnum result = CommunicationDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PeripheralsPackage getPeripheralsPackage() {
        return (PeripheralsPackage)this.getEPackage();
    }

    @Deprecated
    public static PeripheralsPackage getPackage() {
        return PeripheralsPackage.eINSTANCE;
    }
}

