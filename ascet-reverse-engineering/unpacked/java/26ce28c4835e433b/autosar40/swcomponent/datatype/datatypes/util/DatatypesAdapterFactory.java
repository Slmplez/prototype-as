/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.datatypes.util;

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
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.util.DatatypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DatatypesAdapterFactory
extends AdapterFactoryImpl {
    protected static DatatypesPackage modelPackage;
    protected DatatypesSwitch<Adapter> modelSwitch = new DatatypesSwitch<Adapter>(){

        @Override
        public Adapter caseApplicationCompositeDataType(ApplicationCompositeDataType object) {
            return DatatypesAdapterFactory.this.createApplicationCompositeDataTypeAdapter();
        }

        @Override
        public Adapter caseApplicationDataType(ApplicationDataType object) {
            return DatatypesAdapterFactory.this.createApplicationDataTypeAdapter();
        }

        @Override
        public Adapter caseAutosarDataType(AutosarDataType object) {
            return DatatypesAdapterFactory.this.createAutosarDataTypeAdapter();
        }

        @Override
        public Adapter caseDataTypeMap(DataTypeMap object) {
            return DatatypesAdapterFactory.this.createDataTypeMapAdapter();
        }

        @Override
        public Adapter caseDataTypeMappingSet(DataTypeMappingSet object) {
            return DatatypesAdapterFactory.this.createDataTypeMappingSetAdapter();
        }

        @Override
        public Adapter caseApplicationPrimitiveDataType(ApplicationPrimitiveDataType object) {
            return DatatypesAdapterFactory.this.createApplicationPrimitiveDataTypeAdapter();
        }

        @Override
        public Adapter caseApplicationArrayDataType(ApplicationArrayDataType object) {
            return DatatypesAdapterFactory.this.createApplicationArrayDataTypeAdapter();
        }

        @Override
        public Adapter caseApplicationRecordDataType(ApplicationRecordDataType object) {
            return DatatypesAdapterFactory.this.createApplicationRecordDataTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DatatypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DatatypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return DatatypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return DatatypesAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return DatatypesAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return DatatypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return DatatypesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return DatatypesAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return DatatypesAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return DatatypesAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return DatatypesAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return DatatypesAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return DatatypesAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return DatatypesAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return DatatypesAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataType(GAutosarDataType object) {
            return DatatypesAdapterFactory.this.createGAutosarDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationDataType(GApplicationDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationCompositeDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationPrimitiveDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationRecordDataType(GApplicationRecordDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationRecordDataTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DatatypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DatatypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DatatypesPackage.eINSTANCE;
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

    public Adapter createApplicationCompositeDataTypeAdapter() {
        return null;
    }

    public Adapter createApplicationDataTypeAdapter() {
        return null;
    }

    public Adapter createAutosarDataTypeAdapter() {
        return null;
    }

    public Adapter createDataTypeMapAdapter() {
        return null;
    }

    public Adapter createDataTypeMappingSetAdapter() {
        return null;
    }

    public Adapter createApplicationPrimitiveDataTypeAdapter() {
        return null;
    }

    public Adapter createApplicationArrayDataTypeAdapter() {
        return null;
    }

    public Adapter createApplicationRecordDataTypeAdapter() {
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

    public Adapter createGApplicationDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationPrimitiveDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordDataTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

