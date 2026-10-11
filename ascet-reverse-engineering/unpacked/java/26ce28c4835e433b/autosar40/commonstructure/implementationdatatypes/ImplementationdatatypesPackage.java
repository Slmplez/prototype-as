/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.implementationdatatypes;

import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesFactory;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationdatatypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ImplementationdatatypesPackage
extends EPackage {
    public static final String eNAME = "implementationdatatypes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/idt";
    public static final String eNS_PREFIX = "";
    public static final ImplementationdatatypesPackage eINSTANCE = ImplementationdatatypesPackageImpl.init();
    public static final int IMPLEMENTATION_DATA_TYPE = 0;
    public static final int IMPLEMENTATION_DATA_TYPE__GCHECKSUM = 0;
    public static final int IMPLEMENTATION_DATA_TYPE__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION_DATA_TYPE__CHECKSUM = 2;
    public static final int IMPLEMENTATION_DATA_TYPE__TIMESTAMP = 3;
    public static final int IMPLEMENTATION_DATA_TYPE__GSHORT_NAME = 4;
    public static final int IMPLEMENTATION_DATA_TYPE__SHORT_NAME = 5;
    public static final int IMPLEMENTATION_DATA_TYPE__LONG_NAME = 6;
    public static final int IMPLEMENTATION_DATA_TYPE__GUUID = 7;
    public static final int IMPLEMENTATION_DATA_TYPE__GCATEGORY = 8;
    public static final int IMPLEMENTATION_DATA_TYPE__GDESC = 9;
    public static final int IMPLEMENTATION_DATA_TYPE__DESC = 10;
    public static final int IMPLEMENTATION_DATA_TYPE__CATEGORY = 11;
    public static final int IMPLEMENTATION_DATA_TYPE__ADMIN_DATA = 12;
    public static final int IMPLEMENTATION_DATA_TYPE__INTRODUCTION = 13;
    public static final int IMPLEMENTATION_DATA_TYPE__ANNOTATIONS = 14;
    public static final int IMPLEMENTATION_DATA_TYPE__UUID = 15;
    public static final int IMPLEMENTATION_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int IMPLEMENTATION_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int IMPLEMENTATION_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int IMPLEMENTATION_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int IMPLEMENTATION_DATA_TYPE__AR_PACKAGE = 20;
    public static final int IMPLEMENTATION_DATA_TYPE__VARIATION_POINT = 21;
    public static final int IMPLEMENTATION_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int IMPLEMENTATION_DATA_TYPE__SUB_ELEMENTS = 23;
    public static final int IMPLEMENTATION_DATA_TYPE__SYMBOL_PROPS = 24;
    public static final int IMPLEMENTATION_DATA_TYPE__TYPE_EMITTER = 25;
    public static final int IMPLEMENTATION_DATA_TYPE_FEATURE_COUNT = 26;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT = 1;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GCHECKSUM = 0;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__CHECKSUM = 2;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__TIMESTAMP = 3;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GSHORT_NAME = 4;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__SHORT_NAME = 5;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__LONG_NAME = 6;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GUUID = 7;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GCATEGORY = 8;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__GDESC = 9;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__DESC = 10;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__CATEGORY = 11;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__ADMIN_DATA = 12;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__INTRODUCTION = 13;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__ANNOTATIONS = 14;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__UUID = 15;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__ARRAY_SIZE = 18;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__ARRAY_SIZE_SEMANTICS = 19;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__SUB_ELEMENTS = 20;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__SW_DATA_DEF_PROPS = 21;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT__VARIATION_POINT = 22;
    public static final int IMPLEMENTATION_DATA_TYPE_ELEMENT_FEATURE_COUNT = 23;
    public static final int ARRAY_SIZE_SEMANTICS_ENUM = 2;

    public EClass getImplementationDataType();

    public EReference getImplementationDataType_SubElements();

    public EReference getImplementationDataType_SymbolProps();

    public EAttribute getImplementationDataType_TypeEmitter();

    public EClass getImplementationDataTypeElement();

    public EReference getImplementationDataTypeElement_ArraySize();

    public EAttribute getImplementationDataTypeElement_ArraySizeSemantics();

    public EReference getImplementationDataTypeElement_SubElements();

    public EReference getImplementationDataTypeElement_SwDataDefProps();

    public EReference getImplementationDataTypeElement_VariationPoint();

    public EEnum getArraySizeSemanticsEnum();

    public ImplementationdatatypesFactory getImplementationdatatypesFactory();

    public static interface Literals {
        public static final EClass IMPLEMENTATION_DATA_TYPE = eINSTANCE.getImplementationDataType();
        public static final EReference IMPLEMENTATION_DATA_TYPE__SUB_ELEMENTS = eINSTANCE.getImplementationDataType_SubElements();
        public static final EReference IMPLEMENTATION_DATA_TYPE__SYMBOL_PROPS = eINSTANCE.getImplementationDataType_SymbolProps();
        public static final EAttribute IMPLEMENTATION_DATA_TYPE__TYPE_EMITTER = eINSTANCE.getImplementationDataType_TypeEmitter();
        public static final EClass IMPLEMENTATION_DATA_TYPE_ELEMENT = eINSTANCE.getImplementationDataTypeElement();
        public static final EReference IMPLEMENTATION_DATA_TYPE_ELEMENT__ARRAY_SIZE = eINSTANCE.getImplementationDataTypeElement_ArraySize();
        public static final EAttribute IMPLEMENTATION_DATA_TYPE_ELEMENT__ARRAY_SIZE_SEMANTICS = eINSTANCE.getImplementationDataTypeElement_ArraySizeSemantics();
        public static final EReference IMPLEMENTATION_DATA_TYPE_ELEMENT__SUB_ELEMENTS = eINSTANCE.getImplementationDataTypeElement_SubElements();
        public static final EReference IMPLEMENTATION_DATA_TYPE_ELEMENT__SW_DATA_DEF_PROPS = eINSTANCE.getImplementationDataTypeElement_SwDataDefProps();
        public static final EReference IMPLEMENTATION_DATA_TYPE_ELEMENT__VARIATION_POINT = eINSTANCE.getImplementationDataTypeElement_VariationPoint();
        public static final EEnum ARRAY_SIZE_SEMANTICS_ENUM = eINSTANCE.getArraySizeSemanticsEnum();
    }
}

