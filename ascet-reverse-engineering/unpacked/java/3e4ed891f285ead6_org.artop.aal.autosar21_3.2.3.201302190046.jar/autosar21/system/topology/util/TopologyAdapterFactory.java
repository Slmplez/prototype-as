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
package autosar21.system.topology.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.Hub;
import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
import autosar21.system.topology.util.TopologySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static TopologyPackage modelPackage;
    protected TopologySwitch<Adapter> modelSwitch = new TopologySwitch<Adapter>(){

        @Override
        public Adapter caseCANBus(CANBus object) {
            return TopologyAdapterFactory.this.createCANBusAdapter();
        }

        @Override
        public Adapter caseCANCommunicationPortInstance(CANCommunicationPortInstance object) {
            return TopologyAdapterFactory.this.createCANCommunicationPortInstanceAdapter();
        }

        @Override
        public Adapter caseECUCommunicationPortInstance(ECUCommunicationPortInstance object) {
            return TopologyAdapterFactory.this.createECUCommunicationPortInstanceAdapter();
        }

        @Override
        public Adapter caseConnector(Connector object) {
            return TopologyAdapterFactory.this.createConnectorAdapter();
        }

        @Override
        public Adapter caseECUInstance(ECUInstance object) {
            return TopologyAdapterFactory.this.createECUInstanceAdapter();
        }

        @Override
        public Adapter caseTopologyElement(TopologyElement object) {
            return TopologyAdapterFactory.this.createTopologyElementAdapter();
        }

        @Override
        public Adapter caseFlexrayCluster(FlexrayCluster object) {
            return TopologyAdapterFactory.this.createFlexrayClusterAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationPortInstance(FlexrayCommunicationPortInstance object) {
            return TopologyAdapterFactory.this.createFlexrayCommunicationPortInstanceAdapter();
        }

        @Override
        public Adapter caseHub(Hub object) {
            return TopologyAdapterFactory.this.createHubAdapter();
        }

        @Override
        public Adapter caseLINCommunicationPortInstance(LINCommunicationPortInstance object) {
            return TopologyAdapterFactory.this.createLINCommunicationPortInstanceAdapter();
        }

        @Override
        public Adapter caseLINSubBus(LINSubBus object) {
            return TopologyAdapterFactory.this.createLINSubBusAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return TopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter casePhysicalMediumSegment(PhysicalMediumSegment object) {
            return TopologyAdapterFactory.this.createPhysicalMediumSegmentAdapter();
        }

        @Override
        public Adapter caseSystemTopologyType(SystemTopologyType object) {
            return TopologyAdapterFactory.this.createSystemTopologyTypeAdapter();
        }

        @Override
        public Adapter caseUnspecifiedConnection(UnspecifiedConnection object) {
            return TopologyAdapterFactory.this.createUnspecifiedConnectionAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return TopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return TopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return TopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return TopologyAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return TopologyAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TopologyPackage.eINSTANCE;
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

    public Adapter createCANBusAdapter() {
        return null;
    }

    public Adapter createCANCommunicationPortInstanceAdapter() {
        return null;
    }

    public Adapter createECUCommunicationPortInstanceAdapter() {
        return null;
    }

    public Adapter createConnectorAdapter() {
        return null;
    }

    public Adapter createECUInstanceAdapter() {
        return null;
    }

    public Adapter createTopologyElementAdapter() {
        return null;
    }

    public Adapter createFlexrayClusterAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationPortInstanceAdapter() {
        return null;
    }

    public Adapter createHubAdapter() {
        return null;
    }

    public Adapter createLINCommunicationPortInstanceAdapter() {
        return null;
    }

    public Adapter createLINSubBusAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createPhysicalMediumSegmentAdapter() {
        return null;
    }

    public Adapter createSystemTopologyTypeAdapter() {
        return null;
    }

    public Adapter createUnspecifiedConnectionAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

