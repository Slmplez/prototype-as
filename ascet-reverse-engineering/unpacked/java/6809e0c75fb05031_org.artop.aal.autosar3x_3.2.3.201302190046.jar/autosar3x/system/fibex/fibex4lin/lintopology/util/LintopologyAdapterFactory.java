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
package autosar3x.system.fibex.fibex4lin.lintopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar3x.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.util.LintopologySwitch;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class LintopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static LintopologyPackage modelPackage;
    protected LintopologySwitch<Adapter> modelSwitch = new LintopologySwitch<Adapter>(){

        @Override
        public Adapter caseLinCluster(LinCluster object) {
            return LintopologyAdapterFactory.this.createLinClusterAdapter();
        }

        @Override
        public Adapter caseLinMaster(LinMaster object) {
            return LintopologyAdapterFactory.this.createLinMasterAdapter();
        }

        @Override
        public Adapter caseLinSlave(LinSlave object) {
            return LintopologyAdapterFactory.this.createLinSlaveAdapter();
        }

        @Override
        public Adapter caseLinCommunicationController(LinCommunicationController object) {
            return LintopologyAdapterFactory.this.createLinCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return LintopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return LintopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return LintopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return LintopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return LintopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return LintopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return LintopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return LintopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return LintopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return LintopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return LintopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public LintopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = LintopologyPackage.eINSTANCE;
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

    public Adapter createLinClusterAdapter() {
        return null;
    }

    public Adapter createLinMasterAdapter() {
        return null;
    }

    public Adapter createLinSlaveAdapter() {
        return null;
    }

    public Adapter createLinCommunicationControllerAdapter() {
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

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

