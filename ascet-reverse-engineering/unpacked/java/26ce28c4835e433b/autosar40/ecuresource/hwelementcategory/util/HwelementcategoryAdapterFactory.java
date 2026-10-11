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
package autosar40.ecuresource.hwelementcategory.util;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.ecuresource.hwelementcategory.util.HwelementcategorySwitch;
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

public class HwelementcategoryAdapterFactory
extends AdapterFactoryImpl {
    protected static HwelementcategoryPackage modelPackage;
    protected HwelementcategorySwitch<Adapter> modelSwitch = new HwelementcategorySwitch<Adapter>(){

        @Override
        public Adapter caseHwAttributeDef(HwAttributeDef object) {
            return HwelementcategoryAdapterFactory.this.createHwAttributeDefAdapter();
        }

        @Override
        public Adapter caseHwAttributeLiteralDef(HwAttributeLiteralDef object) {
            return HwelementcategoryAdapterFactory.this.createHwAttributeLiteralDefAdapter();
        }

        @Override
        public Adapter caseHwAttributeValue(HwAttributeValue object) {
            return HwelementcategoryAdapterFactory.this.createHwAttributeValueAdapter();
        }

        @Override
        public Adapter caseHwCategory(HwCategory object) {
            return HwelementcategoryAdapterFactory.this.createHwCategoryAdapter();
        }

        @Override
        public Adapter caseHwType(HwType object) {
            return HwelementcategoryAdapterFactory.this.createHwTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return HwelementcategoryAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return HwelementcategoryAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return HwelementcategoryAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return HwelementcategoryAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return HwelementcategoryAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return HwelementcategoryAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return HwelementcategoryAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return HwelementcategoryAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return HwelementcategoryAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return HwelementcategoryAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return HwelementcategoryAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHwDescriptionEntity(HwDescriptionEntity object) {
            return HwelementcategoryAdapterFactory.this.createHwDescriptionEntityAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return HwelementcategoryAdapterFactory.this.createEObjectAdapter();
        }
    };

    public HwelementcategoryAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = HwelementcategoryPackage.eINSTANCE;
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

    public Adapter createHwAttributeDefAdapter() {
        return null;
    }

    public Adapter createHwAttributeLiteralDefAdapter() {
        return null;
    }

    public Adapter createHwAttributeValueAdapter() {
        return null;
    }

    public Adapter createHwCategoryAdapter() {
        return null;
    }

    public Adapter createHwTypeAdapter() {
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

    public Adapter createHwDescriptionEntityAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

