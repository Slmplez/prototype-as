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
package autosar21.system.communicationprotocol.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.util.CommunicationprotocolSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CommunicationprotocolAdapterFactory
extends AdapterFactoryImpl {
    protected static CommunicationprotocolPackage modelPackage;
    protected CommunicationprotocolSwitch<Adapter> modelSwitch = new CommunicationprotocolSwitch<Adapter>(){

        @Override
        public Adapter caseCommProtocolElement(CommProtocolElement object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolElementAdapter();
        }

        @Override
        public Adapter caseCommProtocolFrameRole(CommProtocolFrameRole object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolFrameRoleAdapter();
        }

        @Override
        public Adapter caseCommProtocolSignalGroupRole(CommProtocolSignalGroupRole object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolSignalGroupRoleAdapter();
        }

        @Override
        public Adapter caseCommProtocolSignalRole(CommProtocolSignalRole object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolSignalRoleAdapter();
        }

        @Override
        public Adapter caseCommProtocolType(CommProtocolType object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolTypeAdapter();
        }

        @Override
        public Adapter caseCommProtocolInstance(CommProtocolInstance object) {
            return CommunicationprotocolAdapterFactory.this.createCommProtocolInstanceAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CommunicationprotocolAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CommunicationprotocolAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CommunicationprotocolAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CommunicationprotocolAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CommunicationprotocolAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CommunicationprotocolAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CommunicationprotocolAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return CommunicationprotocolAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CommunicationprotocolAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CommunicationprotocolAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CommunicationprotocolAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CommunicationprotocolPackage.eINSTANCE;
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

    public Adapter createCommProtocolElementAdapter() {
        return null;
    }

    public Adapter createCommProtocolFrameRoleAdapter() {
        return null;
    }

    public Adapter createCommProtocolSignalGroupRoleAdapter() {
        return null;
    }

    public Adapter createCommProtocolSignalRoleAdapter() {
        return null;
    }

    public Adapter createCommProtocolTypeAdapter() {
        return null;
    }

    public Adapter createCommProtocolInstanceAdapter() {
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

