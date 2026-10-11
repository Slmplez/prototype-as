/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ConstantsFactory;
import autosar40.commonstructure.constants.impl.ConstantsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ConstantsPackage
extends EPackage {
    public static final String eNAME = "constants";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/c";
    public static final String eNS_PREFIX = "";
    public static final ConstantsPackage eINSTANCE = ConstantsPackageImpl.init();
    public static final int VALUE_SPECIFICATION = 10;
    public static final int VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int VALUE_SPECIFICATION_FEATURE_COUNT = 6;
    public static final int APPLICATION_VALUE_SPECIFICATION = 0;
    public static final int APPLICATION_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int APPLICATION_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int APPLICATION_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int APPLICATION_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int APPLICATION_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int APPLICATION_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int APPLICATION_VALUE_SPECIFICATION__CATEGORY = 6;
    public static final int APPLICATION_VALUE_SPECIFICATION__SW_AXIS_CONTS = 7;
    public static final int APPLICATION_VALUE_SPECIFICATION__SW_VALUE_CONT = 8;
    public static final int APPLICATION_VALUE_SPECIFICATION_FEATURE_COUNT = 9;
    public static final int ARRAY_VALUE_SPECIFICATION = 1;
    public static final int ARRAY_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int ARRAY_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int ARRAY_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int ARRAY_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int ARRAY_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int ARRAY_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int ARRAY_VALUE_SPECIFICATION__ELEMENTS = 6;
    public static final int ARRAY_VALUE_SPECIFICATION_FEATURE_COUNT = 7;
    public static final int CONSTANT_REFERENCE = 2;
    public static final int CONSTANT_REFERENCE__GCHECKSUM = 0;
    public static final int CONSTANT_REFERENCE__GTIMESTAMP = 1;
    public static final int CONSTANT_REFERENCE__CHECKSUM = 2;
    public static final int CONSTANT_REFERENCE__TIMESTAMP = 3;
    public static final int CONSTANT_REFERENCE__SHORT_LABEL = 4;
    public static final int CONSTANT_REFERENCE__VARIATION_POINT = 5;
    public static final int CONSTANT_REFERENCE__CONSTANT = 6;
    public static final int CONSTANT_REFERENCE_FEATURE_COUNT = 7;
    public static final int CONSTANT_SPECIFICATION = 3;
    public static final int CONSTANT_SPECIFICATION__GCHECKSUM = 0;
    public static final int CONSTANT_SPECIFICATION__GTIMESTAMP = 1;
    public static final int CONSTANT_SPECIFICATION__CHECKSUM = 2;
    public static final int CONSTANT_SPECIFICATION__TIMESTAMP = 3;
    public static final int CONSTANT_SPECIFICATION__GSHORT_NAME = 4;
    public static final int CONSTANT_SPECIFICATION__SHORT_NAME = 5;
    public static final int CONSTANT_SPECIFICATION__LONG_NAME = 6;
    public static final int CONSTANT_SPECIFICATION__GUUID = 7;
    public static final int CONSTANT_SPECIFICATION__GCATEGORY = 8;
    public static final int CONSTANT_SPECIFICATION__GDESC = 9;
    public static final int CONSTANT_SPECIFICATION__DESC = 10;
    public static final int CONSTANT_SPECIFICATION__CATEGORY = 11;
    public static final int CONSTANT_SPECIFICATION__ADMIN_DATA = 12;
    public static final int CONSTANT_SPECIFICATION__INTRODUCTION = 13;
    public static final int CONSTANT_SPECIFICATION__ANNOTATIONS = 14;
    public static final int CONSTANT_SPECIFICATION__UUID = 15;
    public static final int CONSTANT_SPECIFICATION__ALL_EXTENSIONS = 16;
    public static final int CONSTANT_SPECIFICATION__CONTAINED_EXTENSIONS = 17;
    public static final int CONSTANT_SPECIFICATION__GAR_PACKAGE = 18;
    public static final int CONSTANT_SPECIFICATION__AR_PACKAGE = 19;
    public static final int CONSTANT_SPECIFICATION__VARIATION_POINT = 20;
    public static final int CONSTANT_SPECIFICATION__VALUE_SPEC = 21;
    public static final int CONSTANT_SPECIFICATION_FEATURE_COUNT = 22;
    public static final int CONSTANT_SPECIFICATION_MAPPING = 4;
    public static final int CONSTANT_SPECIFICATION_MAPPING__GCHECKSUM = 0;
    public static final int CONSTANT_SPECIFICATION_MAPPING__GTIMESTAMP = 1;
    public static final int CONSTANT_SPECIFICATION_MAPPING__CHECKSUM = 2;
    public static final int CONSTANT_SPECIFICATION_MAPPING__TIMESTAMP = 3;
    public static final int CONSTANT_SPECIFICATION_MAPPING__CONSTANT_SPECIFICATION_MAPPING_SET = 4;
    public static final int CONSTANT_SPECIFICATION_MAPPING__APPL_CONSTANT = 5;
    public static final int CONSTANT_SPECIFICATION_MAPPING__IMPL_CONSTANT = 6;
    public static final int CONSTANT_SPECIFICATION_MAPPING_FEATURE_COUNT = 7;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET = 5;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GCHECKSUM = 0;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GTIMESTAMP = 1;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__CHECKSUM = 2;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__TIMESTAMP = 3;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GSHORT_NAME = 4;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__SHORT_NAME = 5;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__LONG_NAME = 6;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GUUID = 7;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GCATEGORY = 8;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GDESC = 9;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__DESC = 10;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__CATEGORY = 11;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__ADMIN_DATA = 12;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__INTRODUCTION = 13;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__ANNOTATIONS = 14;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__UUID = 15;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__ALL_EXTENSIONS = 16;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__CONTAINED_EXTENSIONS = 17;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__GAR_PACKAGE = 18;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__AR_PACKAGE = 19;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__VARIATION_POINT = 20;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET__MAPPINGS = 21;
    public static final int CONSTANT_SPECIFICATION_MAPPING_SET_FEATURE_COUNT = 22;
    public static final int NUMERICAL_VALUE_SPECIFICATION = 6;
    public static final int NUMERICAL_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int NUMERICAL_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int NUMERICAL_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int NUMERICAL_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int NUMERICAL_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int NUMERICAL_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int NUMERICAL_VALUE_SPECIFICATION__VALUE = 6;
    public static final int NUMERICAL_VALUE_SPECIFICATION_FEATURE_COUNT = 7;
    public static final int RECORD_VALUE_SPECIFICATION = 7;
    public static final int RECORD_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int RECORD_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int RECORD_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int RECORD_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int RECORD_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int RECORD_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int RECORD_VALUE_SPECIFICATION__FIELDS = 6;
    public static final int RECORD_VALUE_SPECIFICATION_FEATURE_COUNT = 7;
    public static final int REFERENCE_VALUE_SPECIFICATION = 8;
    public static final int REFERENCE_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int REFERENCE_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int REFERENCE_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int REFERENCE_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int REFERENCE_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int REFERENCE_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int REFERENCE_VALUE_SPECIFICATION__REFERENCE_VALUE = 6;
    public static final int REFERENCE_VALUE_SPECIFICATION_FEATURE_COUNT = 7;
    public static final int TEXT_VALUE_SPECIFICATION = 9;
    public static final int TEXT_VALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int TEXT_VALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int TEXT_VALUE_SPECIFICATION__CHECKSUM = 2;
    public static final int TEXT_VALUE_SPECIFICATION__TIMESTAMP = 3;
    public static final int TEXT_VALUE_SPECIFICATION__SHORT_LABEL = 4;
    public static final int TEXT_VALUE_SPECIFICATION__VARIATION_POINT = 5;
    public static final int TEXT_VALUE_SPECIFICATION__VALUE = 6;
    public static final int TEXT_VALUE_SPECIFICATION_FEATURE_COUNT = 7;

    public EClass getApplicationValueSpecification();

    public EAttribute getApplicationValueSpecification_Category();

    public EReference getApplicationValueSpecification_SwAxisConts();

    public EReference getApplicationValueSpecification_SwValueCont();

    public EClass getArrayValueSpecification();

    public EReference getArrayValueSpecification_Elements();

    public EClass getConstantReference();

    public EReference getConstantReference_Constant();

    public EClass getConstantSpecification();

    public EReference getConstantSpecification_ValueSpec();

    public EClass getConstantSpecificationMapping();

    public EReference getConstantSpecificationMapping_ConstantSpecificationMappingSet();

    public EReference getConstantSpecificationMapping_ApplConstant();

    public EReference getConstantSpecificationMapping_ImplConstant();

    public EClass getConstantSpecificationMappingSet();

    public EReference getConstantSpecificationMappingSet_Mappings();

    public EClass getNumericalValueSpecification();

    public EReference getNumericalValueSpecification_Value();

    public EClass getRecordValueSpecification();

    public EReference getRecordValueSpecification_Fields();

    public EClass getReferenceValueSpecification();

    public EReference getReferenceValueSpecification_ReferenceValue();

    public EClass getTextValueSpecification();

    public EAttribute getTextValueSpecification_Value();

    public EClass getValueSpecification();

    public EAttribute getValueSpecification_ShortLabel();

    public EReference getValueSpecification_VariationPoint();

    public ConstantsFactory getConstantsFactory();

    public static interface Literals {
        public static final EClass APPLICATION_VALUE_SPECIFICATION = eINSTANCE.getApplicationValueSpecification();
        public static final EAttribute APPLICATION_VALUE_SPECIFICATION__CATEGORY = eINSTANCE.getApplicationValueSpecification_Category();
        public static final EReference APPLICATION_VALUE_SPECIFICATION__SW_AXIS_CONTS = eINSTANCE.getApplicationValueSpecification_SwAxisConts();
        public static final EReference APPLICATION_VALUE_SPECIFICATION__SW_VALUE_CONT = eINSTANCE.getApplicationValueSpecification_SwValueCont();
        public static final EClass ARRAY_VALUE_SPECIFICATION = eINSTANCE.getArrayValueSpecification();
        public static final EReference ARRAY_VALUE_SPECIFICATION__ELEMENTS = eINSTANCE.getArrayValueSpecification_Elements();
        public static final EClass CONSTANT_REFERENCE = eINSTANCE.getConstantReference();
        public static final EReference CONSTANT_REFERENCE__CONSTANT = eINSTANCE.getConstantReference_Constant();
        public static final EClass CONSTANT_SPECIFICATION = eINSTANCE.getConstantSpecification();
        public static final EReference CONSTANT_SPECIFICATION__VALUE_SPEC = eINSTANCE.getConstantSpecification_ValueSpec();
        public static final EClass CONSTANT_SPECIFICATION_MAPPING = eINSTANCE.getConstantSpecificationMapping();
        public static final EReference CONSTANT_SPECIFICATION_MAPPING__CONSTANT_SPECIFICATION_MAPPING_SET = eINSTANCE.getConstantSpecificationMapping_ConstantSpecificationMappingSet();
        public static final EReference CONSTANT_SPECIFICATION_MAPPING__APPL_CONSTANT = eINSTANCE.getConstantSpecificationMapping_ApplConstant();
        public static final EReference CONSTANT_SPECIFICATION_MAPPING__IMPL_CONSTANT = eINSTANCE.getConstantSpecificationMapping_ImplConstant();
        public static final EClass CONSTANT_SPECIFICATION_MAPPING_SET = eINSTANCE.getConstantSpecificationMappingSet();
        public static final EReference CONSTANT_SPECIFICATION_MAPPING_SET__MAPPINGS = eINSTANCE.getConstantSpecificationMappingSet_Mappings();
        public static final EClass NUMERICAL_VALUE_SPECIFICATION = eINSTANCE.getNumericalValueSpecification();
        public static final EReference NUMERICAL_VALUE_SPECIFICATION__VALUE = eINSTANCE.getNumericalValueSpecification_Value();
        public static final EClass RECORD_VALUE_SPECIFICATION = eINSTANCE.getRecordValueSpecification();
        public static final EReference RECORD_VALUE_SPECIFICATION__FIELDS = eINSTANCE.getRecordValueSpecification_Fields();
        public static final EClass REFERENCE_VALUE_SPECIFICATION = eINSTANCE.getReferenceValueSpecification();
        public static final EReference REFERENCE_VALUE_SPECIFICATION__REFERENCE_VALUE = eINSTANCE.getReferenceValueSpecification_ReferenceValue();
        public static final EClass TEXT_VALUE_SPECIFICATION = eINSTANCE.getTextValueSpecification();
        public static final EAttribute TEXT_VALUE_SPECIFICATION__VALUE = eINSTANCE.getTextValueSpecification_Value();
        public static final EClass VALUE_SPECIFICATION = eINSTANCE.getValueSpecification();
        public static final EAttribute VALUE_SPECIFICATION__SHORT_LABEL = eINSTANCE.getValueSpecification_ShortLabel();
        public static final EReference VALUE_SPECIFICATION__VARIATION_POINT = eINSTANCE.getValueSpecification_VariationPoint();
    }
}

