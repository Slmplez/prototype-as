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
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.util.ExecutiontimeconstraintSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ExecutiontimeconstraintAdapterFactory
extends AdapterFactoryImpl {
    protected static ExecutiontimeconstraintPackage modelPackage;
    protected ExecutiontimeconstraintSwitch<Adapter> modelSwitch = new ExecutiontimeconstraintSwitch<Adapter>(){

        @Override
        public Adapter caseExecutionTimeConstraint(ExecutionTimeConstraint object) {
            return ExecutiontimeconstraintAdapterFactory.this.createExecutionTimeConstraintAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ExecutiontimeconstraintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ExecutiontimeconstraintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTraceable(Traceable object) {
            return ExecutiontimeconstraintAdapterFactory.this.createTraceableAdapter();
        }

        @Override
        public Adapter caseTimingConstraint(TimingConstraint object) {
            return ExecutiontimeconstraintAdapterFactory.this.createTimingConstraintAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ExecutiontimeconstraintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ExecutiontimeconstraintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ExecutiontimeconstraintPackage.eINSTANCE;
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

    public Adapter createExecutionTimeConstraintAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createTraceableAdapter() {
        return null;
    }

    public Adapter createTimingConstraintAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

