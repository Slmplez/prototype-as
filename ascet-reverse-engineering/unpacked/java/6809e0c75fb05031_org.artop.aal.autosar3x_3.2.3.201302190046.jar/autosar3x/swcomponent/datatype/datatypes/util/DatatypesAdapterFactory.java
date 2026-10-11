/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.datatypes.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.BooleanType;
import autosar3x.swcomponent.datatype.datatypes.CharType;
import autosar3x.swcomponent.datatype.datatypes.CompositeType;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.datatype.datatypes.Datatype;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.OpaqueType;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.swcomponent.datatype.datatypes.Range;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.datatype.datatypes.RecordType;
import autosar3x.swcomponent.datatype.datatypes.StringType;
import autosar3x.swcomponent.datatype.datatypes.util.DatatypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DatatypesAdapterFactory
extends AdapterFactoryImpl {
    protected static DatatypesPackage modelPackage;
    protected DatatypesSwitch<Adapter> modelSwitch = new DatatypesSwitch<Adapter>(){

        @Override
        public Adapter caseARLimit(ARLimit object) {
            return DatatypesAdapterFactory.this.createARLimitAdapter();
        }

        @Override
        public Adapter caseArrayElement(ArrayElement object) {
            return DatatypesAdapterFactory.this.createArrayElementAdapter();
        }

        @Override
        public Adapter caseBooleanType(BooleanType object) {
            return DatatypesAdapterFactory.this.createBooleanTypeAdapter();
        }

        @Override
        public Adapter casePrimitiveType(PrimitiveType object) {
            return DatatypesAdapterFactory.this.createPrimitiveTypeAdapter();
        }

        @Override
        public Adapter caseDatatype(Datatype object) {
            return DatatypesAdapterFactory.this.createDatatypeAdapter();
        }

        @Override
        public Adapter caseCompositeType(CompositeType object) {
            return DatatypesAdapterFactory.this.createCompositeTypeAdapter();
        }

        @Override
        public Adapter caseOpaqueType(OpaqueType object) {
            return DatatypesAdapterFactory.this.createOpaqueTypeAdapter();
        }

        @Override
        public Adapter caseRange(Range object) {
            return DatatypesAdapterFactory.this.createRangeAdapter();
        }

        @Override
        public Adapter caseRecordElement(RecordElement object) {
            return DatatypesAdapterFactory.this.createRecordElementAdapter();
        }

        @Override
        public Adapter caseStringType(StringType object) {
            return DatatypesAdapterFactory.this.createStringTypeAdapter();
        }

        @Override
        public Adapter caseIntegerType(IntegerType object) {
            return DatatypesAdapterFactory.this.createIntegerTypeAdapter();
        }

        @Override
        public Adapter caseRealType(RealType object) {
            return DatatypesAdapterFactory.this.createRealTypeAdapter();
        }

        @Override
        public Adapter caseCharType(CharType object) {
            return DatatypesAdapterFactory.this.createCharTypeAdapter();
        }

        @Override
        public Adapter caseArrayType(ArrayType object) {
            return DatatypesAdapterFactory.this.createArrayTypeAdapter();
        }

        @Override
        public Adapter caseRecordType(RecordType object) {
            return DatatypesAdapterFactory.this.createRecordTypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return DatatypesAdapterFactory.this.createDataPrototypeAdapter();
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
        public Adapter caseGAbstractLimit(GAbstractLimit object) {
            return DatatypesAdapterFactory.this.createGAbstractLimitAdapter();
        }

        @Override
        public Adapter caseGARLimit(GARLimit object) {
            return DatatypesAdapterFactory.this.createGARLimitAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return DatatypesAdapterFactory.this.createGReferrableAdapter();
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
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return DatatypesAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return DatatypesAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return DatatypesAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
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
        public Adapter caseGAutosarDataType(GAutosarDataType object) {
            return DatatypesAdapterFactory.this.createGAutosarDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationDataType(GApplicationDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationPrimitiveDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
            return DatatypesAdapterFactory.this.createGApplicationCompositeDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationRecordElement(GApplicationRecordElement object) {
            return DatatypesAdapterFactory.this.createGApplicationRecordElementAdapter();
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

    public Adapter createARLimitAdapter() {
        return null;
    }

    public Adapter createArrayElementAdapter() {
        return null;
    }

    public Adapter createBooleanTypeAdapter() {
        return null;
    }

    public Adapter createPrimitiveTypeAdapter() {
        return null;
    }

    public Adapter createDatatypeAdapter() {
        return null;
    }

    public Adapter createCompositeTypeAdapter() {
        return null;
    }

    public Adapter createOpaqueTypeAdapter() {
        return null;
    }

    public Adapter createRangeAdapter() {
        return null;
    }

    public Adapter createRecordElementAdapter() {
        return null;
    }

    public Adapter createStringTypeAdapter() {
        return null;
    }

    public Adapter createIntegerTypeAdapter() {
        return null;
    }

    public Adapter createRealTypeAdapter() {
        return null;
    }

    public Adapter createCharTypeAdapter() {
        return null;
    }

    public Adapter createArrayTypeAdapter() {
        return null;
    }

    public Adapter createRecordTypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGAbstractLimitAdapter() {
        return null;
    }

    public Adapter createGARLimitAdapter() {
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

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
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

    public Adapter createGAutosarDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationPrimitiveDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordElementAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordDataTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

