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
package autosar21.system.systemsignal.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemSignal;
import autosar21.system.systemsignal.SystemSignalGroup;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.util.SystemsignalSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SystemsignalAdapterFactory
extends AdapterFactoryImpl {
    protected static SystemsignalPackage modelPackage;
    protected SystemsignalSwitch<Adapter> modelSwitch = new SystemsignalSwitch<Adapter>(){

        @Override
        public Adapter caseClusterSignal(ClusterSignal object) {
            return SystemsignalAdapterFactory.this.createClusterSignalAdapter();
        }

        @Override
        public Adapter caseClusterSignalTransmitter(ClusterSignalTransmitter object) {
            return SystemsignalAdapterFactory.this.createClusterSignalTransmitterAdapter();
        }

        @Override
        public Adapter caseClusterSignalReceiver(ClusterSignalReceiver object) {
            return SystemsignalAdapterFactory.this.createClusterSignalReceiverAdapter();
        }

        @Override
        public Adapter caseSystemSignalGroup(SystemSignalGroup object) {
            return SystemsignalAdapterFactory.this.createSystemSignalGroupAdapter();
        }

        @Override
        public Adapter caseSystemSignal(SystemSignal object) {
            return SystemsignalAdapterFactory.this.createSystemSignalAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SystemsignalAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SystemsignalAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SystemsignalAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SystemsignalAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SystemsignalAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SystemsignalAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SystemsignalAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return SystemsignalAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SystemsignalAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SystemsignalAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SystemsignalAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SystemsignalPackage.eINSTANCE;
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

    public Adapter createClusterSignalAdapter() {
        return null;
    }

    public Adapter createClusterSignalTransmitterAdapter() {
        return null;
    }

    public Adapter createClusterSignalReceiverAdapter() {
        return null;
    }

    public Adapter createSystemSignalGroupAdapter() {
        return null;
    }

    public Adapter createSystemSignalAdapter() {
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

