/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.implementationdatatypes.util;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.implementationdatatypes.util.ImplementationdatatypesSwitch;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
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
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ImplementationdatatypesAdapterFactory
extends AdapterFactoryImpl {
    protected static ImplementationdatatypesPackage modelPackage;
    protected ImplementationdatatypesSwitch<Adapter> modelSwitch = new ImplementationdatatypesSwitch<Adapter>(){

        @Override
        public Adapter caseImplementationDataType(ImplementationDataType object) {
            return ImplementationdatatypesAdapterFactory.this.createImplementationDataTypeAdapter();
        }

        @Override
        public Adapter caseImplementationDataTypeElement(ImplementationDataTypeElement object) {
            return ImplementationdatatypesAdapterFactory.this.createImplementationDataTypeElementAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ImplementationdatatypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ImplementationdatatypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ImplementationdatatypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ImplementationdatatypesAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ImplementationdatatypesAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ImplementationdatatypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ImplementationdatatypesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return ImplementationdatatypesAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return ImplementationdatatypesAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return ImplementationdatatypesAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ImplementationdatatypesAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ImplementationdatatypesAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ImplementationdatatypesAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return ImplementationdatatypesAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return ImplementationdatatypesAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataType(GAutosarDataType object) {
            return ImplementationdatatypesAdapterFactory.this.createGAutosarDataTypeAdapter();
        }

        @Override
        public Adapter caseAutosarDataType(AutosarDataType object) {
            return ImplementationdatatypesAdapterFactory.this.createAutosarDataTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ImplementationdatatypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ImplementationdatatypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ImplementationdatatypesPackage.eINSTANCE;
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

    public Adapter createImplementationDataTypeAdapter() {
        return null;
    }

    public Adapter createImplementationDataTypeElementAdapter() {
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

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
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

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataTypeAdapter() {
        return null;
    }

    public Adapter createAutosarDataTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

