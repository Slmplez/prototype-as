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
package autosar21.ecuresource.memory.util;

import autosar21.ecuresource.AssemblyHWConnection;
import autosar21.ecuresource.DelegationHWConnection;
import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedMemorySegment;
import autosar21.ecuresource.memory.ProvidedNVMemorySegment;
import autosar21.ecuresource.memory.util.MemorySwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class MemoryAdapterFactory
extends AdapterFactoryImpl {
    protected static MemoryPackage modelPackage;
    protected MemorySwitch<Adapter> modelSwitch = new MemorySwitch<Adapter>(){

        @Override
        public Adapter caseMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection object) {
            return MemoryAdapterFactory.this.createMemoryMappedAssemblyHWConnectionAdapter();
        }

        @Override
        public Adapter caseMemoryMappedDelegationHWConnection(MemoryMappedDelegationHWConnection object) {
            return MemoryAdapterFactory.this.createMemoryMappedDelegationHWConnectionAdapter();
        }

        @Override
        public Adapter caseProvidedMemorySegment(ProvidedMemorySegment object) {
            return MemoryAdapterFactory.this.createProvidedMemorySegmentAdapter();
        }

        @Override
        public Adapter caseProvidedNVMemorySegment(ProvidedNVMemorySegment object) {
            return MemoryAdapterFactory.this.createProvidedNVMemorySegmentAdapter();
        }

        @Override
        public Adapter caseMemoryMappedHWPort(MemoryMappedHWPort object) {
            return MemoryAdapterFactory.this.createMemoryMappedHWPortAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MemoryAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MemoryAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return MemoryAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return MemoryAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return MemoryAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseHWConnection(HWConnection object) {
            return MemoryAdapterFactory.this.createHWConnectionAdapter();
        }

        @Override
        public Adapter caseAssemblyHWConnection(AssemblyHWConnection object) {
            return MemoryAdapterFactory.this.createAssemblyHWConnectionAdapter();
        }

        @Override
        public Adapter caseDelegationHWConnection(DelegationHWConnection object) {
            return MemoryAdapterFactory.this.createDelegationHWConnectionAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return MemoryAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return MemoryAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return MemoryAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return MemoryAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return MemoryAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter caseHWPort(HWPort object) {
            return MemoryAdapterFactory.this.createHWPortAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MemoryAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MemoryAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MemoryPackage.eINSTANCE;
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

    public Adapter createMemoryMappedAssemblyHWConnectionAdapter() {
        return null;
    }

    public Adapter createMemoryMappedDelegationHWConnectionAdapter() {
        return null;
    }

    public Adapter createProvidedMemorySegmentAdapter() {
        return null;
    }

    public Adapter createProvidedNVMemorySegmentAdapter() {
        return null;
    }

    public Adapter createMemoryMappedHWPortAdapter() {
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

    public Adapter createHWConnectionAdapter() {
        return null;
    }

    public Adapter createAssemblyHWConnectionAdapter() {
        return null;
    }

    public Adapter createDelegationHWConnectionAdapter() {
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

    public Adapter createHWElementAdapter() {
        return null;
    }

    public Adapter createHWPortAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

