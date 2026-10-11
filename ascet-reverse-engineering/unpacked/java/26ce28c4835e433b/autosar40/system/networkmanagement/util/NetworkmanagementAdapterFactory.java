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
package autosar40.system.networkmanagement.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.networkmanagement.BusspecificNmEcu;
import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.CanNmClusterCoupling;
import autosar40.system.networkmanagement.CanNmEcu;
import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmClusterCoupling;
import autosar40.system.networkmanagement.FlexrayNmEcu;
import autosar40.system.networkmanagement.FlexrayNmNode;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmClusterCoupling;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.NmNode;
import autosar40.system.networkmanagement.UdpNmCluster;
import autosar40.system.networkmanagement.UdpNmClusterCoupling;
import autosar40.system.networkmanagement.UdpNmEcu;
import autosar40.system.networkmanagement.UdpNmNode;
import autosar40.system.networkmanagement.util.NetworkmanagementSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class NetworkmanagementAdapterFactory
extends AdapterFactoryImpl {
    protected static NetworkmanagementPackage modelPackage;
    protected NetworkmanagementSwitch<Adapter> modelSwitch = new NetworkmanagementSwitch<Adapter>(){

        @Override
        public Adapter caseBusspecificNmEcu(BusspecificNmEcu object) {
            return NetworkmanagementAdapterFactory.this.createBusspecificNmEcuAdapter();
        }

        @Override
        public Adapter caseCanNmCluster(CanNmCluster object) {
            return NetworkmanagementAdapterFactory.this.createCanNmClusterAdapter();
        }

        @Override
        public Adapter caseNmCluster(NmCluster object) {
            return NetworkmanagementAdapterFactory.this.createNmClusterAdapter();
        }

        @Override
        public Adapter caseNmNode(NmNode object) {
            return NetworkmanagementAdapterFactory.this.createNmNodeAdapter();
        }

        @Override
        public Adapter caseNmEcu(NmEcu object) {
            return NetworkmanagementAdapterFactory.this.createNmEcuAdapter();
        }

        @Override
        public Adapter caseNmCoordinator(NmCoordinator object) {
            return NetworkmanagementAdapterFactory.this.createNmCoordinatorAdapter();
        }

        @Override
        public Adapter caseCanNmClusterCoupling(CanNmClusterCoupling object) {
            return NetworkmanagementAdapterFactory.this.createCanNmClusterCouplingAdapter();
        }

        @Override
        public Adapter caseNmClusterCoupling(NmClusterCoupling object) {
            return NetworkmanagementAdapterFactory.this.createNmClusterCouplingAdapter();
        }

        @Override
        public Adapter caseCanNmEcu(CanNmEcu object) {
            return NetworkmanagementAdapterFactory.this.createCanNmEcuAdapter();
        }

        @Override
        public Adapter caseCanNmNode(CanNmNode object) {
            return NetworkmanagementAdapterFactory.this.createCanNmNodeAdapter();
        }

        @Override
        public Adapter caseCanNmRangeConfig(CanNmRangeConfig object) {
            return NetworkmanagementAdapterFactory.this.createCanNmRangeConfigAdapter();
        }

        @Override
        public Adapter caseFlexrayNmCluster(FlexrayNmCluster object) {
            return NetworkmanagementAdapterFactory.this.createFlexrayNmClusterAdapter();
        }

        @Override
        public Adapter caseFlexrayNmClusterCoupling(FlexrayNmClusterCoupling object) {
            return NetworkmanagementAdapterFactory.this.createFlexrayNmClusterCouplingAdapter();
        }

        @Override
        public Adapter caseFlexrayNmEcu(FlexrayNmEcu object) {
            return NetworkmanagementAdapterFactory.this.createFlexrayNmEcuAdapter();
        }

        @Override
        public Adapter caseFlexrayNmNode(FlexrayNmNode object) {
            return NetworkmanagementAdapterFactory.this.createFlexrayNmNodeAdapter();
        }

        @Override
        public Adapter caseNmConfig(NmConfig object) {
            return NetworkmanagementAdapterFactory.this.createNmConfigAdapter();
        }

        @Override
        public Adapter caseUdpNmCluster(UdpNmCluster object) {
            return NetworkmanagementAdapterFactory.this.createUdpNmClusterAdapter();
        }

        @Override
        public Adapter caseUdpNmClusterCoupling(UdpNmClusterCoupling object) {
            return NetworkmanagementAdapterFactory.this.createUdpNmClusterCouplingAdapter();
        }

        @Override
        public Adapter caseUdpNmEcu(UdpNmEcu object) {
            return NetworkmanagementAdapterFactory.this.createUdpNmEcuAdapter();
        }

        @Override
        public Adapter caseUdpNmNode(UdpNmNode object) {
            return NetworkmanagementAdapterFactory.this.createUdpNmNodeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return NetworkmanagementAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return NetworkmanagementAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return NetworkmanagementAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return NetworkmanagementAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return NetworkmanagementAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return NetworkmanagementAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return NetworkmanagementAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return NetworkmanagementAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return NetworkmanagementAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return NetworkmanagementAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return NetworkmanagementAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return NetworkmanagementAdapterFactory.this.createEObjectAdapter();
        }
    };

    public NetworkmanagementAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = NetworkmanagementPackage.eINSTANCE;
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

    public Adapter createBusspecificNmEcuAdapter() {
        return null;
    }

    public Adapter createCanNmClusterAdapter() {
        return null;
    }

    public Adapter createNmClusterAdapter() {
        return null;
    }

    public Adapter createNmNodeAdapter() {
        return null;
    }

    public Adapter createNmEcuAdapter() {
        return null;
    }

    public Adapter createNmCoordinatorAdapter() {
        return null;
    }

    public Adapter createCanNmClusterCouplingAdapter() {
        return null;
    }

    public Adapter createNmClusterCouplingAdapter() {
        return null;
    }

    public Adapter createCanNmEcuAdapter() {
        return null;
    }

    public Adapter createCanNmNodeAdapter() {
        return null;
    }

    public Adapter createCanNmRangeConfigAdapter() {
        return null;
    }

    public Adapter createFlexrayNmClusterAdapter() {
        return null;
    }

    public Adapter createFlexrayNmClusterCouplingAdapter() {
        return null;
    }

    public Adapter createFlexrayNmEcuAdapter() {
        return null;
    }

    public Adapter createFlexrayNmNodeAdapter() {
        return null;
    }

    public Adapter createNmConfigAdapter() {
        return null;
    }

    public Adapter createUdpNmClusterAdapter() {
        return null;
    }

    public Adapter createUdpNmClusterCouplingAdapter() {
        return null;
    }

    public Adapter createUdpNmEcuAdapter() {
        return null;
    }

    public Adapter createUdpNmNodeAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

