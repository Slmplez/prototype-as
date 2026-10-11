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
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.util.OffsetconstraintSwitch;
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

public class OffsetconstraintAdapterFactory
extends AdapterFactoryImpl {
    protected static OffsetconstraintPackage modelPackage;
    protected OffsetconstraintSwitch<Adapter> modelSwitch = new OffsetconstraintSwitch<Adapter>(){

        @Override
        public Adapter caseOffsetTimingConstraint(OffsetTimingConstraint object) {
            return OffsetconstraintAdapterFactory.this.createOffsetTimingConstraintAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return OffsetconstraintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return OffsetconstraintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return OffsetconstraintAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return OffsetconstraintAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return OffsetconstraintAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return OffsetconstraintAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return OffsetconstraintAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTraceable(Traceable object) {
            return OffsetconstraintAdapterFactory.this.createTraceableAdapter();
        }

        @Override
        public Adapter caseTimingConstraint(TimingConstraint object) {
            return OffsetconstraintAdapterFactory.this.createTimingConstraintAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return OffsetconstraintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public OffsetconstraintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = OffsetconstraintPackage.eINSTANCE;
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

    public Adapter createOffsetTimingConstraintAdapter() {
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

