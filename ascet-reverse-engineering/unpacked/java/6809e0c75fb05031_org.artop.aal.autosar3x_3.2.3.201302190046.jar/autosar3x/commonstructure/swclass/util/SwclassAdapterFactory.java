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
package autosar3x.commonstructure.swclass.util;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwClassAttrImpl;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.commonstructure.swclass.SwServicePrototype;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.commonstructure.swclass.util.SwclassSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SwclassAdapterFactory
extends AdapterFactoryImpl {
    protected static SwclassPackage modelPackage;
    protected SwclassSwitch<Adapter> modelSwitch = new SwclassSwitch<Adapter>(){

        @Override
        public Adapter caseSwCalprmImpl(SwCalprmImpl object) {
            return SwclassAdapterFactory.this.createSwCalprmImplAdapter();
        }

        @Override
        public Adapter caseSwCalprmPrototype(SwCalprmPrototype object) {
            return SwclassAdapterFactory.this.createSwCalprmPrototypeAdapter();
        }

        @Override
        public Adapter caseSwClassAttr(SwClassAttr object) {
            return SwclassAdapterFactory.this.createSwClassAttrAdapter();
        }

        @Override
        public Adapter caseSwVariablePrototype(SwVariablePrototype object) {
            return SwclassAdapterFactory.this.createSwVariablePrototypeAdapter();
        }

        @Override
        public Adapter caseSwClassPrototype(SwClassPrototype object) {
            return SwclassAdapterFactory.this.createSwClassPrototypeAdapter();
        }

        @Override
        public Adapter caseSwServicePrototype(SwServicePrototype object) {
            return SwclassAdapterFactory.this.createSwServicePrototypeAdapter();
        }

        @Override
        public Adapter caseSwClassAttrImpl(SwClassAttrImpl object) {
            return SwclassAdapterFactory.this.createSwClassAttrImplAdapter();
        }

        @Override
        public Adapter caseSwClassImpl(SwClassImpl object) {
            return SwclassAdapterFactory.this.createSwClassImplAdapter();
        }

        @Override
        public Adapter caseSwVariableImpl(SwVariableImpl object) {
            return SwclassAdapterFactory.this.createSwVariableImplAdapter();
        }

        @Override
        public Adapter caseSwClassAttrInstanceImpl(SwClassAttrInstanceImpl object) {
            return SwclassAdapterFactory.this.createSwClassAttrInstanceImplAdapter();
        }

        @Override
        public Adapter caseSwClassInstance(SwClassInstance object) {
            return SwclassAdapterFactory.this.createSwClassInstanceAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SwclassAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SwclassAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SwclassAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SwclassAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SwclassAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SwclassAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SwclassAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SwclassAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SwclassAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SwclassAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SwclassPackage.eINSTANCE;
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

    public Adapter createSwCalprmImplAdapter() {
        return null;
    }

    public Adapter createSwCalprmPrototypeAdapter() {
        return null;
    }

    public Adapter createSwClassAttrAdapter() {
        return null;
    }

    public Adapter createSwVariablePrototypeAdapter() {
        return null;
    }

    public Adapter createSwClassPrototypeAdapter() {
        return null;
    }

    public Adapter createSwServicePrototypeAdapter() {
        return null;
    }

    public Adapter createSwClassAttrImplAdapter() {
        return null;
    }

    public Adapter createSwClassImplAdapter() {
        return null;
    }

    public Adapter createSwVariableImplAdapter() {
        return null;
    }

    public Adapter createSwClassAttrInstanceImplAdapter() {
        return null;
    }

    public Adapter createSwClassInstanceAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

