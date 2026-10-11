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
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint.util;

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
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.util.PortprotoypeblueprintSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PortprotoypeblueprintAdapterFactory
extends AdapterFactoryImpl {
    protected static PortprotoypeblueprintPackage modelPackage;
    protected PortprotoypeblueprintSwitch<Adapter> modelSwitch = new PortprotoypeblueprintSwitch<Adapter>(){

        @Override
        public Adapter casePortPrototypeBlueprint(PortPrototypeBlueprint object) {
            return PortprotoypeblueprintAdapterFactory.this.createPortPrototypeBlueprintAdapter();
        }

        @Override
        public Adapter casePortPrototypeBlueprintInitValue(PortPrototypeBlueprintInitValue object) {
            return PortprotoypeblueprintAdapterFactory.this.createPortPrototypeBlueprintInitValueAdapter();
        }

        @Override
        public Adapter casePortPrototypeBlueprintMapping(PortPrototypeBlueprintMapping object) {
            return PortprotoypeblueprintAdapterFactory.this.createPortPrototypeBlueprintMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PortprotoypeblueprintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PortprotoypeblueprintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return PortprotoypeblueprintAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return PortprotoypeblueprintAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return PortprotoypeblueprintAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return PortprotoypeblueprintAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return PortprotoypeblueprintAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return PortprotoypeblueprintAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return PortprotoypeblueprintAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return PortprotoypeblueprintAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return PortprotoypeblueprintAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return PortprotoypeblueprintAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return PortprotoypeblueprintAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return PortprotoypeblueprintAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return PortprotoypeblueprintAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintMapping(AtpBlueprintMapping object) {
            return PortprotoypeblueprintAdapterFactory.this.createAtpBlueprintMappingAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PortprotoypeblueprintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PortprotoypeblueprintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PortprotoypeblueprintPackage.eINSTANCE;
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

    public Adapter createPortPrototypeBlueprintAdapter() {
        return null;
    }

    public Adapter createPortPrototypeBlueprintInitValueAdapter() {
        return null;
    }

    public Adapter createPortPrototypeBlueprintMappingAdapter() {
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

    public Adapter createAtpBlueprintAdapter() {
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

    public Adapter createAtpBlueprintMappingAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

