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
package autosar3x.system.fibex.fibex4flexray.flexraytopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexRayCommunicationConnector;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.util.FlexraytopologySwitch;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FlexraytopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static FlexraytopologyPackage modelPackage;
    protected FlexraytopologySwitch<Adapter> modelSwitch = new FlexraytopologySwitch<Adapter>(){

        @Override
        public Adapter caseFlexrayCluster(FlexrayCluster object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayClusterAdapter();
        }

        @Override
        public Adapter caseFlexRayCommunicationConnector(FlexRayCommunicationConnector object) {
            return FlexraytopologyAdapterFactory.this.createFlexRayCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationController(FlexrayCommunicationController object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseFlexrayFifoConfiguration(FlexrayFifoConfiguration object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayFifoConfigurationAdapter();
        }

        @Override
        public Adapter caseFlexrayPhysicalChannel(FlexrayPhysicalChannel object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseFlexrayFifoRange(FlexrayFifoRange object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayFifoRangeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FlexraytopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FlexraytopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return FlexraytopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return FlexraytopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return FlexraytopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return FlexraytopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return FlexraytopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return FlexraytopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return FlexraytopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return FlexraytopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return FlexraytopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return FlexraytopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FlexraytopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FlexraytopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FlexraytopologyPackage.eINSTANCE;
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

    public Adapter createFlexrayClusterAdapter() {
        return null;
    }

    public Adapter createFlexRayCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createFlexrayFifoConfigurationAdapter() {
        return null;
    }

    public Adapter createFlexrayPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createFlexrayFifoRangeAdapter() {
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

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

