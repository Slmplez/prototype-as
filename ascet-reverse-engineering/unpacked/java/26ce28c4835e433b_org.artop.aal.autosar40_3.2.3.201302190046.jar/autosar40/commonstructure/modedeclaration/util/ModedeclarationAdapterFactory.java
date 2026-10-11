/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.modedeclaration.util;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeMapping;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototypeRefConditional;
import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.modedeclaration.util.ModedeclarationSwitch;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ModedeclarationAdapterFactory
extends AdapterFactoryImpl {
    protected static ModedeclarationPackage modelPackage;
    protected ModedeclarationSwitch<Adapter> modelSwitch = new ModedeclarationSwitch<Adapter>(){

        @Override
        public Adapter caseModeDeclaration(ModeDeclaration object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationAdapter();
        }

        @Override
        public Adapter caseModeDeclarationGroup(ModeDeclarationGroup object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationGroupAdapter();
        }

        @Override
        public Adapter caseModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseModeDeclarationGroupPrototypeMapping(ModeDeclarationGroupPrototypeMapping object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationGroupPrototypeMappingAdapter();
        }

        @Override
        public Adapter caseModeDeclarationGroupPrototypeRefConditional(ModeDeclarationGroupPrototypeRefConditional object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationGroupPrototypeRefConditionalAdapter();
        }

        @Override
        public Adapter caseModeRequestTypeMap(ModeRequestTypeMap object) {
            return ModedeclarationAdapterFactory.this.createModeRequestTypeMapAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ModedeclarationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ModedeclarationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ModedeclarationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ModedeclarationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ModedeclarationAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ModedeclarationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ModedeclarationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return ModedeclarationAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return ModedeclarationAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return ModedeclarationAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGModeDeclaration(GModeDeclaration object) {
            return ModedeclarationAdapterFactory.this.createGModeDeclarationAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return ModedeclarationAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ModedeclarationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ModedeclarationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ModedeclarationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return ModedeclarationAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return ModedeclarationAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return ModedeclarationAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGModeDeclarationGroup(GModeDeclarationGroup object) {
            return ModedeclarationAdapterFactory.this.createGModeDeclarationGroupAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return ModedeclarationAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
            return ModedeclarationAdapterFactory.this.createGModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ModedeclarationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ModedeclarationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ModedeclarationPackage.eINSTANCE;
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

    public Adapter createModeDeclarationAdapter() {
        return null;
    }

    public Adapter createModeDeclarationGroupAdapter() {
        return null;
    }

    public Adapter createModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createModeDeclarationGroupPrototypeMappingAdapter() {
        return null;
    }

    public Adapter createModeDeclarationGroupPrototypeRefConditionalAdapter() {
        return null;
    }

    public Adapter createModeRequestTypeMapAdapter() {
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

    public Adapter createGModeDeclarationAdapter() {
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

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationGroupAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

