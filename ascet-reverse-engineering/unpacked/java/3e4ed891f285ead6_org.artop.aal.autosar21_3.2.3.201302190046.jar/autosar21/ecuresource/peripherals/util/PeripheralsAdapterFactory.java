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
package autosar21.ecuresource.peripherals.util;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.peripherals.ADC;
import autosar21.ecuresource.peripherals.AnalogueIO;
import autosar21.ecuresource.peripherals.Buffer;
import autosar21.ecuresource.peripherals.CCU;
import autosar21.ecuresource.peripherals.CommunicationFilter;
import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.CommunicationSpeed;
import autosar21.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar21.ecuresource.peripherals.CommunicationSpeedList;
import autosar21.ecuresource.peripherals.CommunicationSpeedRange;
import autosar21.ecuresource.peripherals.DAC;
import autosar21.ecuresource.peripherals.DigitalIO;
import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.ecuresource.peripherals.GeneralPurposeTimer;
import autosar21.ecuresource.peripherals.PWD;
import autosar21.ecuresource.peripherals.PWM;
import autosar21.ecuresource.peripherals.Peripheral;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.PulseWidthPeripheral;
import autosar21.ecuresource.peripherals.Timer;
import autosar21.ecuresource.peripherals.WatchDog;
import autosar21.ecuresource.peripherals.util.PeripheralsSwitch;
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

