/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gsystem.GSystem
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
import autosar40.system.util.SystemSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gsystem.GSystem;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SystemAdapterFactory
extends AdapterFactoryImpl {
    protected static SystemPackage modelPackage;
    protected SystemSwitch<Adapter> modelSwitch = new SystemSwitch<Adapter>(){

        @Override
        public Adapter caseRootSwCompositionPrototype(RootSwCompositionPrototype object) {
            return SystemAdapterFactory.this.createRootSwCompositionPrototypeAdapter();
        }

        @Override
        public Adapter caseSystem(System object) {
            return SystemAdapterFactory.this.createSystemAdapter();
        }

        @Override
        public Adapter caseSystemMapping(SystemMapping object) {
            return SystemAdapterFactory.this.createSystemMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SystemAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SystemAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SystemAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return SystemAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return SystemAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SystemAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SystemAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return SystemAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return SystemAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return SystemAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SystemAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SystemAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SystemAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return SystemAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return SystemAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGSystem(GSystem object) {
            return SystemAdapterFactory.this.createGSystemAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SystemAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SystemAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SystemPackage.eINSTANCE;
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

    public Adapter createRootSwCompositionPrototypeAdapter() {
        return null;
    }

    public Adapter createSystemAdapter() {
        return null;
    }

    public Adapter createSystemMappingAdapter() {
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

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
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

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createGSystemAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

