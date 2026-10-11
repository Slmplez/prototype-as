/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.constants.util;

import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.TextValueSpecification;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.constants.util.ConstantsSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ConstantsAdapterFactory
extends AdapterFactoryImpl {
    protected static ConstantsPackage modelPackage;
    protected ConstantsSwitch<Adapter> modelSwitch = new ConstantsSwitch<Adapter>(){

        @Override
        public Adapter caseApplicationValueSpecification(ApplicationValueSpecification object) {
            return ConstantsAdapterFactory.this.createApplicationValueSpecificationAdapter();
        }

        @Override
        public Adapter caseArrayValueSpecification(ArrayValueSpecification object) {
            return ConstantsAdapterFactory.this.createArrayValueSpecificationAdapter();
        }

        @Override
        public Adapter caseConstantReference(ConstantReference object) {
            return ConstantsAdapterFactory.this.createConstantReferenceAdapter();
        }

        @Override
        public Adapter caseConstantSpecification(ConstantSpecification object) {
            return ConstantsAdapterFactory.this.createConstantSpecificationAdapter();
        }

        @Override
        public Adapter caseConstantSpecificationMapping(ConstantSpecificationMapping object) {
            return ConstantsAdapterFactory.this.createConstantSpecificationMappingAdapter();
        }

        @Override
        public Adapter caseConstantSpecificationMappingSet(ConstantSpecificationMappingSet object) {
            return ConstantsAdapterFactory.this.createConstantSpecificationMappingSetAdapter();
        }

        @Override
        public Adapter caseNumericalValueSpecification(NumericalValueSpecification object) {
            return ConstantsAdapterFactory.this.createNumericalValueSpecificationAdapter();
        }

        @Override
        public Adapter caseRecordValueSpecification(RecordValueSpecification object) {
            return ConstantsAdapterFactory.this.createRecordValueSpecificationAdapter();
        }

        @Override
        public Adapter caseReferenceValueSpecification(ReferenceValueSpecification object) {
            return ConstantsAdapterFactory.this.createReferenceValueSpecificationAdapter();
        }

        @Override
        public Adapter caseTextValueSpecification(TextValueSpecification object) {
            return ConstantsAdapterFactory.this.createTextValueSpecificationAdapter();
        }

        @Override
        public Adapter caseValueSpecification(ValueSpecification object) {
            return ConstantsAdapterFactory.this.createValueSpecificationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ConstantsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ConstantsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGValueSpecification(GValueSpecification object) {
            return ConstantsAdapterFactory.this.createGValueSpecificationAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ConstantsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ConstantsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ConstantsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ConstantsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ConstantsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return ConstantsAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ConstantsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ConstantsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ConstantsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ConstantsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ConstantsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ConstantsPackage.eINSTANCE;
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

    public Adapter createApplicationValueSpecificationAdapter() {
        return null;
    }

    public Adapter createArrayValueSpecificationAdapter() {
        return null;
    }

    public Adapter createConstantReferenceAdapter() {
        return null;
    }

    public Adapter createConstantSpecificationAdapter() {
        return null;
    }

    public Adapter createConstantSpecificationMappingAdapter() {
        return null;
    }

    public Adapter createConstantSpecificationMappingSetAdapter() {
        return null;
    }

    public Adapter createNumericalValueSpecificationAdapter() {
        return null;
    }

    public Adapter createRecordValueSpecificationAdapter() {
        return null;
    }

    public Adapter createReferenceValueSpecificationAdapter() {
        return null;
    }

    public Adapter createTextValueSpecificationAdapter() {
        return null;
    }

    public Adapter createValueSpecificationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGValueSpecificationAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

