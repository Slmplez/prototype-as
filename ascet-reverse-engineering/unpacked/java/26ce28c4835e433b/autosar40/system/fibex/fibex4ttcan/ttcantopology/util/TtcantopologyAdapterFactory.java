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
package autosar40.system.fibex.fibex4ttcan.ttcantopology.util;

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
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationConnector;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.util.TtcantopologySwitch;
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

public class TtcantopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static TtcantopologyPackage modelPackage;
    protected TtcantopologySwitch<Adapter> modelSwitch = new TtcantopologySwitch<Adapter>(){

        @Override
        public Adapter caseTtcanCluster(TtcanCluster object) {
            return TtcantopologyAdapterFactory.this.createTtcanClusterAdapter();
        }

        @Override
        public Adapter caseTtcanClusterConditional(TtcanClusterConditional object) {
            return TtcantopologyAdapterFactory.this.createTtcanClusterConditionalAdapter();
        }

        @Override
        public Adapter caseTtcanClusterContent(TtcanClusterContent object) {
            return TtcantopologyAdapterFactory.this.createTtcanClusterContentAdapter();
        }

        @Override
        public Adapter caseTtcanCommunicationConnector(TtcanCommunicationConnector object) {
            return TtcantopologyAdapterFactory.this.createTtcanCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseTtcanCommunicationController(TtcanCommunicationController object) {
            return TtcantopologyAdapterFactory.this.createTtcanCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseTtcanCommunicationControllerConditional(TtcanCommunicationControllerConditional object) {
            return TtcantopologyAdapterFactory.this.createTtcanCommunicationControllerConditionalAdapter();
        }

        @Override
        public Adapter caseTtcanCommunicationControllerContent(TtcanCommunicationControllerContent object) {
            return TtcantopologyAdapterFactory.this.createTtcanCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseTtcanPhysicalChannel(TtcanPhysicalChannel object) {
            return TtcantopologyAdapterFactory.this.createTtcanPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TtcantopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TtcantopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TtcantopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TtcantopologyAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TtcantopologyAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TtcantopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TtcantopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return TtcantopologyAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return TtcantopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return TtcantopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return TtcantopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return TtcantopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseAbstractCanCluster(AbstractCanCluster object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationClusterContent(CommunicationClusterContent object) {
            return TtcantopologyAdapterFactory.this.createCommunicationClusterContentAdapter();
        }

        @Override
        public Adapter caseAbstractCanClusterContent(AbstractCanClusterContent object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanClusterContentAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return TtcantopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationConnector(AbstractCanCommunicationConnector object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return TtcantopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationController(AbstractCanCommunicationController object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseCommunicationControllerContent(CommunicationControllerContent object) {
            return TtcantopologyAdapterFactory.this.createCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return TtcantopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseAbstractCanPhysicalChannel(AbstractCanPhysicalChannel object) {
            return TtcantopologyAdapterFactory.this.createAbstractCanPhysicalChannelAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TtcantopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TtcantopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TtcantopologyPackage.eINSTANCE;
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

    public Adapter createTtcanClusterAdapter() {
        return null;
    }

    public Adapter createTtcanClusterConditionalAdapter() {
        return null;
    }

    public Adapter createTtcanClusterContentAdapter() {
        return null;
    }

    public Adapter createTtcanCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createTtcanCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createTtcanCommunicationControllerConditionalAdapter() {
        return null;
    }

    public Adapter createTtcanCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createTtcanPhysicalChannelAdapter() {
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

    public Adapter createAbstractCanClusterAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterContentAdapter() {
        return null;
    }

    public Adapter createAbstractCanClusterContentAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createAbstractCanCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createAbstractCanPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

