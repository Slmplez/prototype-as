/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.ecuresource.ecuelectronics.util;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.ECUElectronics;
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
import autosar21.ecuresource.ecuelectronics.util.EcuelectronicsSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcuelectronicsAdapterFactory
extends AdapterFactoryImpl {
    protected static EcuelectronicsPackage modelPackage;
    protected EcuelectronicsSwitch<Adapter> modelSwitch = new EcuelectronicsSwitch<Adapter>(){

        @Override
        public Adapter caseBusTermination(BusTermination object) {
            return EcuelectronicsAdapterFactory.this.createBusTerminationAdapter();
        }

        @Override
        public Adapter caseClock(Clock object) {
            return EcuelectronicsAdapterFactory.this.createClockAdapter();
        }

        @Override
        public Adapter caseECUElectronics(ECUElectronics object) {
            return EcuelectronicsAdapterFactory.this.createECUElectronicsAdapter();
        }

        @Override
        public Adapter caseCommunicationTransceiver(CommunicationTransceiver object) {
            return EcuelectronicsAdapterFactory.this.createCommunicationTransceiverAdapter();
        }

        @Override
        public Adapter caseDiscreteECUElectronics(DiscreteECUElectronics object) {
            return EcuelectronicsAdapterFactory.this.createDiscreteECUElectronicsAdapter();
        }

        @Override
        public Adapter casePowerDriverHWElement(PowerDriverHWElement object) {
            return EcuelectronicsAdapterFactory.this.createPowerDriverHWElementAdapter();
        }

        @Override
        public Adapter casePowerDriverProtection(PowerDriverProtection object) {
            return EcuelectronicsAdapterFactory.this.createPowerDriverProtectionAdapter();
        }

        @Override
        public Adapter casePowerDriverNotification(PowerDriverNotification object) {
            return EcuelectronicsAdapterFactory.this.createPowerDriverNotificationAdapter();
        }

        @Override
        public Adapter casePowerDriverHWPort(PowerDriverHWPort object) {
            return EcuelectronicsAdapterFactory.this.createPowerDriverHWPortAdapter();
        }

        @Override
        public Adapter casePowerSupplyCurrentNotification(PowerSupplyCurrentNotification object) {
            return EcuelectronicsAdapterFactory.this.createPowerSupplyCurrentNotificationAdapter();
        }

        @Override
        public Adapter casePowerSupplyHWElement(PowerSupplyHWElement object) {
            return EcuelectronicsAdapterFactory.this.createPowerSupplyHWElementAdapter();
        }

        @Override
        public Adapter casePowerSupplyVoltageNotification(PowerSupplyVoltageNotification object) {
            return EcuelectronicsAdapterFactory.this.createPowerSupplyVoltageNotificationAdapter();
        }

        @Override
        public Adapter casePowerSupplyHWPort(PowerSupplyHWPort object) {
            return EcuelectronicsAdapterFactory.this.createPowerSupplyHWPortAdapter();
        }

        @Override
        public Adapter caseOscillator(Oscillator object) {
            return EcuelectronicsAdapterFactory.this.createOscillatorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcuelectronicsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcuelectronicsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcuelectronicsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcuelectronicsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcuelectronicsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EcuelectronicsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EcuelectronicsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return EcuelectronicsAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EcuelectronicsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return EcuelectronicsAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter caseHWPort(HWPort object) {
            return EcuelectronicsAdapterFactory.this.createHWPortAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcuelectronicsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcuelectronicsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcuelectronicsPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createBusTerminationAdapter() {
        return null;
    }

    public Adapter createClockAdapter() {
        return null;
    }

    public Adapter createECUElectronicsAdapter() {
        return null;
    }

    public Adapter createCommunicationTransceiverAdapter() {
        return null;
    }

    public Adapter createDiscreteECUElectronicsAdapter() {
        return null;
    }

    public Adapter createPowerDriverHWElementAdapter() {
        return null;
    }

    public Adapter createPowerDriverProtectionAdapter() {
        return null;
    }

    public Adapter createPowerDriverNotificationAdapter() {
        return null;
    }

    public Adapter createPowerDriverHWPortAdapter() {
        return null;
    }

    public Adapter createPowerSupplyCurrentNotificationAdapter() {
        return null;
    }

    public Adapter createPowerSupplyHWElementAdapter() {
        return null;
    }

    public Adapter createPowerSupplyVoltageNotificationAdapter() {
        return null;
    }

    public Adapter createPowerSupplyHWPortAdapter() {
        return null;
    }

    public Adapter createOscillatorAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createHWElementAdapter() {
        return null;
    }

    public Adapter createHWPortAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

