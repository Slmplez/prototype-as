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
package autosar3x.commonstructure.resourceconsumption.heapusage.util;

import autosar3x.commonstructure.resourceconsumption.heapusage.HeapUsage;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar3x.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar3x.commonstructure.resourceconsumption.heapusage.RoughEstimateHeapUsage;
import autosar3x.commonstructure.resourceconsumption.heapusage.WorstCaseHeapUsage;
import autosar3x.commonstructure.resourceconsumption.heapusage.util.HeapusageSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class HeapusageAdapterFactory
extends AdapterFactoryImpl {
    protected static HeapusagePackage modelPackage;
    protected HeapusageSwitch<Adapter> modelSwitch = new HeapusageSwitch<Adapter>(){

        @Override
        public Adapter caseHeapUsage(HeapUsage object) {
            return HeapusageAdapterFactory.this.createHeapUsageAdapter();
        }

        @Override
        public Adapter caseMeasuredHeapUsage(MeasuredHeapUsage object) {
            return HeapusageAdapterFactory.this.createMeasuredHeapUsageAdapter();
        }

        @Override
        public Adapter caseRoughEstimateHeapUsage(RoughEstimateHeapUsage object) {
            return HeapusageAdapterFactory.this.createRoughEstimateHeapUsageAdapter();
        }

        @Override
        public Adapter caseWorstCaseHeapUsage(WorstCaseHeapUsage object) {
            return HeapusageAdapterFactory.this.createWorstCaseHeapUsageAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return HeapusageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return HeapusageAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return HeapusageAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return HeapusageAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return HeapusageAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return HeapusageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public HeapusageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = HeapusagePackage.eINSTANCE;
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

    public Adapter createHeapUsageAdapter() {
        return null;
    }

    public Adapter createMeasuredHeapUsageAdapter() {
        return null;
    }

    public Adapter createRoughEstimateHeapUsageAdapter() {
        return null;
    }

    public Adapter createWorstCaseHeapUsageAdapter() {
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