public class PeripheralsAdapterFactory
extends AdapterFactoryImpl {
    protected static PeripheralsPackage modelPackage;
    protected PeripheralsSwitch<Adapter> modelSwitch = new PeripheralsSwitch<Adapter>(){

        @Override
        public Adapter caseBuffer(Buffer object) {
            return PeripheralsAdapterFactory.this.createBufferAdapter();
        }

        @Override
        public Adapter caseCCU(CCU object) {
            return PeripheralsAdapterFactory.this.createCCUAdapter();
        }

        @Override
        public Adapter caseGeneralPurposeTimer(GeneralPurposeTimer object) {
            return PeripheralsAdapterFactory.this.createGeneralPurposeTimerAdapter();
        }

        @Override
        public Adapter casePeripheral(Peripheral object) {
            return PeripheralsAdapterFactory.this.createPeripheralAdapter();
        }

        @Override
        public Adapter caseCommunicationFilter(CommunicationFilter object) {
            return PeripheralsAdapterFactory.this.createCommunicationFilterAdapter();
        }

        @Override
        public Adapter caseCommunicationHWPort(CommunicationHWPort object) {
            return PeripheralsAdapterFactory.this.createCommunicationHWPortAdapter();
        }

        @Override
        public Adapter casePeripheralHWPort(PeripheralHWPort object) {
            return PeripheralsAdapterFactory.this.createPeripheralHWPortAdapter();
        }

        @Override
        public Adapter caseCommunicationSpeed(CommunicationSpeed object) {
            return PeripheralsAdapterFactory.this.createCommunicationSpeedAdapter();
        }

        @Override
        public Adapter caseCommunicationPhysicalMedium(CommunicationPhysicalMedium object) {
            return PeripheralsAdapterFactory.this.createCommunicationPhysicalMediumAdapter();
        }

        @Override
        public Adapter caseCommunicationPeripheral(CommunicationPeripheral object) {
            return PeripheralsAdapterFactory.this.createCommunicationPeripheralAdapter();
        }

        @Override
        public Adapter caseCommunicationProtocol(CommunicationProtocol object) {
            return PeripheralsAdapterFactory.this.createCommunicationProtocolAdapter();
        }

        @Override
        public Adapter caseCommunicationSpeedFixed(CommunicationSpeedFixed object) {
            return PeripheralsAdapterFactory.this.createCommunicationSpeedFixedAdapter();
        }

        @Override
        public Adapter caseCommunicationSpeedList(CommunicationSpeedList object) {
            return PeripheralsAdapterFactory.this.createCommunicationSpeedListAdapter();
        }

        @Override
        public Adapter caseCommunicationSpeedRange(CommunicationSpeedRange object) {
            return PeripheralsAdapterFactory.this.createCommunicationSpeedRangeAdapter();
        }

        @Override
        public Adapter caseTimer(Timer object) {
            return PeripheralsAdapterFactory.this.createTimerAdapter();
        }

        @Override
        public Adapter caseWatchDog(WatchDog object) {
            return PeripheralsAdapterFactory.this.createWatchDogAdapter();
        }

        @Override
        public Adapter caseADC(ADC object) {
            return PeripheralsAdapterFactory.this.createADCAdapter();
        }

        @Override
        public Adapter caseAnalogueIO(AnalogueIO object) {
            return PeripheralsAdapterFactory.this.createAnalogueIOAdapter();
        }

        @Override
        public Adapter caseDAC(DAC object) {
            return PeripheralsAdapterFactory.this.createDACAdapter();
        }

        @Override
        public Adapter caseDigitalIO(DigitalIO object) {
            return PeripheralsAdapterFactory.this.createDigitalIOAdapter();
        }

        @Override
        public Adapter casePWD(PWD object) {
            return PeripheralsAdapterFactory.this.createPWDAdapter();
        }

        @Override
        public Adapter casePulseWidthPeripheral(PulseWidthPeripheral object) {
            return PeripheralsAdapterFactory.this.createPulseWidthPeripheralAdapter();
        }

        @Override
        public Adapter casePWM(PWM object) {
            return PeripheralsAdapterFactory.this.createPWMAdapter();
        }

        @Override
        public Adapter caseECUCommunicationPort(ECUCommunicationPort object) {
            return PeripheralsAdapterFactory.this.createECUCommunicationPortAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PeripheralsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PeripheralsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return PeripheralsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return PeripheralsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return PeripheralsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return PeripheralsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return PeripheralsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return PeripheralsAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return PeripheralsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return PeripheralsAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter caseHWPort(HWPort object) {
            return PeripheralsAdapterFactory.this.createHWPortAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PeripheralsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PeripheralsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PeripheralsPackage.eINSTANCE;
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

    public Adapter createBufferAdapter() {
        return null;
    }

    public Adapter createCCUAdapter() {
        return null;
    }

    public Adapter createGeneralPurposeTimerAdapter() {
        return null;
    }

    public Adapter createPeripheralAdapter() {
        return null;
    }

    public Adapter createCommunicationFilterAdapter() {
        return null;
    }

    public Adapter createCommunicationHWPortAdapter() {
        return null;
    }

    public Adapter createPeripheralHWPortAdapter() {
        return null;
    }

    public Adapter createCommunicationSpeedAdapter() {
        return null;
    }

    public Adapter createCommunicationPhysicalMediumAdapter() {
        return null;
    }

    public Adapter createCommunicationPeripheralAdapter() {
        return null;
    }

    public Adapter createCommunicationProtocolAdapter() {
        return null;
    }

    public Adapter createCommunicationSpeedFixedAdapter() {
        return null;
    }

    public Adapter createCommunicationSpeedListAdapter() {
        return null;
    }

    public Adapter createCommunicationSpeedRangeAdapter() {
        return null;
    }

    public Adapter createTimerAdapter() {
        return null;
    }

    public Adapter createWatchDogAdapter() {
        return null;
    }

    public Adapter createADCAdapter() {
        return null;
    }

    public Adapter createAnalogueIOAdapter() {
        return null;
    }

    public Adapter createDACAdapter() {
        return null;
    }

    public Adapter createDigitalIOAdapter() {
        return null;
    }

    public Adapter createPWDAdapter() {
        return null;
    }

    public Adapter createPulseWidthPeripheralAdapter() {
        return null;
    }

    public Adapter createPWMAdapter() {
        return null;
    }

    public Adapter createECUCommunicationPortAdapter() {
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

