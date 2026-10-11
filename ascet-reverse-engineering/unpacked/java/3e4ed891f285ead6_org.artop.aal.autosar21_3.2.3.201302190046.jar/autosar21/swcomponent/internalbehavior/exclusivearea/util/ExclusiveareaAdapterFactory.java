/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.exclusivearea.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.util.ExclusiveareaSwitch;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ExclusiveareaAdapterFactory
extends AdapterFactoryImpl {
    protected static ExclusiveareaPackage modelPackage;
    protected ExclusiveareaSwitch<Adapter> modelSwitch = new ExclusiveareaSwitch<Adapter>(){

        @Override
        public Adapter caseRunnableEntityCanEnterExclusiveArea(RunnableEntityCanEnterExclusiveArea object) {
            return ExclusiveareaAdapterFactory.this.createRunnableEntityCanEnterExclusiveAreaAdapter();
        }

        @Override
        public Adapter caseRunnableEntityRunsInExclusiveArea(RunnableEntityRunsInExclusiveArea object) {
            return ExclusiveareaAdapterFactory.this.createRunnableEntityRunsInExclusiveAreaAdapter();
        }

        @Override
        public Adapter caseExclusiveArea(ExclusiveArea object) {
            return ExclusiveareaAdapterFactory.this.createExclusiveAreaAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ExclusiveareaAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ExclusiveareaAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ExclusiveareaAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ExclusiveareaAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ExclusiveareaAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGExclusiveArea(GExclusiveArea object) {
            return ExclusiveareaAdapterFactory.this.createGExclusiveAreaAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ExclusiveareaAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ExclusiveareaAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ExclusiveareaPackage.eINSTANCE;
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

    public Adapter createRunnableEntityCanEnterExclusiveAreaAdapter() {
        return null;
    }

    public Adapter createRunnableEntityRunsInExclusiveAreaAdapter() {
        return null;
    }

    public Adapter createExclusiveAreaAdapter() {
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

    public Adapter createGExclusiveAreaAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

