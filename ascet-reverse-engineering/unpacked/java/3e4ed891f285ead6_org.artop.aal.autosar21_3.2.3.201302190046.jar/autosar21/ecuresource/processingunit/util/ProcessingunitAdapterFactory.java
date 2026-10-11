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
package autosar21.ecuresource.processingunit.util;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar21.ecuresource.processingunit.InterruptHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.SupportedDataType;
import autosar21.ecuresource.processingunit.util.ProcessingunitSwitch;
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

public class ProcessingunitAdapterFactory
extends AdapterFactoryImpl {
    protected static ProcessingunitPackage modelPackage;
    protected ProcessingunitSwitch<Adapter> modelSwitch = new ProcessingunitSwitch<Adapter>(){

        @Override
        public Adapter caseInterruptConsumeHWPort(InterruptConsumeHWPort object) {
            return ProcessingunitAdapterFactory.this.createInterruptConsumeHWPortAdapter();
        }

        @Override
        public Adapter caseInterruptHWPort(InterruptHWPort object) {
            return ProcessingunitAdapterFactory.this.createInterruptHWPortAdapter();
        }

        @Override
        public Adapter caseMPU(MPU object) {
            return ProcessingunitAdapterFactory.this.createMPUAdapter();
        }

        @Override
        public Adapter caseProcessingUnit(ProcessingUnit object) {
            return ProcessingunitAdapterFactory.this.createProcessingUnitAdapter();
        }

        @Override
        public Adapter caseRegister(Register object) {
            return ProcessingunitAdapterFactory.this.createRegisterAdapter();
        }

        @Override
        public Adapter caseSupportedDataType(SupportedDataType object) {
            return ProcessingunitAdapterFactory.this.createSupportedDataTypeAdapter();
        }

        @Override
        public Adapter caseInterruptProduceHWPort(InterruptProduceHWPort object) {
            return ProcessingunitAdapterFactory.this.createInterruptProduceHWPortAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ProcessingunitAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ProcessingunitAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ProcessingunitAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ProcessingunitAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ProcessingunitAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseHWPort(HWPort object) {
            return ProcessingunitAdapterFactory.this.createHWPortAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ProcessingunitAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ProcessingunitAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return ProcessingunitAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ProcessingunitAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return ProcessingunitAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ProcessingunitAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ProcessingunitAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ProcessingunitPackage.eINSTANCE;
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

    public Adapter createInterruptConsumeHWPortAdapter() {
        return null;
    }

    public Adapter createInterruptHWPortAdapter() {
        return null;
    }

    public Adapter createMPUAdapter() {
        return null;
    }

    public Adapter createProcessingUnitAdapter() {
        return null;
    }

    public Adapter createRegisterAdapter() {
        return null;
    }

    public Adapter createSupportedDataTypeAdapter() {
        return null;
    }

    public Adapter createInterruptProduceHWPortAdapter() {
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

    public Adapter createHWPortAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

