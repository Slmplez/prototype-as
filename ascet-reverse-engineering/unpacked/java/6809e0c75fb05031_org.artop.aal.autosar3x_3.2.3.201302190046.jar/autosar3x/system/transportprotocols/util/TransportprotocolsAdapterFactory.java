/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.transportprotocols.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.transportprotocols.CanTpConnectionChannel;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.LinTpChannel;
import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import autosar3x.system.transportprotocols.TpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.util.TransportprotocolsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
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
        public Adapter caseCanTpConnectionChannel(CanTpConnectionChannel object) {
            return TransportprotocolsAdapterFactory.this.createCanTpConnectionChannelAdapter();
        }

        @Override
        public Adapter caseCanTpNode(CanTpNode object) {
            return TransportprotocolsAdapterFactory.this.createCanTpNodeAdapter();
        }

        @Override
        public Adapter caseTpNode(TpNode object) {
            return TransportprotocolsAdapterFactory.this.createTpNodeAdapter();
        }

        @Override
        public Adapter caseTpAddress(TpAddress object) {
            return TransportprotocolsAdapterFactory.this.createTpAddressAdapter();
        }

        @Override
        public Adapter caseFlexrayIsoTpConnection(FlexrayIsoTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayIsoTpConnectionAdapter();
        }

        @Override
        public Adapter caseFlexrayIsoTpPduPool(FlexrayIsoTpPduPool object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayIsoTpPduPoolAdapter();
        }

        @Override
        public Adapter caseFlexrayIsoTpNode(FlexrayIsoTpNode object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayIsoTpNodeAdapter();
        }

        @Override
        public Adapter caseFlexrayIsoTpConnectionControl(FlexrayIsoTpConnectionControl object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayIsoTpConnectionControlAdapter();
        }

        @Override
        public Adapter caseFlexrayIsoTpEcu(FlexrayIsoTpEcu object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayIsoTpEcuAdapter();
        }

        @Override
        public Adapter caseFlexrayTpChannel(FlexrayTpChannel object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpChannelAdapter();
        }

        @Override
        public Adapter caseFlexRayTpConnection(FlexRayTpConnection object) {
            return TransportprotocolsAdapterFactory.this.createFlexRayTpConnectionAdapter();
        }

        @Override
        public Adapter caseFlexrayTpNode(FlexrayTpNode object) {
            return TransportprotocolsAdapterFactory.this.createFlexrayTpNodeAdapter();
        }

        @Override
        public Adapter caseLinTpChannel(LinTpChannel object) {
            return TransportprotocolsAdapterFactory.this.createLinTpChannelAdapter();
        }

        @Override
        public Adapter caseLinTpNode(LinTpNode object) {
            return TransportprotocolsAdapterFactory.this.createLinTpNodeAdapter();
        }

        @Override
        public Adapter caseTpChannel(TpChannel object) {
            return TransportprotocolsAdapterFactory.this.createTpChannelAdapter();
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
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TransportprotocolsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TransportprotocolsAdapterFactory.this.createIdentifiableAdapter();
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

    public Adapter createCanTpConnectionChannelAdapter() {
        return null;
    }

    public Adapter createCanTpNodeAdapter() {
        return null;
    }

    public Adapter createTpNodeAdapter() {
        return null;
    }

    public Adapter createTpAddressAdapter() {
        return null;
    }

    public Adapter createFlexrayIsoTpConnectionAdapter() {
        return null;
    }

    public Adapter createFlexrayIsoTpPduPoolAdapter() {
        return null;
    }

    public Adapter createFlexrayIsoTpNodeAdapter() {
        return null;
    }

    public Adapter createFlexrayIsoTpConnectionControlAdapter() {
        return null;
    }

    public Adapter createFlexrayIsoTpEcuAdapter() {
        return null;
    }

    public Adapter createFlexrayTpChannelAdapter() {
        return null;
    }

    public Adapter createFlexRayTpConnectionAdapter() {
        return null;
    }

    public Adapter createFlexrayTpNodeAdapter() {
        return null;
    }

    public Adapter createLinTpChannelAdapter() {
        return null;
    }

    public Adapter createLinTpNodeAdapter() {
        return null;
    }

    public Adapter createTpChannelAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

