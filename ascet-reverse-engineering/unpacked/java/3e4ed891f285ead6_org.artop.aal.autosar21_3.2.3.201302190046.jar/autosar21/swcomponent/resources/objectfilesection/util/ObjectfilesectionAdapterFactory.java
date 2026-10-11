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
package autosar21.swcomponent.resources.objectfilesection.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import autosar21.swcomponent.resources.objectfilesection.util.ObjectfilesectionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ObjectfilesectionAdapterFactory
extends AdapterFactoryImpl {
    protected static ObjectfilesectionPackage modelPackage;
    protected ObjectfilesectionSwitch<Adapter> modelSwitch = new ObjectfilesectionSwitch<Adapter>(){

        @Override
        public Adapter caseObjectFileSection(ObjectFileSection object) {
            return ObjectfilesectionAdapterFactory.this.createObjectFileSectionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ObjectfilesectionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ObjectfilesectionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ObjectfilesectionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ObjectfilesectionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ObjectfilesectionAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ObjectfilesectionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ObjectfilesectionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ObjectfilesectionPackage.eINSTANCE;
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

    public Adapter createObjectFileSectionAdapter() {
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

