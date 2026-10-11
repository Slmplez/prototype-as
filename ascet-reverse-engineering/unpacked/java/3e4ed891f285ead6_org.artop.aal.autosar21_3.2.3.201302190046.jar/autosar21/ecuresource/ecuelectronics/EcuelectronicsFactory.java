/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar21.ecuresource.ecuelectronics.impl.EcuelectronicsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuelectronicsFactory
extends EFactory {
    public static final EcuelectronicsFactory eINSTANCE = EcuelectronicsFactoryImpl.init();

    public BusTermination createBusTermination();

    public Clock createClock();

    public CommunicationTransceiver createCommunicationTransceiver();

    public DiscreteECUElectronics createDiscreteECUElectronics();

    public PowerDriverHWElement createPowerDriverHWElement();

    public PowerDriverProtection createPowerDriverProtection();

    public PowerDriverNotification createPowerDriverNotification();

    public PowerDriverHWPort createPowerDriverHWPort();

    public PowerSupplyCurrentNotification createPowerSupplyCurrentNotification();

    public PowerSupplyHWElement createPowerSupplyHWElement();

    public PowerSupplyVoltageNotification createPowerSupplyVoltageNotification();

    public PowerSupplyHWPort createPowerSupplyHWPort();

    public Oscillator createOscillator();

    public EcuelectronicsPackage getEcuelectronicsPackage();
}

