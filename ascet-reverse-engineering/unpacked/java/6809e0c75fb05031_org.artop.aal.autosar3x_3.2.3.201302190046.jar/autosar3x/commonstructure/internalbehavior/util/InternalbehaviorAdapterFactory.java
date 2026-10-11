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
package autosar3x.commonstructure.internalbehavior.util;

import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.commonstructure.internalbehavior.util.InternalbehaviorSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static InternalbehaviorPackage modelPackage;
    protected InternalbehaviorSwitch<Adapter> modelSwitch = new InternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseExclusiveArea(ExclusiveArea object) {
            return InternalbehaviorAdapterFactory.this.createExclusiveAreaAdapter();
        }

        @Override
        public Adapter caseExecutableEntity(ExecutableEntity object) {
            return InternalbehaviorAdapterFactory.this.createExecutableEntityAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InternalbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return InternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return InternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return InternalbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGExclusiveArea(GExclusiveArea object) {
            return InternalbehaviorAdapterFactory.this.createGExclusiveAreaAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InternalbehaviorPackage.eINSTANCE;
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

    public Adapter createExclusiveAreaAdapter() {
        return null;
    }

    public Adapter createExecutableEntityAdapter() {
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

