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
package autosar40.system.fibex.fibex4flexray.flexraytopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.util.FlexraytopologySwitch;
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

public class FlexraytopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static FlexraytopologyPackage modelPackage;
    protected FlexraytopologySwitch<Adapter> modelSwitch = new FlexraytopologySwitch<Adapter>(){

        @Override
        public Adapter caseFlexrayCluster(FlexrayCluster object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayClusterAdapter();
        }

        @Override
        public Adapter caseFlexrayClusterConditional(FlexrayClusterConditional object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayClusterConditionalAdapter();
        }

        @Override
        public Adapter caseFlexrayClusterContent(FlexrayClusterContent object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayClusterContentAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationConnector(FlexrayCommunicationConnector object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationController(FlexrayCommunicationController object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationControllerConditional(FlexrayCommunicationControllerConditional object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayCommunicationControllerConditionalAdapter();
        }

        @Override
        public Adapter caseFlexrayCommunicationControllerContent(FlexrayCommunicationControllerContent object) {
            return FlexraytopologyAdapterFactory.this.createFlexrayCommunicationControllerContentAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return FlexraytopologyAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return FlexraytopologyAdapterFactory.this.createMultilanguageReferrableAdapter();
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
        public Adapter caseCollectableElement(CollectableElement object) {
            return FlexraytopologyAdapterFactory.this.createCollectableElementAdapter();
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
        public Adapter caseCommunicationClusterContent(CommunicationClusterContent object) {
            return FlexraytopologyAdapterFactory.this.createCommunicationClusterContentAdapter();
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
        public Adapter caseCommunicationControllerContent(CommunicationControllerContent object) {
            return FlexraytopologyAdapterFactory.this.createCommunicationControllerContentAdapter();
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

    public Adapter createFlexrayClusterConditionalAdapter() {
        return null;
    }

    public Adapter createFlexrayClusterContentAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationControllerConditionalAdapter() {
        return null;
    }

    public Adapter createFlexrayCommunicationControllerContentAdapter() {
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

    public Adapter createCommunicationConnectorAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

