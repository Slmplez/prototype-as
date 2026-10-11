/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.ADC;
import autosar3x.ecuresource.peripherals.Buffer;
import autosar3x.ecuresource.peripherals.CCU;
import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar3x.ecuresource.peripherals.CommunicationProtocol;
import autosar3x.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar3x.ecuresource.peripherals.CommunicationSpeedList;
import autosar3x.ecuresource.peripherals.CommunicationSpeedRange;
import autosar3x.ecuresource.peripherals.DAC;
import autosar3x.ecuresource.peripherals.DigitalIO;
import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.ecuresource.peripherals.PWD;
import autosar3x.ecuresource.peripherals.PWM;
import autosar3x.ecuresource.peripherals.Peripheral;
import autosar3x.ecuresource.peripherals.PeripheralHWPort;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.Timer;
import autosar3x.ecuresource.peripherals.WatchDog;
import autosar3x.ecuresource.peripherals.impl.PeripheralsFactoryImpl;
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

    public ECUCommunicationPort createECUCommunicationPort();

    public Timer createTimer();

    public WatchDog createWatchDog();

    public ADC createADC();

    public DAC createDAC();

    public DigitalIO createDigitalIO();

    public PWD createPWD();

    public PWM createPWM();

    public PeripheralsPackage getPeripheralsPackage();
}

