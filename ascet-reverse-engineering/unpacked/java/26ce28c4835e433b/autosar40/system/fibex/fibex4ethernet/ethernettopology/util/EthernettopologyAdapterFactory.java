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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCluster;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.util.EthernettopologySwitch;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EthernettopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static EthernettopologyPackage modelPackage;
    protected EthernettopologySwitch<Adapter> modelSwitch = new EthernettopologySwitch<Adapter>(){

        @Override
        public Adapter caseEthernetCluster(EthernetCluster object) {
            return EthernettopologyAdapterFactory.this.createEthernetClusterAdapter();
        }

        @Override
        public Adapter caseEthernetClusterConditional(EthernetClusterConditional object) {
            return EthernettopologyAdapterFactory.this.createEthernetClusterConditionalAdapter();
        }

        @Override
        public Adapter caseEthernetClusterContent(EthernetClusterContent object) {
            return EthernettopologyAdapterFactory.this.createEthernetClusterContentAdapter();
        }

        @Override
        public Adapter caseEthernetCommunicationController(EthernetCommunicationController object) {
            return EthernettopologyAdapterFactory.this.createEthernetCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseEthernetCommunicationControllerConditional(EthernetCommunicationControllerConditional object) {
            return EthernettopologyAdapterFactory.this.createEthernetCommunicationControllerConditionalAdapter();
        }

        @Override
        public Adapter caseEthernetCommunicationControllerContent(EthernetCommunicationControllerContent object) {
            return EthernettopologyAdapterFactory.this.createEthernetCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseEthernetPhysicalChannel(EthernetPhysicalChannel object) {
            return EthernettopologyAdapterFactory.this.createEthernetPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseEthernetCommunicationConnector(EthernetCommunicationConnector object) {
            return EthernettopologyAdapterFactory.this.createEthernetCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EthernettopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EthernettopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EthernettopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EthernettopologyAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EthernettopologyAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EthernettopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EthernettopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return EthernettopologyAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EthernettopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EthernettopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return EthernettopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return EthernettopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationClusterContent(CommunicationClusterContent object) {
            return EthernettopologyAdapterFactory.this.createCommunicationClusterContentAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return EthernettopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseCommunicationControllerContent(CommunicationControllerContent object) {
            return EthernettopologyAdapterFactory.this.createCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return EthernettopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return EthernettopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EthernettopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EthernettopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EthernettopologyPackage.eINSTANCE;
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

    public Adapter createEthernetClusterAdapter() {
        return null;
    }

    public Adapter createEthernetClusterConditionalAdapter() {
        return null;
    }

    public Adapter createEthernetClusterContentAdapter() {
        return null;
    }

    public Adapter createEthernetCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createEthernetCommunicationControllerConditionalAdapter() {
        return null;
    }

    public Adapter createEthernetCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createEthernetPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createEthernetCommunicationConnectorAdapter() {
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

    public Adapter createCommunicationClusterAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterContentAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

