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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrame;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrameTriggering;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.util.EthernetcommunicationSwitch;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EthernetcommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static EthernetcommunicationPackage modelPackage;
    protected EthernetcommunicationSwitch<Adapter> modelSwitch = new EthernetcommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseEthernetFrame(EthernetFrame object) {
            return EthernetcommunicationAdapterFactory.this.createEthernetFrameAdapter();
        }

        @Override
        public Adapter caseEthernetFrameTriggering(EthernetFrameTriggering object) {
            return EthernetcommunicationAdapterFactory.this.createEthernetFrameTriggeringAdapter();
        }

        @Override
        public Adapter caseLogicAddress(LogicAddress object) {
            return EthernetcommunicationAdapterFactory.this.createLogicAddressAdapter();
        }

        @Override
        public Adapter caseSoAdConfig(SoAdConfig object) {
            return EthernetcommunicationAdapterFactory.this.createSoAdConfigAdapter();
        }

        @Override
        public Adapter caseSocketAddress(SocketAddress object) {
            return EthernetcommunicationAdapterFactory.this.createSocketAddressAdapter();
        }

        @Override
        public Adapter caseSocketConnection(SocketConnection object) {
            return EthernetcommunicationAdapterFactory.this.createSocketConnectionAdapter();
        }

        @Override
        public Adapter caseSocketConnectionIpduIdentifier(SocketConnectionIpduIdentifier object) {
            return EthernetcommunicationAdapterFactory.this.createSocketConnectionIpduIdentifierAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EthernetcommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EthernetcommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EthernetcommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EthernetcommunicationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EthernetcommunicationAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EthernetcommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EthernetcommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return EthernetcommunicationAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EthernetcommunicationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EthernetcommunicationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return EthernetcommunicationAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseFrame(Frame object) {
            return EthernetcommunicationAdapterFactory.this.createFrameAdapter();
        }

        @Override
        public Adapter caseFrameTriggering(FrameTriggering object) {
            return EthernetcommunicationAdapterFactory.this.createFrameTriggeringAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EthernetcommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EthernetcommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EthernetcommunicationPackage.eINSTANCE;
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

    public Adapter createEthernetFrameAdapter() {
        return null;
    }

    public Adapter createEthernetFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createLogicAddressAdapter() {
        return null;
    }

    public Adapter createSoAdConfigAdapter() {
        return null;
    }

    public Adapter createSocketAddressAdapter() {
        return null;
    }

    public Adapter createSocketConnectionAdapter() {
        return null;
    }

    public Adapter createSocketConnectionIpduIdentifierAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createFrameAdapter() {
        return null;
    }

    public Adapter createFrameTriggeringAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

