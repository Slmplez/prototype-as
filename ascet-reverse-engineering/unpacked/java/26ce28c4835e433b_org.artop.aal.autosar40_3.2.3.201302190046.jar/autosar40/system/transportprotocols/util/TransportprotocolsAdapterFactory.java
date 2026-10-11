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
package autosar40.system.transportprotocols.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
import autosar40.system.transportprotocols.FlexrayArTpConnection;
import autosar40.system.transportprotocols.FlexrayArTpNode;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpConnection;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TpConfig;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.util.TransportprotocolsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TransportprotocolsAdapterFactory
extends AdapterFactoryImpl {
    protected static TransportprotocolsPackage modelPackage;
    protected TransportprotocolsSwitch<Adapter> modelSwitch = new TransportprotocolsSwitch<Adapter>(){

        @Override
        public Adapter caseCanTpAddress(CanTpAddress object) {
            return TransportprotocolsAdapterFactory.this.createCanTpAddressAdapter();
        }

        @Override
        public Adapter caseCanTpChannel(CanTpChannel object) {
            return TransportprotocolsAdapterFactory.this.createCanTpChannelAdapter();
        }

        @Override
        public Adapter caseCanTpConfig(CanTpConfig object) {
            return TransportprotocolsAdapterFactory.this.createCanTpConfigAdapter();
        }

        @Override
        public Adapter caseTpConfig(TpConfig object) {
            return TransportprotocolsAdapterFactory.this.createTpConfigAdapter();
        }

        @Override
        public Adapter caseCanTpConnection(CanTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createCanTpConnectionAdapter();
        }

        @Override
        public Adapter caseCanTpNode(CanTpNode object) {
            return TransportprotocolsAdapterFactory.this.createCanTpNodeAdapter();
        }

        @Override
        public Adapter caseCanTpEcu(CanTpEcu object) {
            return TransportprotocolsAdapterFactory.this.createCanTpEcuAdapter();
        }

        @Override
        public Adapter caseFlexrayArTpChannel(FlexrayArTpChannel object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayArTpChannelAdapter();
        }

        @Override
        public Adapter caseFlexrayArTpConnection(FlexrayArTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayArTpConnectionAdapter();
        }

        @Override
        public Adapter caseFlexrayArTpNode(FlexrayArTpNode object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayArTpNodeAdapter();
        }

        @Override
        public Adapter caseFlexrayArTpConfig(FlexrayArTpConfig object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayArTpConfigAdapter();
        }

        @Override
        public Adapter caseFlexrayTpConfig(FlexrayTpConfig object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpConfigAdapter();
        }

        @Override
        public Adapter caseFlexrayTpConnectionControl(FlexrayTpConnectionControl object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpConnectionControlAdapter();
        }

        @Override
        public Adapter caseFlexrayTpEcu(FlexrayTpEcu object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpEcuAdapter();
        }

        @Override
        public Adapter caseFlexrayTpConnection(FlexrayTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpConnectionAdapter();
        }

        @Override
        public Adapter caseFlexrayTpPduPool(FlexrayTpPduPool object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpPduPoolAdapter();
        }

        @Override
        public Adapter caseFlexrayTpNode(FlexrayTpNode object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpNodeAdapter();
        }

        @Override
        public Adapter caseJ1939TpConfig(J1939TpConfig object) {
            return TransportprotocolsAdapterFactory.this.createJ1939TpConfigAdapter();
        }

        @Override
        public Adapter caseJ1939TpNode(J1939TpNode object) {
            return TransportprotocolsAdapterFactory.this.createJ1939TpNodeAdapter();
        }

        @Override
        public Adapter caseJ1939TpConnection(J1939TpConnection object) {
            return TransportprotocolsAdapterFactory.this.createJ1939TpConnectionAdapter();
        }

        @Override
        public Adapter caseLinTpConfig(LinTpConfig object) {
            return TransportprotocolsAdapterFactory.this.createLinTpConfigAdapter();
        }

        @Override
        public Adapter caseLinTpConnection(LinTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createLinTpConnectionAdapter();
        }

        @Override
        public Adapter caseLinTpNode(LinTpNode object) {
            return TransportprotocolsAdapterFactory.this.createLinTpNodeAdapter();
        }

        @Override
        public Adapter caseTpAddress(TpAddress object) {
            return TransportprotocolsAdapterFactory.this.createTpAddressAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TransportprotocolsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TransportprotocolsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TransportprotocolsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TransportprotocolsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TransportprotocolsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TransportprotocolsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TransportprotocolsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return TransportprotocolsAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return TransportprotocolsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return TransportprotocolsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return TransportprotocolsAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TransportprotocolsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TransportprotocolsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TransportprotocolsPackage.eINSTANCE;
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

    public Adapter createCanTpAddressAdapter() {
        return null;
    }

    public Adapter createCanTpChannelAdapter() {
        return null;
    }

    public Adapter createCanTpConfigAdapter() {
        return null;
    }

    public Adapter createTpConfigAdapter() {
        return null;
    }

    public Adapter createCanTpConnectionAdapter() {
        return null;
    }

    public Adapter createCanTpNodeAdapter() {
        return null;
    }

    public Adapter createCanTpEcuAdapter() {
        return null;
    }

    public Adapter createFlexrayArTpChannelAdapter() {
        return null;
    }

    public Adapter createFlexrayArTpConnectionAdapter() {
        return null;
    }

    public Adapter createFlexrayArTpNodeAdapter() {
        return null;
    }

    public Adapter createFlexrayArTpConfigAdapter() {
        return null;
    }

    public Adapter createFlexrayTpConfigAdapter() {
        return null;
    }

    public Adapter createFlexrayTpConnectionControlAdapter() {
        return null;
    }

    public Adapter createFlexrayTpEcuAdapter() {
        return null;
    }

    public Adapter createFlexrayTpConnectionAdapter() {
        return null;
    }

    public Adapter createFlexrayTpPduPoolAdapter() {
        return null;
    }

    public Adapter createFlexrayTpNodeAdapter() {
        return null;
    }

    public Adapter createJ1939TpConfigAdapter() {
        return null;
    }

    public Adapter createJ1939TpNodeAdapter() {
        return null;
    }

    public Adapter createJ1939TpConnectionAdapter() {
        return null;
    }

    public Adapter createLinTpConfigAdapter() {
        return null;
    }

    public Adapter createLinTpConnectionAdapter() {
        return null;
    }

    public Adapter createLinTpNodeAdapter() {
        return null;
    }

    public Adapter createTpAddressAdapter() {
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

