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
package autosar40.commonstructure.triggerdeclaration.util;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.commonstructure.triggerdeclaration.util.TriggerdeclarationSwitch;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
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

public class TriggerdeclarationAdapterFactory
extends AdapterFactoryImpl {
    protected static TriggerdeclarationPackage modelPackage;
    protected TriggerdeclarationSwitch<Adapter> modelSwitch = new TriggerdeclarationSwitch<Adapter>(){

        @Override
        public Adapter caseTrigger(Trigger object) {
            return TriggerdeclarationAdapterFactory.this.createTriggerAdapter();
        }

        @Override
        public Adapter caseTriggerMapping(TriggerMapping object) {
            return TriggerdeclarationAdapterFactory.this.createTriggerMappingAdapter();
        }

        @Override
        public Adapter caseTriggerRefConditional(TriggerRefConditional object) {
            return TriggerdeclarationAdapterFactory.this.createTriggerRefConditionalAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TriggerdeclarationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TriggerdeclarationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TriggerdeclarationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TriggerdeclarationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TriggerdeclarationAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TriggerdeclarationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TriggerdeclarationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return TriggerdeclarationAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return TriggerdeclarationAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return TriggerdeclarationAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TriggerdeclarationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TriggerdeclarationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TriggerdeclarationPackage.eINSTANCE;
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

    public Adapter createTriggerAdapter() {
        return null;
    }

    public Adapter createTriggerMappingAdapter() {
        return null;
    }

    public Adapter createTriggerRefConditionalAdapter() {
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

