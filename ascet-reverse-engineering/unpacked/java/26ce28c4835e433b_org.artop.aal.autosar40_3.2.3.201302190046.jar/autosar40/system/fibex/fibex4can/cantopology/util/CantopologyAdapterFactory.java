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
package autosar40.system.fibex.fibex4can.cantopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCluster;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar40.system.fibex.fibex4can.cantopology.CanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.util.CantopologySwitch;
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

public class CantopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static CantopologyPackage modelPackage;
    protected CantopologySwitch<Adapter> modelSwitch = new CantopologySwitch<Adapter>(){

        @Override
        public Adapter caseAbstractCanCommunicationConnector(AbstractCanCommunicationConnector object) {
            return CantopologyAdapterFactory.this.createAbstractCanCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationController(AbstractCanCommunicationController object) {
            return CantopologyAdapterFactory.this.createAbstractCanCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationControllerAttributes(AbstractCanCommunicationControllerAttributes object) {
            return CantopologyAdapterFactory.this.createAbstractCanCommunicationControllerAttributesAdapter();
        }

        @Override
        public Adapter caseAbstractCanPhysicalChannel(AbstractCanPhysicalChannel object) {
            return CantopologyAdapterFactory.this.createAbstractCanPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseCanCluster(CanCluster object) {
            return CantopologyAdapterFactory.this.createCanClusterAdapter();
        }

        @Override
        public Adapter caseCanClusterConditional(CanClusterConditional object) {
            return CantopologyAdapterFactory.this.createCanClusterConditionalAdapter();
        }

        @Override
        public Adapter caseCanClusterContent(CanClusterContent object) {
            return CantopologyAdapterFactory.this.createCanClusterContentAdapter();
        }

        @Override
        public Adapter caseAbstractCanClusterContent(AbstractCanClusterContent object) {
            return CantopologyAdapterFactory.this.createAbstractCanClusterContentAdapter();
        }

        @Override
        public Adapter caseCanCommunicationConnector(CanCommunicationConnector object) {
            return CantopologyAdapterFactory.this.createCanCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCanCommunicationController(CanCommunicationController object) {
            return CantopologyAdapterFactory.this.createCanCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseCanCommunicationControllerConditional(CanCommunicationControllerConditional object) {
            return CantopologyAdapterFactory.this.createCanCommunicationControllerConditionalAdapter();
        }

        @Override
        public Adapter caseCanCommunicationControllerContent(CanCommunicationControllerContent object) {
            return CantopologyAdapterFactory.this.createCanCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent object) {
            return CantopologyAdapterFactory.this.createAbstractCanCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseCanControllerConfiguration(CanControllerConfiguration object) {
            return CantopologyAdapterFactory.this.createCanControllerConfigurationAdapter();
        }

        @Override
        public Adapter caseCanControllerConfigurationRequirements(CanControllerConfigurationRequirements object) {
            return CantopologyAdapterFactory.this.createCanControllerConfigurationRequirementsAdapter();
        }

        @Override
        public Adapter caseCanPhysicalChannel(CanPhysicalChannel object) {
            return CantopologyAdapterFactory.this.createCanPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseAbstractCanCluster(AbstractCanCluster object) {
            return CantopologyAdapterFactory.this.createAbstractCanClusterAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CantopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CantopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CantopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return CantopologyAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return CantopologyAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CantopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CantopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return CantopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return CantopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return CantopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return CantopologyAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CantopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CantopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return CantopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return CantopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationClusterContent(CommunicationClusterContent object) {
            return CantopologyAdapterFactory.this.createCommunicationClusterContentAdapter();
        }

        @Override
        public Adapter caseCommunicationControllerContent(CommunicationControllerContent object) {
            return CantopologyAdapterFactory.this.createCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CantopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CantopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CantopologyPackage.eINSTANCE;
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

    public Adapter createAbstractCanCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationControllerAttributesAdapter() {
        return null;
    }

    public Adapter createAbstractCanPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createCanClusterAdapter() {
        return null;
    }

    public Adapter createCanClusterConditionalAdapter() {
        return null;
    }

    public Adapter createCanClusterContentAdapter() {
        return null;
    }

    public Adapter createAbstractCanClusterContentAdapter() {
        return null;
    }

    public Adapter createCanCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCanCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createCanCommunicationControllerConditionalAdapter() {
        return null;
    }

    public Adapter createCanCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createCanControllerConfigurationAdapter() {
        return null;
    }

    public Adapter createCanControllerConfigurationRequirementsAdapter() {
        return null;
    }

    public Adapter createCanPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createAbstractCanClusterAdapter() {
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

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
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

    public Adapter createCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

