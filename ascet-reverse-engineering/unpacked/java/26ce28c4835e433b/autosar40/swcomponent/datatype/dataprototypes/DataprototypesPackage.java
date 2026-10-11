/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.swcomponent.datatype.dataprototypes.DataprototypesFactory;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataprototypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DataprototypesPackage
extends EPackage {
    public static final String eNAME = "dataprototypes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/d/dp";
    public static final String eNS_PREFIX = "";
    public static final DataprototypesPackage eINSTANCE = DataprototypesPackageImpl.init();
    public static final int DATA_PROTOTYPE = 2;
    public static final int DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int DATA_PROTOTYPE__GUUID = 7;
    public static final int DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int DATA_PROTOTYPE__GDESC = 9;
    public static final int DATA_PROTOTYPE__DESC = 10;
    public static final int DATA_PROTOTYPE__CATEGORY = 11;
    public static final int DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int DATA_PROTOTYPE__UUID = 15;
    public static final int DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int DATA_PROTOTYPE_FEATURE_COUNT = 20;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE = 1;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GUUID = 7;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GDESC = 9;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__DESC = 10;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__UUID = 15;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GELEMENT_TYPE = 20;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__TYPE = 21;
    public static final int APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE_FEATURE_COUNT = 22;
    public static final int APPLICATION_ARRAY_ELEMENT = 0;
    public static final int APPLICATION_ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int APPLICATION_ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int APPLICATION_ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int APPLICATION_ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int APPLICATION_ARRAY_ELEMENT__GSHORT_NAME = 4;
    public static final int APPLICATION_ARRAY_ELEMENT__SHORT_NAME = 5;
    public static final int APPLICATION_ARRAY_ELEMENT__LONG_NAME = 6;
    public static final int APPLICATION_ARRAY_ELEMENT__GUUID = 7;
    public static final int APPLICATION_ARRAY_ELEMENT__GCATEGORY = 8;
    public static final int APPLICATION_ARRAY_ELEMENT__GDESC = 9;
    public static final int APPLICATION_ARRAY_ELEMENT__DESC = 10;
    public static final int APPLICATION_ARRAY_ELEMENT__CATEGORY = 11;
    public static final int APPLICATION_ARRAY_ELEMENT__ADMIN_DATA = 12;
    public static final int APPLICATION_ARRAY_ELEMENT__INTRODUCTION = 13;
    public static final int APPLICATION_ARRAY_ELEMENT__ANNOTATIONS = 14;
    public static final int APPLICATION_ARRAY_ELEMENT__UUID = 15;
    public static final int APPLICATION_ARRAY_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_ARRAY_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_ARRAY_ELEMENT__ATP_CLASSIFIER = 18;
    public static final int APPLICATION_ARRAY_ELEMENT__SW_DATA_DEF_PROPS = 19;
    public static final int APPLICATION_ARRAY_ELEMENT__GELEMENT_TYPE = 20;
    public static final int APPLICATION_ARRAY_ELEMENT__TYPE = 21;
    public static final int APPLICATION_ARRAY_ELEMENT__APPLICATION_ARRAY_DATA_TYPE = 22;
    public static final int APPLICATION_ARRAY_ELEMENT__ARRAY_SIZE_SEMANTICS = 23;
    public static final int APPLICATION_ARRAY_ELEMENT__MAX_NUMBER_OF_ELEMENTS = 24;
    public static final int APPLICATION_ARRAY_ELEMENT_FEATURE_COUNT = 25;
    public static final int APPLICATION_RECORD_ELEMENT = 3;
    public static final int APPLICATION_RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int APPLICATION_RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int APPLICATION_RECORD_ELEMENT__CHECKSUM = 2;
    public static final int APPLICATION_RECORD_ELEMENT__TIMESTAMP = 3;
    public static final int APPLICATION_RECORD_ELEMENT__GSHORT_NAME = 4;
    public static final int APPLICATION_RECORD_ELEMENT__SHORT_NAME = 5;
    public static final int APPLICATION_RECORD_ELEMENT__LONG_NAME = 6;
    public static final int APPLICATION_RECORD_ELEMENT__GUUID = 7;
    public static final int APPLICATION_RECORD_ELEMENT__GCATEGORY = 8;
    public static final int APPLICATION_RECORD_ELEMENT__GDESC = 9;
    public static final int APPLICATION_RECORD_ELEMENT__DESC = 10;
    public static final int APPLICATION_RECORD_ELEMENT__CATEGORY = 11;
    public static final int APPLICATION_RECORD_ELEMENT__ADMIN_DATA = 12;
    public static final int APPLICATION_RECORD_ELEMENT__INTRODUCTION = 13;
    public static final int APPLICATION_RECORD_ELEMENT__ANNOTATIONS = 14;
    public static final int APPLICATION_RECORD_ELEMENT__UUID = 15;
    public static final int APPLICATION_RECORD_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_RECORD_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_RECORD_ELEMENT__ATP_CLASSIFIER = 18;
    public static final int APPLICATION_RECORD_ELEMENT__SW_DATA_DEF_PROPS = 19;
    public static final int APPLICATION_RECORD_ELEMENT__GELEMENT_TYPE = 20;
    public static final int APPLICATION_RECORD_ELEMENT__TYPE = 21;
    public static final int APPLICATION_RECORD_ELEMENT__APPLICATION_RECORD_DATA_TYPE = 22;
    public static final int APPLICATION_RECORD_ELEMENT__VARIATION_POINT = 23;
    public static final int APPLICATION_RECORD_ELEMENT_FEATURE_COUNT = 24;
    public static final int AUTOSAR_DATA_PROTOTYPE = 4;
    public static final int AUTOSAR_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int AUTOSAR_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int AUTOSAR_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int AUTOSAR_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int AUTOSAR_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int AUTOSAR_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int AUTOSAR_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int AUTOSAR_DATA_PROTOTYPE__GUUID = 7;
    public static final int AUTOSAR_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int AUTOSAR_DATA_PROTOTYPE__GDESC = 9;
    public static final int AUTOSAR_DATA_PROTOTYPE__DESC = 10;
    public static final int AUTOSAR_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int AUTOSAR_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int AUTOSAR_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int AUTOSAR_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int AUTOSAR_DATA_PROTOTYPE__UUID = 15;
    public static final int AUTOSAR_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int AUTOSAR_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int AUTOSAR_DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int AUTOSAR_DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int AUTOSAR_DATA_PROTOTYPE__GTYPE = 20;
    public static final int AUTOSAR_DATA_PROTOTYPE__TYPE = 21;
    public static final int AUTOSAR_DATA_PROTOTYPE_FEATURE_COUNT = 22;
    public static final int PARAMETER_DATA_PROTOTYPE = 5;
    public static final int PARAMETER_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int PARAMETER_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PARAMETER_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int PARAMETER_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int PARAMETER_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PARAMETER_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int PARAMETER_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int PARAMETER_DATA_PROTOTYPE__GUUID = 7;
    public static final int PARAMETER_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int PARAMETER_DATA_PROTOTYPE__GDESC = 9;
    public static final int PARAMETER_DATA_PROTOTYPE__DESC = 10;
    public static final int PARAMETER_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int PARAMETER_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PARAMETER_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int PARAMETER_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int PARAMETER_DATA_PROTOTYPE__UUID = 15;
    public static final int PARAMETER_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int PARAMETER_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int PARAMETER_DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int PARAMETER_DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int PARAMETER_DATA_PROTOTYPE__GTYPE = 20;
    public static final int PARAMETER_DATA_PROTOTYPE__TYPE = 21;
    public static final int PARAMETER_DATA_PROTOTYPE__INIT_VALUE = 22;
    public static final int PARAMETER_DATA_PROTOTYPE__VARIATION_POINT = 23;
    public static final int PARAMETER_DATA_PROTOTYPE_FEATURE_COUNT = 24;
    public static final int VARIABLE_DATA_PROTOTYPE = 6;
    public static final int VARIABLE_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int VARIABLE_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int VARIABLE_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int VARIABLE_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int VARIABLE_DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int VARIABLE_DATA_PROTOTYPE__SHORT_NAME = 5;
    public static final int VARIABLE_DATA_PROTOTYPE__LONG_NAME = 6;
    public static final int VARIABLE_DATA_PROTOTYPE__GUUID = 7;
    public static final int VARIABLE_DATA_PROTOTYPE__GCATEGORY = 8;
    public static final int VARIABLE_DATA_PROTOTYPE__GDESC = 9;
    public static final int VARIABLE_DATA_PROTOTYPE__DESC = 10;
    public static final int VARIABLE_DATA_PROTOTYPE__CATEGORY = 11;
    public static final int VARIABLE_DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int VARIABLE_DATA_PROTOTYPE__INTRODUCTION = 13;
    public static final int VARIABLE_DATA_PROTOTYPE__ANNOTATIONS = 14;
    public static final int VARIABLE_DATA_PROTOTYPE__UUID = 15;
    public static final int VARIABLE_DATA_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int VARIABLE_DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int VARIABLE_DATA_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int VARIABLE_DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 19;
    public static final int VARIABLE_DATA_PROTOTYPE__GTYPE = 20;
    public static final int VARIABLE_DATA_PROTOTYPE__TYPE = 21;
    public static final int VARIABLE_DATA_PROTOTYPE__INIT_VALUE = 22;
    public static final int VARIABLE_DATA_PROTOTYPE__VARIATION_POINT = 23;
    public static final int VARIABLE_DATA_PROTOTYPE_FEATURE_COUNT = 24;

    public EClass getApplicationArrayElement();

    public EReference getApplicationArrayElement_ApplicationArrayDataType();

    public EAttribute getApplicationArrayElement_ArraySizeSemantics();

    public EReference getApplicationArrayElement_MaxNumberOfElements();

    public EClass getApplicationCompositeElementDataPrototype();

    public EReference getApplicationCompositeElementDataPrototype_Type();

    public EClass getDataPrototype();

    public EReference getDataPrototype_SwDataDefProps();

    public EClass getApplicationRecordElement();

    public EReference getApplicationRecordElement_ApplicationRecordDataType();

    public EReference getApplicationRecordElement_VariationPoint();

    public EClass getAutosarDataPrototype();

    public EReference getAutosarDataPrototype_Type();

    public EClass getParameterDataPrototype();

    public EReference getParameterDataPrototype_InitValue();

    public EReference getParameterDataPrototype_VariationPoint();

    public EClass getVariableDataPrototype();

    public EReference getVariableDataPrototype_InitValue();

    public EReference getVariableDataPrototype_VariationPoint();

    public DataprototypesFactory getDataprototypesFactory();

    public static interface Literals {
        public static final EClass APPLICATION_ARRAY_ELEMENT = eINSTANCE.getApplicationArrayElement();
        public static final EReference APPLICATION_ARRAY_ELEMENT__APPLICATION_ARRAY_DATA_TYPE = eINSTANCE.getApplicationArrayElement_ApplicationArrayDataType();
        public static final EAttribute APPLICATION_ARRAY_ELEMENT__ARRAY_SIZE_SEMANTICS = eINSTANCE.getApplicationArrayElement_ArraySizeSemantics();
        public static final EReference APPLICATION_ARRAY_ELEMENT__MAX_NUMBER_OF_ELEMENTS = eINSTANCE.getApplicationArrayElement_MaxNumberOfElements();
        public static final EClass APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE = eINSTANCE.getApplicationCompositeElementDataPrototype();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__TYPE = eINSTANCE.getApplicationCompositeElementDataPrototype_Type();
        public static final EClass DATA_PROTOTYPE = eINSTANCE.getDataPrototype();
        public static final EReference DATA_PROTOTYPE__SW_DATA_DEF_PROPS = eINSTANCE.getDataPrototype_SwDataDefProps();
        public static final EClass APPLICATION_RECORD_ELEMENT = eINSTANCE.getApplicationRecordElement();
        public static final EReference APPLICATION_RECORD_ELEMENT__APPLICATION_RECORD_DATA_TYPE = eINSTANCE.getApplicationRecordElement_ApplicationRecordDataType();
        public static final EReference APPLICATION_RECORD_ELEMENT__VARIATION_POINT = eINSTANCE.getApplicationRecordElement_VariationPoint();
        public static final EClass AUTOSAR_DATA_PROTOTYPE = eINSTANCE.getAutosarDataPrototype();
        public static final EReference AUTOSAR_DATA_PROTOTYPE__TYPE = eINSTANCE.getAutosarDataPrototype_Type();
        public static final EClass PARAMETER_DATA_PROTOTYPE = eINSTANCE.getParameterDataPrototype();
        public static final EReference PARAMETER_DATA_PROTOTYPE__INIT_VALUE = eINSTANCE.getParameterDataPrototype_InitValue();
        public static final EReference PARAMETER_DATA_PROTOTYPE__VARIATION_POINT = eINSTANCE.getParameterDataPrototype_VariationPoint();
        public static final EClass VARIABLE_DATA_PROTOTYPE = eINSTANCE.getVariableDataPrototype();
        public static final EReference VARIABLE_DATA_PROTOTYPE__INIT_VALUE = eINSTANCE.getVariableDataPrototype_InitValue();
        public static final EReference VARIABLE_DATA_PROTOTYPE__VARIATION_POINT = eINSTANCE.getVariableDataPrototype_VariationPoint();
    }
}

