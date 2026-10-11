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
package autosar40.commonstructure.timing.timingconstraint.ageconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeConstraint;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.util.AgeconstraintSwitch;
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

public class AgeconstraintAdapterFactory
extends AdapterFactoryImpl {
    protected static AgeconstraintPackage modelPackage;
    protected AgeconstraintSwitch<Adapter> modelSwitch = new AgeconstraintSwitch<Adapter>(){

        @Override
        public Adapter caseAgeConstraint(AgeConstraint object) {
            return AgeconstraintAdapterFactory.this.createAgeConstraintAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AgeconstraintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AgeconstraintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AgeconstraintAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return AgeconstraintAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return AgeconstraintAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AgeconstraintAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AgeconstraintAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTraceable(Traceable object) {
            return AgeconstraintAdapterFactory.this.createTraceableAdapter();
        }

        @Override
        public Adapter caseTimingConstraint(TimingConstraint object) {
            return AgeconstraintAdapterFactory.this.createTimingConstraintAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AgeconstraintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AgeconstraintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AgeconstraintPackage.eINSTANCE;
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

    public Adapter createAgeConstraintAdapter() {
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

