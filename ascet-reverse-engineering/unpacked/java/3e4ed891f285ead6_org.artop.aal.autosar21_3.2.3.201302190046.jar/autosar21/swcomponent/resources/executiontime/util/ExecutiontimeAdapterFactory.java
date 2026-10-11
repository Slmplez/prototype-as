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
package autosar21.swcomponent.resources.executiontime.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MeasuredExecutionTime;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.RoughEstimateOfExecutionTime;
import autosar21.swcomponent.resources.executiontime.SimulatedExecutionTime;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.executiontime.WorstCaseExecutionTime;
import autosar21.swcomponent.resources.executiontime.util.ExecutiontimeSwitch;
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
        public Adapter caseSoftwareContext(SoftwareContext object) {
            return ExecutiontimeAdapterFactory.this.createSoftwareContextAdapter();
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
        public Adapter caseHardwareConfiguration(HardwareConfiguration object) {
            return ExecutiontimeAdapterFactory.this.createHardwareConfigurationAdapter();
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

    public Adapter createSoftwareContextAdapter() {
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

    public Adapter createHardwareConfigurationAdapter() {
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

