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
package autosar40.commonstructure.swcbswmapping.util;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swcbswmapping.util.SwcbswmappingSwitch;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SwcbswmappingAdapterFactory
extends AdapterFactoryImpl {
    protected static SwcbswmappingPackage modelPackage;
    protected SwcbswmappingSwitch<Adapter> modelSwitch = new SwcbswmappingSwitch<Adapter>(){

        @Override
        public Adapter caseSwcBswRunnableMapping(SwcBswRunnableMapping object) {
            return SwcbswmappingAdapterFactory.this.createSwcBswRunnableMappingAdapter();
        }

        @Override
        public Adapter caseSwcBswSynchronizedModeGroupPrototype(SwcBswSynchronizedModeGroupPrototype object) {
            return SwcbswmappingAdapterFactory.this.createSwcBswSynchronizedModeGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseSwcBswSynchronizedTrigger(SwcBswSynchronizedTrigger object) {
            return SwcbswmappingAdapterFactory.this.createSwcBswSynchronizedTriggerAdapter();
        }

        @Override
        public Adapter caseSwcBswMapping(SwcBswMapping object) {
            return SwcbswmappingAdapterFactory.this.createSwcBswMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SwcbswmappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SwcbswmappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SwcbswmappingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return SwcbswmappingAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return SwcbswmappingAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SwcbswmappingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SwcbswmappingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return SwcbswmappingAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SwcbswmappingAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SwcbswmappingAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SwcbswmappingAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return SwcbswmappingAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return SwcbswmappingAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return SwcbswmappingAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SwcbswmappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SwcbswmappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SwcbswmappingPackage.eINSTANCE;
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

    public Adapter createSwcBswRunnableMappingAdapter() {
        return null;
    }

    public Adapter createSwcBswSynchronizedModeGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createSwcBswSynchronizedTriggerAdapter() {
        return null;
    }

    public Adapter createSwcBswMappingAdapter() {
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

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

