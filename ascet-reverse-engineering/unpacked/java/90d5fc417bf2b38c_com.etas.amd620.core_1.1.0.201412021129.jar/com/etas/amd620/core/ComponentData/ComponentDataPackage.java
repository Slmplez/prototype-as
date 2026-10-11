/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.ComponentDataFactory;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentDataPackage
extends EPackage {
    public static final String eNAME = "ComponentData";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/component_data";
    public static final String eNS_PREFIX = "ComponentData";
    public static final ComponentDataPackage eINSTANCE = ComponentDataPackageImpl.init();
    public static final int DIMENSIONAL_DATA_T = 8;
    public static final int DIMENSIONAL_DATA_T__CURRENT_SIZE_X = 0;
    public static final int DIMENSIONAL_DATA_T__CURRENT_SIZE_Y = 1;
    public static final int DIMENSIONAL_DATA_T_FEATURE_COUNT = 2;
    public static final int DIMENSIONAL_DATA_T_OPERATION_COUNT = 0;
    public static final int ARRAY_T = 0;
    public static final int ARRAY_T__CURRENT_SIZE_X = 0;
    public static final int ARRAY_T__CURRENT_SIZE_Y = 1;
    public static final int ARRAY_T__VALUE = 2;
    public static final int ARRAY_T_FEATURE_COUNT = 3;
    public static final int ARRAY_T_OPERATION_COUNT = 0;
    public static final int COLOR_T = 1;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int COMPLEX_DATA_T = 2;
    public static final int COMPLEX_DATA_T__CHECKSUM = 0;
    public static final int COMPLEX_DATA_T__DATA_NAME = 1;
    public static final int COMPLEX_DATA_T__DATA_OID = 2;
    public static final int COMPLEX_DATA_T_FEATURE_COUNT = 3;
    public static final int COMPLEX_DATA_T_OPERATION_COUNT = 0;
    public static final int COMPONENT_DATA_TYPE = 3;
    public static final int COMPONENT_DATA_TYPE__DATA_SET = 0;
    public static final int COMPONENT_DATA_TYPE__SIGNATURE = 1;
    public static final int COMPONENT_DATA_TYPE__SCHEMA_VERSION = 2;
    public static final int COMPONENT_DATA_TYPE__TOOL_VERSION = 3;
    public static final int COMPONENT_DATA_TYPE_FEATURE_COUNT = 4;
    public static final int COMPONENT_DATA_TYPE_OPERATION_COUNT = 0;
    public static final int DATA_ENTRY_T = 4;
    public static final int DATA_ENTRY_T__DATA_VARIANT = 0;
    public static final int DATA_ENTRY_T__CUSTOMER_DATA = 1;
    public static final int DATA_ENTRY_T__ELEMENT_NAME = 2;
    public static final int DATA_ENTRY_T__ELEMENT_OID = 3;
    public static final int DATA_ENTRY_T__IGNORE = 4;
    public static final int DATA_ENTRY_T_FEATURE_COUNT = 5;
    public static final int DATA_ENTRY_T_OPERATION_COUNT = 0;
    public static final int DATA_SET_T = 5;
    public static final int DATA_SET_T__TIME_STAMP = 0;
    public static final int DATA_SET_T__NOTES = 1;
    public static final int DATA_SET_T__CUSTOMER_DATA = 2;
    public static final int DATA_SET_T__DATA_ENTRY = 3;
    public static final int DATA_SET_T__CHECKSUM = 4;
    public static final int DATA_SET_T__CLASS_CONFIG = 5;
    public static final int DATA_SET_T__DEFAULT = 6;
    public static final int DATA_SET_T__NAME = 7;
    public static final int DATA_SET_T__OID = 8;
    public static final int DATA_SET_T__UUID = 9;
    public static final int DATA_SET_T_FEATURE_COUNT = 10;
    public static final int DATA_SET_T_OPERATION_COUNT = 0;
    public static final int DATA_VARIANT_T = 6;
    public static final int DATA_VARIANT_T__DIMENSIONAL_TYPE = 0;
    public static final int DATA_VARIANT_T__SCALAR_TYPE = 1;
    public static final int DATA_VARIANT_T__COMPLEX_TYPE = 2;
    public static final int DATA_VARIANT_T__REFERENCE_TYPE = 3;
    public static final int DATA_VARIANT_T__DEPENDENCY = 4;
    public static final int DATA_VARIANT_T__DIMENSIONAL_TYPE1 = 5;
    public static final int DATA_VARIANT_T__SCALAR_TYPE1 = 6;
    public static final int DATA_VARIANT_T__NAME = 7;
    public static final int DATA_VARIANT_T__OID = 8;
    public static final int DATA_VARIANT_T_FEATURE_COUNT = 9;
    public static final int DATA_VARIANT_T_OPERATION_COUNT = 0;
    public static final int DEPENDENCY_T = 7;
    public static final int DEPENDENCY_T__PARAMETER = 0;
    public static final int DEPENDENCY_T_FEATURE_COUNT = 1;
    public static final int DEPENDENCY_T_OPERATION_COUNT = 0;
    public static final int DIMENSIONAL_TYPE_T = 9;
    public static final int DIMENSIONAL_TYPE_T__ONE_D = 0;
    public static final int DIMENSIONAL_TYPE_T__TWO_D = 1;
    public static final int DIMENSIONAL_TYPE_T__DISTRIBUTION = 2;
    public static final int DIMENSIONAL_TYPE_T__ARRAY = 3;
    public static final int DIMENSIONAL_TYPE_T__MATRIX = 4;
    public static final int DIMENSIONAL_TYPE_T_FEATURE_COUNT = 5;
    public static final int DIMENSIONAL_TYPE_T_OPERATION_COUNT = 0;
    public static final int DISTRIBUTION_INFO_T = 10;
    public static final int DISTRIBUTION_INFO_T__ELEMENT_NAME = 0;
    public static final int DISTRIBUTION_INFO_T__ELEMENT_OID = 1;
    public static final int DISTRIBUTION_INFO_T_FEATURE_COUNT = 2;
    public static final int DISTRIBUTION_INFO_T_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 11;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__COMPONENT_DATA = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int ENUMERATION_DATA_T = 12;
    public static final int ENUMERATION_DATA_T__VALUE = 0;
    public static final int ENUMERATION_DATA_T_FEATURE_COUNT = 1;
    public static final int ENUMERATION_DATA_T_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 13;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 14;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 15;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int ICON_T = 16;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 17;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 18;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int LOCAL_TYPE = 19;
    public static final int LOCAL_TYPE__ELEMENT_NAME = 0;
    public static final int LOCAL_TYPE__ELEMENT_OID = 1;
    public static final int LOCAL_TYPE_FEATURE_COUNT = 2;
    public static final int LOCAL_TYPE_OPERATION_COUNT = 0;
    public static final int LOGIC_DATA_T = 20;
    public static final int LOGIC_DATA_T__VALUE = 0;
    public static final int LOGIC_DATA_T_FEATURE_COUNT = 1;
    public static final int LOGIC_DATA_T_OPERATION_COUNT = 0;
    public static final int MATRIX_T = 21;
    public static final int MATRIX_T__CURRENT_SIZE_X = 0;
    public static final int MATRIX_T__CURRENT_SIZE_Y = 1;
    public static final int MATRIX_T__ROW = 2;
    public static final int MATRIX_T_FEATURE_COUNT = 3;
    public static final int MATRIX_T_OPERATION_COUNT = 0;
    public static final int NOTES_T = 22;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 23;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int NUMERIC_DATA_T = 24;
    public static final int NUMERIC_DATA_T__VALUE = 0;
    public static final int NUMERIC_DATA_T_FEATURE_COUNT = 1;
    public static final int NUMERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int ONE_DTYPE = 25;
    public static final int ONE_DTYPE__CURRENT_SIZE_X = 0;
    public static final int ONE_DTYPE__CURRENT_SIZE_Y = 1;
    public static final int ONE_DTYPE__XAXIS = 2;
    public static final int ONE_DTYPE__XDISTRIBUTION = 3;
    public static final int ONE_DTYPE__VALUES = 4;
    public static final int ONE_DTYPE__EXTRAPOLATION = 5;
    public static final int ONE_DTYPE__INTERPOLATION = 6;
    public static final int ONE_DTYPE__TYPE = 7;
    public static final int ONE_DTYPE_FEATURE_COUNT = 8;
    public static final int ONE_DTYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 26;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int PARAMETER_TYPE = 27;
    public static final int PARAMETER_TYPE__FORMAL_NAME = 0;
    public static final int PARAMETER_TYPE__FORMAL_OID = 1;
    public static final int PARAMETER_TYPE__VALUE_NAME = 2;
    public static final int PARAMETER_TYPE__VALUE_OID = 3;
    public static final int PARAMETER_TYPE_FEATURE_COUNT = 4;
    public static final int PARAMETER_TYPE_OPERATION_COUNT = 0;
    public static final int POINT_T = 28;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int REFERENCE_DATA_T = 29;
    public static final int REFERENCE_DATA_T__LOCAL = 0;
    public static final int REFERENCE_DATA_T__EXTERNAL = 1;
    public static final int REFERENCE_DATA_T_FEATURE_COUNT = 2;
    public static final int REFERENCE_DATA_T_OPERATION_COUNT = 0;
    public static final int SCALAR_TYPE_T = 30;
    public static final int SCALAR_TYPE_T__ENUMERATION = 0;
    public static final int SCALAR_TYPE_T__NUMERIC = 1;
    public static final int SCALAR_TYPE_T__LOGIC = 2;
    public static final int SCALAR_TYPE_T_FEATURE_COUNT = 3;
    public static final int SCALAR_TYPE_T_OPERATION_COUNT = 0;
    public static final int SIZE_T = 31;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 32;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int TWO_DTYPE = 33;
    public static final int TWO_DTYPE__CURRENT_SIZE_X = 0;
    public static final int TWO_DTYPE__CURRENT_SIZE_Y = 1;
    public static final int TWO_DTYPE__XAXIS = 2;
    public static final int TWO_DTYPE__YAXIS = 3;
    public static final int TWO_DTYPE__XDISTRIBUTION = 4;
    public static final int TWO_DTYPE__YDISTRIBUTION = 5;
    public static final int TWO_DTYPE__VALUES = 6;
    public static final int TWO_DTYPE__EXTRAPOLATION = 7;
    public static final int TWO_DTYPE__INTERPOLATION = 8;
    public static final int TWO_DTYPE__TYPE = 9;
    public static final int TWO_DTYPE_FEATURE_COUNT = 10;
    public static final int TWO_DTYPE_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 34;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int CURVE_KIND_T = 35;
    public static final int EXTRAPOLATION_TYPE = 36;
    public static final int TYPE_TYPE = 37;
    public static final int CURVE_KIND_TOBJECT = 38;
    public static final int EXTRAPOLATION_TYPE_OBJECT = 39;
    public static final int NUMBER_OR_FRACTION = 40;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 41;
    public static final int NZQR = 42;
    public static final int NZQR_MEMBER2 = 43;
    public static final int OID = 44;
    public static final int TYPE_TYPE_OBJECT = 45;

    public EClass getArrayT();

    public EReference getArrayT_Value();

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getComplexDataT();

    public EAttribute getComplexDataT_Checksum();

    public EAttribute getComplexDataT_DataName();

    public EAttribute getComplexDataT_DataOID();

    public EClass getComponentDataType();

    public EReference getComponentDataType_DataSet();

    public EReference getComponentDataType_Signature();

    public EAttribute getComponentDataType_SchemaVersion();

    public EAttribute getComponentDataType_ToolVersion();

    public EClass getDataEntryT();

    public EReference getDataEntryT_DataVariant();

    public EReference getDataEntryT_CustomerData();

    public EAttribute getDataEntryT_ElementName();

    public EAttribute getDataEntryT_ElementOID();

    public EAttribute getDataEntryT_Ignore();

    public EClass getDataSetT();

    public EReference getDataSetT_TimeStamp();

    public EReference getDataSetT_Notes();

    public EReference getDataSetT_CustomerData();

    public EReference getDataSetT_DataEntry();

    public EAttribute getDataSetT_Checksum();

    public EAttribute getDataSetT_ClassConfig();

    public EAttribute getDataSetT_Default();

    public EAttribute getDataSetT_Name();

    public EAttribute getDataSetT_OID();

    public EAttribute getDataSetT_UUID();

    public EClass getDataVariantT();

    public EReference getDataVariantT_DimensionalType();

    public EReference getDataVariantT_ScalarType();

    public EReference getDataVariantT_ComplexType();

    public EReference getDataVariantT_ReferenceType();

    public EReference getDataVariantT_Dependency();

    public EReference getDataVariantT_DimensionalType1();

    public EReference getDataVariantT_ScalarType1();

    public EAttribute getDataVariantT_Name();

    public EAttribute getDataVariantT_OID();

    public EClass getDependencyT();

    public EReference getDependencyT_Parameter();

    public EClass getDimensionalDataT();

    public EAttribute getDimensionalDataT_CurrentSizeX();

    public EAttribute getDimensionalDataT_CurrentSizeY();

    public EClass getDimensionalTypeT();

    public EReference getDimensionalTypeT_OneD();

    public EReference getDimensionalTypeT_TwoD();

    public EReference getDimensionalTypeT_Distribution();

    public EReference getDimensionalTypeT_Array();

    public EReference getDimensionalTypeT_Matrix();

    public EClass getDistributionInfoT();

    public EAttribute getDistributionInfoT_ElementName();

    public EAttribute getDistributionInfoT_ElementOID();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_ComponentData();

    public EClass getEnumerationDataT();

    public EAttribute getEnumerationDataT_Value();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getGenericDataT();

    public EAttribute getGenericDataT_Any();

    public EAttribute getGenericDataT_Name();

    public EClass getIconT();

    public EReference getIconT_IconFile();

    public EReference getIconT_Size();

    public EAttribute getIconT_IconName();

    public EAttribute getIconT_IconOID();

    public EClass getIntervalT();

    public EAttribute getIntervalT_Max();

    public EAttribute getIntervalT_Min();

    public EClass getItemRefT();

    public EAttribute getItemRefT_Name();

    public EAttribute getItemRefT_OID();

    public EClass getLocalType();

    public EAttribute getLocalType_ElementName();

    public EAttribute getLocalType_ElementOID();

    public EClass getLogicDataT();

    public EAttribute getLogicDataT_Value();

    public EClass getMatrixT();

    public EReference getMatrixT_Row();

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getNumericDataT();

    public EAttribute getNumericDataT_Value();

    public EClass getOneDType();

    public EReference getOneDType_XAxis();

    public EReference getOneDType_XDistribution();

    public EReference getOneDType_Values();

    public EAttribute getOneDType_Extrapolation();

    public EAttribute getOneDType_Interpolation();

    public EAttribute getOneDType_Type();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getParameterType();

    public EAttribute getParameterType_FormalName();

    public EAttribute getParameterType_FormalOID();

    public EAttribute getParameterType_ValueName();

    public EAttribute getParameterType_ValueOID();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getReferenceDataT();

    public EReference getReferenceDataT_Local();

    public EReference getReferenceDataT_External();

    public EClass getScalarTypeT();

    public EReference getScalarTypeT_Enumeration();

    public EReference getScalarTypeT_Numeric();

    public EReference getScalarTypeT_Logic();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getTwoDType();

    public EReference getTwoDType_XAxis();

    public EReference getTwoDType_YAxis();

    public EReference getTwoDType_XDistribution();

    public EReference getTwoDType_YDistribution();

    public EReference getTwoDType_Values();

    public EAttribute getTwoDType_Extrapolation();

    public EAttribute getTwoDType_Interpolation();

    public EAttribute getTwoDType_Type();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EEnum getCurveKindT();

    public EEnum getExtrapolationType();

    public EEnum getTypeType();

    public EDataType getCurveKindTObject();

    public EDataType getExtrapolationTypeObject();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getTypeTypeObject();

    public ComponentDataFactory getComponentDataFactory();

    public static interface Literals {
        public static final EClass ARRAY_T = eINSTANCE.getArrayT();
        public static final EReference ARRAY_T__VALUE = eINSTANCE.getArrayT_Value();
        public static final EClass COLOR_T = eINSTANCE.getColorT();
        public static final EAttribute COLOR_T__BLUE = eINSTANCE.getColorT_Blue();
        public static final EAttribute COLOR_T__GREEN = eINSTANCE.getColorT_Green();
        public static final EAttribute COLOR_T__RED = eINSTANCE.getColorT_Red();
        public static final EClass COMPLEX_DATA_T = eINSTANCE.getComplexDataT();
        public static final EAttribute COMPLEX_DATA_T__CHECKSUM = eINSTANCE.getComplexDataT_Checksum();
        public static final EAttribute COMPLEX_DATA_T__DATA_NAME = eINSTANCE.getComplexDataT_DataName();
        public static final EAttribute COMPLEX_DATA_T__DATA_OID = eINSTANCE.getComplexDataT_DataOID();
        public static final EClass COMPONENT_DATA_TYPE = eINSTANCE.getComponentDataType();
        public static final EReference COMPONENT_DATA_TYPE__DATA_SET = eINSTANCE.getComponentDataType_DataSet();
        public static final EReference COMPONENT_DATA_TYPE__SIGNATURE = eINSTANCE.getComponentDataType_Signature();
        public static final EAttribute COMPONENT_DATA_TYPE__SCHEMA_VERSION = eINSTANCE.getComponentDataType_SchemaVersion();
        public static final EAttribute COMPONENT_DATA_TYPE__TOOL_VERSION = eINSTANCE.getComponentDataType_ToolVersion();
        public static final EClass DATA_ENTRY_T = eINSTANCE.getDataEntryT();
        public static final EReference DATA_ENTRY_T__DATA_VARIANT = eINSTANCE.getDataEntryT_DataVariant();
        public static final EReference DATA_ENTRY_T__CUSTOMER_DATA = eINSTANCE.getDataEntryT_CustomerData();
        public static final EAttribute DATA_ENTRY_T__ELEMENT_NAME = eINSTANCE.getDataEntryT_ElementName();
        public static final EAttribute DATA_ENTRY_T__ELEMENT_OID = eINSTANCE.getDataEntryT_ElementOID();
        public static final EAttribute DATA_ENTRY_T__IGNORE = eINSTANCE.getDataEntryT_Ignore();
        public static final EClass DATA_SET_T = eINSTANCE.getDataSetT();
        public static final EReference DATA_SET_T__TIME_STAMP = eINSTANCE.getDataSetT_TimeStamp();
        public static final EReference DATA_SET_T__NOTES = eINSTANCE.getDataSetT_Notes();
        public static final EReference DATA_SET_T__CUSTOMER_DATA = eINSTANCE.getDataSetT_CustomerData();
        public static final EReference DATA_SET_T__DATA_ENTRY = eINSTANCE.getDataSetT_DataEntry();
        public static final EAttribute DATA_SET_T__CHECKSUM = eINSTANCE.getDataSetT_Checksum();
        public static final EAttribute DATA_SET_T__CLASS_CONFIG = eINSTANCE.getDataSetT_ClassConfig();
        public static final EAttribute DATA_SET_T__DEFAULT = eINSTANCE.getDataSetT_Default();
        public static final EAttribute DATA_SET_T__NAME = eINSTANCE.getDataSetT_Name();
        public static final EAttribute DATA_SET_T__OID = eINSTANCE.getDataSetT_OID();
        public static final EAttribute DATA_SET_T__UUID = eINSTANCE.getDataSetT_UUID();
        public static final EClass DATA_VARIANT_T = eINSTANCE.getDataVariantT();
        public static final EReference DATA_VARIANT_T__DIMENSIONAL_TYPE = eINSTANCE.getDataVariantT_DimensionalType();
        public static final EReference DATA_VARIANT_T__SCALAR_TYPE = eINSTANCE.getDataVariantT_ScalarType();
        public static final EReference DATA_VARIANT_T__COMPLEX_TYPE = eINSTANCE.getDataVariantT_ComplexType();
        public static final EReference DATA_VARIANT_T__REFERENCE_TYPE = eINSTANCE.getDataVariantT_ReferenceType();
        public static final EReference DATA_VARIANT_T__DEPENDENCY = eINSTANCE.getDataVariantT_Dependency();
        public static final EReference DATA_VARIANT_T__DIMENSIONAL_TYPE1 = eINSTANCE.getDataVariantT_DimensionalType1();
        public static final EReference DATA_VARIANT_T__SCALAR_TYPE1 = eINSTANCE.getDataVariantT_ScalarType1();
        public static final EAttribute DATA_VARIANT_T__NAME = eINSTANCE.getDataVariantT_Name();
        public static final EAttribute DATA_VARIANT_T__OID = eINSTANCE.getDataVariantT_OID();
        public static final EClass DEPENDENCY_T = eINSTANCE.getDependencyT();
        public static final EReference DEPENDENCY_T__PARAMETER = eINSTANCE.getDependencyT_Parameter();
        public static final EClass DIMENSIONAL_DATA_T = eINSTANCE.getDimensionalDataT();
        public static final EAttribute DIMENSIONAL_DATA_T__CURRENT_SIZE_X = eINSTANCE.getDimensionalDataT_CurrentSizeX();
        public static final EAttribute DIMENSIONAL_DATA_T__CURRENT_SIZE_Y = eINSTANCE.getDimensionalDataT_CurrentSizeY();
        public static final EClass DIMENSIONAL_TYPE_T = eINSTANCE.getDimensionalTypeT();
        public static final EReference DIMENSIONAL_TYPE_T__ONE_D = eINSTANCE.getDimensionalTypeT_OneD();
        public static final EReference DIMENSIONAL_TYPE_T__TWO_D = eINSTANCE.getDimensionalTypeT_TwoD();
        public static final EReference DIMENSIONAL_TYPE_T__DISTRIBUTION = eINSTANCE.getDimensionalTypeT_Distribution();
        public static final EReference DIMENSIONAL_TYPE_T__ARRAY = eINSTANCE.getDimensionalTypeT_Array();
        public static final EReference DIMENSIONAL_TYPE_T__MATRIX = eINSTANCE.getDimensionalTypeT_Matrix();
        public static final EClass DISTRIBUTION_INFO_T = eINSTANCE.getDistributionInfoT();
        public static final EAttribute DISTRIBUTION_INFO_T__ELEMENT_NAME = eINSTANCE.getDistributionInfoT_ElementName();
        public static final EAttribute DISTRIBUTION_INFO_T__ELEMENT_OID = eINSTANCE.getDistributionInfoT_ElementOID();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__COMPONENT_DATA = eINSTANCE.getDocumentRoot_ComponentData();
        public static final EClass ENUMERATION_DATA_T = eINSTANCE.getEnumerationDataT();
        public static final EAttribute ENUMERATION_DATA_T__VALUE = eINSTANCE.getEnumerationDataT_Value();
        public static final EClass FILE_REFERENCE_T = eINSTANCE.getFileReferenceT();
        public static final EAttribute FILE_REFERENCE_T__VALUE = eINSTANCE.getFileReferenceT_Value();
        public static final EAttribute FILE_REFERENCE_T__CHECKSUM = eINSTANCE.getFileReferenceT_Checksum();
        public static final EAttribute FILE_REFERENCE_T__TYPE = eINSTANCE.getFileReferenceT_Type();
        public static final EClass FORMATTED_TEXT_T = eINSTANCE.getFormattedTextT();
        public static final EAttribute FORMATTED_TEXT_T__VALUE = eINSTANCE.getFormattedTextT_Value();
        public static final EClass GENERIC_DATA_T = eINSTANCE.getGenericDataT();
        public static final EAttribute GENERIC_DATA_T__ANY = eINSTANCE.getGenericDataT_Any();
        public static final EAttribute GENERIC_DATA_T__NAME = eINSTANCE.getGenericDataT_Name();
        public static final EClass ICON_T = eINSTANCE.getIconT();
        public static final EReference ICON_T__ICON_FILE = eINSTANCE.getIconT_IconFile();
        public static final EReference ICON_T__SIZE = eINSTANCE.getIconT_Size();
        public static final EAttribute ICON_T__ICON_NAME = eINSTANCE.getIconT_IconName();
        public static final EAttribute ICON_T__ICON_OID = eINSTANCE.getIconT_IconOID();
        public static final EClass INTERVAL_T = eINSTANCE.getIntervalT();
        public static final EAttribute INTERVAL_T__MAX = eINSTANCE.getIntervalT_Max();
        public static final EAttribute INTERVAL_T__MIN = eINSTANCE.getIntervalT_Min();
        public static final EClass ITEM_REF_T = eINSTANCE.getItemRefT();
        public static final EAttribute ITEM_REF_T__NAME = eINSTANCE.getItemRefT_Name();
        public static final EAttribute ITEM_REF_T__OID = eINSTANCE.getItemRefT_OID();
        public static final EClass LOCAL_TYPE = eINSTANCE.getLocalType();
        public static final EAttribute LOCAL_TYPE__ELEMENT_NAME = eINSTANCE.getLocalType_ElementName();
        public static final EAttribute LOCAL_TYPE__ELEMENT_OID = eINSTANCE.getLocalType_ElementOID();
        public static final EClass LOGIC_DATA_T = eINSTANCE.getLogicDataT();
        public static final EAttribute LOGIC_DATA_T__VALUE = eINSTANCE.getLogicDataT_Value();
        public static final EClass MATRIX_T = eINSTANCE.getMatrixT();
        public static final EReference MATRIX_T__ROW = eINSTANCE.getMatrixT_Row();
        public static final EClass NOTES_T = eINSTANCE.getNotesT();
        public static final EReference NOTES_T__NOTE = eINSTANCE.getNotesT_Note();
        public static final EClass NOTE_TYPE = eINSTANCE.getNoteType();
        public static final EReference NOTE_TYPE__TEXT = eINSTANCE.getNoteType_Text();
        public static final EReference NOTE_TYPE__VIEW = eINSTANCE.getNoteType_View();
        public static final EAttribute NOTE_TYPE__NAME = eINSTANCE.getNoteType_Name();
        public static final EClass NUMERIC_DATA_T = eINSTANCE.getNumericDataT();
        public static final EAttribute NUMERIC_DATA_T__VALUE = eINSTANCE.getNumericDataT_Value();
        public static final EClass ONE_DTYPE = eINSTANCE.getOneDType();
        public static final EReference ONE_DTYPE__XAXIS = eINSTANCE.getOneDType_XAxis();
        public static final EReference ONE_DTYPE__XDISTRIBUTION = eINSTANCE.getOneDType_XDistribution();
        public static final EReference ONE_DTYPE__VALUES = eINSTANCE.getOneDType_Values();
        public static final EAttribute ONE_DTYPE__EXTRAPOLATION = eINSTANCE.getOneDType_Extrapolation();
        public static final EAttribute ONE_DTYPE__INTERPOLATION = eINSTANCE.getOneDType_Interpolation();
        public static final EAttribute ONE_DTYPE__TYPE = eINSTANCE.getOneDType_Type();
        public static final EClass OPTION_T = eINSTANCE.getOptionT();
        public static final EAttribute OPTION_T__NAME = eINSTANCE.getOptionT_Name();
        public static final EAttribute OPTION_T__TYPE = eINSTANCE.getOptionT_Type();
        public static final EAttribute OPTION_T__VALUE = eINSTANCE.getOptionT_Value();
        public static final EClass PARAMETER_TYPE = eINSTANCE.getParameterType();
        public static final EAttribute PARAMETER_TYPE__FORMAL_NAME = eINSTANCE.getParameterType_FormalName();
        public static final EAttribute PARAMETER_TYPE__FORMAL_OID = eINSTANCE.getParameterType_FormalOID();
        public static final EAttribute PARAMETER_TYPE__VALUE_NAME = eINSTANCE.getParameterType_ValueName();
        public static final EAttribute PARAMETER_TYPE__VALUE_OID = eINSTANCE.getParameterType_ValueOID();
        public static final EClass POINT_T = eINSTANCE.getPointT();
        public static final EAttribute POINT_T__X = eINSTANCE.getPointT_X();
        public static final EAttribute POINT_T__Y = eINSTANCE.getPointT_Y();
        public static final EClass REFERENCE_DATA_T = eINSTANCE.getReferenceDataT();
        public static final EReference REFERENCE_DATA_T__LOCAL = eINSTANCE.getReferenceDataT_Local();
        public static final EReference REFERENCE_DATA_T__EXTERNAL = eINSTANCE.getReferenceDataT_External();
        public static final EClass SCALAR_TYPE_T = eINSTANCE.getScalarTypeT();
        public static final EReference SCALAR_TYPE_T__ENUMERATION = eINSTANCE.getScalarTypeT_Enumeration();
        public static final EReference SCALAR_TYPE_T__NUMERIC = eINSTANCE.getScalarTypeT_Numeric();
        public static final EReference SCALAR_TYPE_T__LOGIC = eINSTANCE.getScalarTypeT_Logic();
        public static final EClass SIZE_T = eINSTANCE.getSizeT();
        public static final EAttribute SIZE_T__X = eINSTANCE.getSizeT_X();
        public static final EAttribute SIZE_T__Y = eINSTANCE.getSizeT_Y();
        public static final EClass TIME_STAMP_T = eINSTANCE.getTimeStampT();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_COUNTER = eINSTANCE.getTimeStampT_TimeStampCounter();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_KEY = eINSTANCE.getTimeStampT_TimeStampKey();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_VALUE = eINSTANCE.getTimeStampT_TimeStampValue();
        public static final EClass TWO_DTYPE = eINSTANCE.getTwoDType();
        public static final EReference TWO_DTYPE__XAXIS = eINSTANCE.getTwoDType_XAxis();
        public static final EReference TWO_DTYPE__YAXIS = eINSTANCE.getTwoDType_YAxis();
        public static final EReference TWO_DTYPE__XDISTRIBUTION = eINSTANCE.getTwoDType_XDistribution();
        public static final EReference TWO_DTYPE__YDISTRIBUTION = eINSTANCE.getTwoDType_YDistribution();
        public static final EReference TWO_DTYPE__VALUES = eINSTANCE.getTwoDType_Values();
        public static final EAttribute TWO_DTYPE__EXTRAPOLATION = eINSTANCE.getTwoDType_Extrapolation();
        public static final EAttribute TWO_DTYPE__INTERPOLATION = eINSTANCE.getTwoDType_Interpolation();
        public static final EAttribute TWO_DTYPE__TYPE = eINSTANCE.getTwoDType_Type();
        public static final EClass VIEW_TYPE = eINSTANCE.getViewType();
        public static final EAttribute VIEW_TYPE__NAME = eINSTANCE.getViewType_Name();
        public static final EEnum CURVE_KIND_T = eINSTANCE.getCurveKindT();
        public static final EEnum EXTRAPOLATION_TYPE = eINSTANCE.getExtrapolationType();
        public static final EEnum TYPE_TYPE = eINSTANCE.getTypeType();
        public static final EDataType CURVE_KIND_TOBJECT = eINSTANCE.getCurveKindTObject();
        public static final EDataType EXTRAPOLATION_TYPE_OBJECT = eINSTANCE.getExtrapolationTypeObject();
        public static final EDataType NUMBER_OR_FRACTION = eINSTANCE.getNumberOrFraction();
        public static final EDataType NUMBER_OR_FRACTION_MEMBER1 = eINSTANCE.getNumberOrFractionMember1();
        public static final EDataType NZQR = eINSTANCE.getNzqr();
        public static final EDataType NZQR_MEMBER2 = eINSTANCE.getNzqrMember2();
        public static final EDataType OID = eINSTANCE.getOID();
        public static final EDataType TYPE_TYPE_OBJECT = eINSTANCE.getTypeTypeObject();
    }
}

