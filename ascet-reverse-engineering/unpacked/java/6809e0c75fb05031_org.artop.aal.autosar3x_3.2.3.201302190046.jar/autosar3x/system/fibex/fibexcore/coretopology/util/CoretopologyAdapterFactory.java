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
package autosar3x.system.fibex.fibexcore.coretopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.fibex.fibexcore.coretopology.util.CoretopologySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CoretopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static CoretopologyPackage modelPackage;
    protected CoretopologySwitch<Adapter> modelSwitch = new CoretopologySwitch<Adapter>(){

        @Override
        public Adapter caseCommConnectorPort(CommConnectorPort object) {
            return CoretopologyAdapterFactory.this.createCommConnectorPortAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return CoretopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return CoretopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return CoretopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return CoretopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseEcuInstance(EcuInstance object) {
            return CoretopologyAdapterFactory.this.createEcuInstanceAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CoretopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CoretopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CoretopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CoretopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CoretopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CoretopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CoretopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return CoretopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CoretopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CoretopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CoretopologyPackage.eINSTANCE;
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

    public Adapter createCommConnectorPortAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createEcuInstanceAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

