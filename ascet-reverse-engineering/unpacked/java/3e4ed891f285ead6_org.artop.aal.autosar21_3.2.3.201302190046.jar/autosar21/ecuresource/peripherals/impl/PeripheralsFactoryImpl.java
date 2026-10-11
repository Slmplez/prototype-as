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
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.ADC;
import autosar21.ecuresource.peripherals.ADCBehaviourAtLimitEnum;
import autosar21.ecuresource.peripherals.AnalogueIOModeEnum;
import autosar21.ecuresource.peripherals.Buffer;
import autosar21.ecuresource.peripherals.BufferTypeEnum;
import autosar21.ecuresource.peripherals.CCU;
import autosar21.ecuresource.peripherals.CCUModeEnum;
import autosar21.ecuresource.peripherals.CommunicationFilter;
import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPeripheralArchitectureEnum;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMediumPhysicalMediumTypeEnum;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar21.ecuresource.peripherals.CommunicationSpeedList;
import autosar21.ecuresource.peripherals.CommunicationSpeedRange;
import autosar21.ecuresource.peripherals.DAC;
import autosar21.ecuresource.peripherals.DigitalIO;
import autosar21.ecuresource.peripherals.DigitalIOEdgeDetectionEnum;
import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.ecuresource.peripherals.PWD;
import autosar21.ecuresource.peripherals.PWDModeEnum;
import autosar21.ecuresource.peripherals.PWM;
import autosar21.ecuresource.peripherals.Peripheral;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.ecuresource.peripherals.PeripheralsFactory;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.Timer;
import autosar21.ecuresource.peripherals.TimerCountDirectionEnum;
import autosar21.ecuresource.peripherals.TimerModeEnum;
import autosar21.ecuresource.peripherals.WatchDog;
import autosar21.ecuresource.peripherals.WatchDogModeEnum;
import autosar21.ecuresource.peripherals.impl.ADCImpl;
import autosar21.ecuresource.peripherals.impl.BufferImpl;
import autosar21.ecuresource.peripherals.impl.CCUImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationFilterImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationHWPortImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationPeripheralImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationPhysicalMediumImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationProtocolImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedFixedImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedListImpl;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedRangeImpl;
import autosar21.ecuresource.peripherals.impl.DACImpl;
import autosar21.ecuresource.peripherals.impl.DigitalIOImpl;
import autosar21.ecuresource.peripherals.impl.ECUCommunicationPortImpl;
import autosar21.ecuresource.peripherals.impl.PWDImpl;
import autosar21.ecuresource.peripherals.impl.PWMImpl;
import autosar21.ecuresource.peripherals.impl.PeripheralHWPortImpl;
import autosar21.ecuresource.peripherals.impl.PeripheralImpl;
import autosar21.ecuresource.peripherals.impl.TimerImpl;
import autosar21.ecuresource.peripherals.impl.WatchDogImpl;
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
            PeripheralsFactory thePeripheralsFactory = (PeripheralsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/p");
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
            case 8: {
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
                return this.createTimer();
            }
            case 15: {
                return this.createWatchDog();
            }
            case 16: {
                return this.createADC();
            }
            case 18: {
                return this.createDAC();
            }
            case 19: {
                return this.createDigitalIO();
            }
            case 20: {
                return this.createPWD();
            }
            case 22: {
                return this.createPWM();
            }
            case 23: {
                return this.createECUCommunicationPort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.createBufferTypeEnumFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createCCUModeEnumFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createCommunicationPhysicalMediumPhysicalMediumTypeEnumFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createCommunicationPeripheralArchitectureEnumFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createTimerCountDirectionEnumFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createTimerModeEnumFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createWatchDogModeEnumFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createAnalogueIOModeEnumFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createADCBehaviourAtLimitEnumFromString(eDataType, initialValue);
            }
            case 33: {
                return this.createDigitalIOEdgeDetectionEnumFromString(eDataType, initialValue);
            }
            case 34: {
                return this.createPWDModeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 24: {
                return this.convertBufferTypeEnumToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertCCUModeEnumToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertCommunicationPhysicalMediumPhysicalMediumTypeEnumToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertCommunicationPeripheralArchitectureEnumToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertTimerCountDirectionEnumToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertTimerModeEnumToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertWatchDogModeEnumToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertAnalogueIOModeEnumToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertADCBehaviourAtLimitEnumToString(eDataType, instanceValue);
            }
            case 33: {
                return this.convertDigitalIOEdgeDetectionEnumToString(eDataType, instanceValue);
            }
            case 34: {
                return this.convertPWDModeEnumToString(eDataType, instanceValue);
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

    public ECUCommunicationPort createECUCommunicationPort() {
        ECUCommunicationPortImpl ecuCommunicationPort = new ECUCommunicationPortImpl();
        return ecuCommunicationPort;
    }

    public BufferTypeEnum createBufferTypeEnumFromString(EDataType eDataType, String initialValue) {
        BufferTypeEnum result = BufferTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBufferTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CCUModeEnum createCCUModeEnumFromString(EDataType eDataType, String initialValue) {
        CCUModeEnum result = CCUModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCCUModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationPhysicalMediumPhysicalMediumTypeEnum createCommunicationPhysicalMediumPhysicalMediumTypeEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationPhysicalMediumPhysicalMediumTypeEnum result = CommunicationPhysicalMediumPhysicalMediumTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationPhysicalMediumPhysicalMediumTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationPeripheralArchitectureEnum createCommunicationPeripheralArchitectureEnumFromString(EDataType eDataType, String initialValue) {
        CommunicationPeripheralArchitectureEnum result = CommunicationPeripheralArchitectureEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationPeripheralArchitectureEnumToString(EDataType eDataType, Object instanceValue) {
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

    public AnalogueIOModeEnum createAnalogueIOModeEnumFromString(EDataType eDataType, String initialValue) {
        AnalogueIOModeEnum result = AnalogueIOModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAnalogueIOModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ADCBehaviourAtLimitEnum createADCBehaviourAtLimitEnumFromString(EDataType eDataType, String initialValue) {
        ADCBehaviourAtLimitEnum result = ADCBehaviourAtLimitEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertADCBehaviourAtLimitEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DigitalIOEdgeDetectionEnum createDigitalIOEdgeDetectionEnumFromString(EDataType eDataType, String initialValue) {
        DigitalIOEdgeDetectionEnum result = DigitalIOEdgeDetectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDigitalIOEdgeDetectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PWDModeEnum createPWDModeEnumFromString(EDataType eDataType, String initialValue) {
        PWDModeEnum result = PWDModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPWDModeEnumToString(EDataType eDataType, Object instanceValue) {
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

