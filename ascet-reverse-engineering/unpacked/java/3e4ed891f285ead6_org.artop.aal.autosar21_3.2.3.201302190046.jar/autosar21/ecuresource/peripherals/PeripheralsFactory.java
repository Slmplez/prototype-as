/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.ADC;
import autosar21.ecuresource.peripherals.Buffer;
import autosar21.ecuresource.peripherals.CCU;
import autosar21.ecuresource.peripherals.CommunicationFilter;
import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar21.ecuresource.peripherals.CommunicationSpeedList;
import autosar21.ecuresource.peripherals.CommunicationSpeedRange;
import autosar21.ecuresource.peripherals.DAC;
import autosar21.ecuresource.peripherals.DigitalIO;
import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.ecuresource.peripherals.PWD;
import autosar21.ecuresource.peripherals.PWM;
import autosar21.ecuresource.peripherals.Peripheral;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.Timer;
import autosar21.ecuresource.peripherals.WatchDog;
import autosar21.ecuresource.peripherals.impl.PeripheralsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PeripheralsFactory
extends EFactory {
    public static final PeripheralsFactory eINSTANCE = PeripheralsFactoryImpl.init();

    public Buffer createBuffer();

    public CCU createCCU();

    public Peripheral createPeripheral();

    public CommunicationFilter createCommunicationFilter();

    public CommunicationHWPort createCommunicationHWPort();

    public PeripheralHWPort createPeripheralHWPort();

    public CommunicationPhysicalMedium createCommunicationPhysicalMedium();

    public CommunicationPeripheral createCommunicationPeripheral();

    public CommunicationProtocol createCommunicationProtocol();

    public CommunicationSpeedFixed createCommunicationSpeedFixed();

    public CommunicationSpeedList createCommunicationSpeedList();

    public CommunicationSpeedRange createCommunicationSpeedRange();

    public Timer createTimer();

    public WatchDog createWatchDog();

    public ADC createADC();

    public DAC createDAC();

    public DigitalIO createDigitalIO();

    public PWD createPWD();

    public PWM createPWM();

    public ECUCommunicationPort createECUCommunicationPort();

    public PeripheralsPackage getPeripheralsPackage();
}

