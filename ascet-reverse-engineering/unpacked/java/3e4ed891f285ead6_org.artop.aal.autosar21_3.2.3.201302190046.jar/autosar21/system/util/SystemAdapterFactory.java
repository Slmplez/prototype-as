/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gsystem.GSystem
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.GatewayInstance;
import autosar21.system.SoftwareComposition;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.util.SystemSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gsystem.GSystem;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SystemAdapterFactory
extends AdapterFactoryImpl {
    protected static SystemPackage modelPackage;
    protected SystemSwitch<Adapter> modelSwitch = new SystemSwitch<Adapter>(){

        @Override
        public Adapter caseSystemTopologyInstance(SystemTopologyInstance object) {
            return SystemAdapterFactory.this.createSystemTopologyInstanceAdapter();
        }

        @Override
        public Adapter caseCommunicationMatrixInstance(CommunicationMatrixInstance object) {
            return SystemAdapterFactory.this.createCommunicationMatrixInstanceAdapter();
        }

        @Override
        public Adapter caseGatewayInstance(GatewayInstance object) {
            return SystemAdapterFactory.this.createGatewayInstanceAdapter();
        }

        @Override
        public Adapter caseSystem(System object) {
            return SystemAdapterFactory.this.createSystemAdapter();
        }

        @Override
        public Adapter caseSystemCommunication(SystemCommunication object) {
            return SystemAdapterFactory.this.createSystemCommunicationAdapter();
        }

        @Override
        public Adapter caseSystemMapping(SystemMapping object) {
            return SystemAdapterFactory.this.createSystemMappingAdapter();
        }

        @Override
        public Adapter caseSoftwareComposition(SoftwareComposition object) {
            return SystemAdapterFactory.this.createSoftwareCompositionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SystemAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SystemAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SystemAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SystemAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SystemAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SystemAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SystemAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return SystemAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SystemAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGSystem(GSystem object) {
            return SystemAdapterFactory.this.createGSystemAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SystemAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SystemAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SystemPackage.eINSTANCE;
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

    public Adapter createSystemTopologyInstanceAdapter() {
        return null;
    }

    public Adapter createCommunicationMatrixInstanceAdapter() {
        return null;
    }

    public Adapter createGatewayInstanceAdapter() {
        return null;
    }

    public Adapter createSystemAdapter() {
        return null;
    }

    public Adapter createSystemCommunicationAdapter() {
        return null;
    }

    public Adapter createSystemMappingAdapter() {
        return null;
    }

    public Adapter createSoftwareCompositionAdapter() {
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

    public Adapter createGSystemAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

