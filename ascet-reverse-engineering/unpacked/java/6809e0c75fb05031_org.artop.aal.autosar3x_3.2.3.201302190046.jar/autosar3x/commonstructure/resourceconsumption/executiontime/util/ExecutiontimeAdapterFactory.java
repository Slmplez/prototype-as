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
package autosar3x.commonstructure.resourceconsumption.executiontime.util;

import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar3x.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.WorstCaseExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.util.ExecutiontimeSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ExecutiontimeAdapterFactory
extends AdapterFactoryImpl {
    protected static ExecutiontimePackage modelPackage;
    protected ExecutiontimeSwitch<Adapter> modelSwitch = new ExecutiontimeSwitch<Adapter>(){

        @Override
        public Adapter caseECUPrototype(ECUPrototype object) {
            return ExecutiontimeAdapterFactory.this.createECUPrototypeAdapter();
        }

        @Override
        public Adapter caseExecutionTime(ExecutionTime object) {
            return ExecutiontimeAdapterFactory.this.createExecutionTimeAdapter();
        }

        @Override
        public Adapter caseMemorySectionLocation(MemorySectionLocation object) {
            return ExecutiontimeAdapterFactory.this.createMemorySectionLocationAdapter();
        }

        @Override
        public Adapter caseMeasuredExecutionTime(MeasuredExecutionTime object) {
            return ExecutiontimeAdapterFactory.this.createMeasuredExecutionTimeAdapter();
        }

        @Override
        public Adapter caseRoughEstimateOfExecutionTime(RoughEstimateOfExecutionTime object) {
            return ExecutiontimeAdapterFactory.this.createRoughEstimateOfExecutionTimeAdapter();
        }

        @Override
        public Adapter caseSimulatedExecutionTime(SimulatedExecutionTime object) {
            return ExecutiontimeAdapterFactory.this.createSimulatedExecutionTimeAdapter();
        }

        @Override
        public Adapter caseWorstCaseExecutionTime(WorstCaseExecutionTime object) {
            return ExecutiontimeAdapterFactory.this.createWorstCaseExecutionTimeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ExecutiontimeAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ExecutiontimeAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ExecutiontimeAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ExecutiontimeAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ExecutiontimeAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ExecutiontimeAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ExecutiontimeAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ExecutiontimePackage.eINSTANCE;
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

    public Adapter createECUPrototypeAdapter() {
        return null;
    }

    public Adapter createExecutionTimeAdapter() {
        return null;
    }

    public Adapter createMemorySectionLocationAdapter() {
        return null;
    }

    public Adapter createMeasuredExecutionTimeAdapter() {
        return null;
    }

    public Adapter createRoughEstimateOfExecutionTimeAdapter() {
        return null;
    }

    public Adapter createSimulatedExecutionTimeAdapter() {
        return null;
    }

    public Adapter createWorstCaseExecutionTimeAdapter() {
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

