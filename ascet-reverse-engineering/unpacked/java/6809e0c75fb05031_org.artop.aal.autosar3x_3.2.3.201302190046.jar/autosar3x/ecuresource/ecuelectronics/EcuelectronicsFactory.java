/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.BusTermination;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar3x.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar3x.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar3x.ecuresource.ecuelectronics.impl.EcuelectronicsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcuelectronicsFactory
extends EFactory {
    public static final EcuelectronicsFactory eINSTANCE = EcuelectronicsFactoryImpl.init();

    public BusTermination createBusTermination();

    public Clock createClock();

    public CommunicationTransceiver createCommunicationTransceiver();

    public DiscreteECUElectronics createDiscreteECUElectronics();

    public PowerDriverHWElement createPowerDriverHWElement();

    public PowerDriverNotification createPowerDriverNotification();

    public PowerDriverProtection createPowerDriverProtection();

    public PowerDriverHWPort createPowerDriverHWPort();

    public PowerSupplyCurrentNotification createPowerSupplyCurrentNotification();

    public PowerSupplyHWElement createPowerSupplyHWElement();

    public PowerSupplyVoltageNotification createPowerSupplyVoltageNotification();

    public PowerSupplyHWPort createPowerSupplyHWPort();

    public Oscillator createOscillator();

    public EcuelectronicsPackage getEcuelectronicsPackage();
}

