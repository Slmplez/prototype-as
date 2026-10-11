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
package com.etas.amd620.core.Formulas;

import com.etas.amd620.core.Formulas.FormulasFactory;
import com.etas.amd620.core.Formulas.impl.FormulasPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FormulasPackage
extends EPackage {
    public static final String eNAME = "Formulas";
    public static final String eNS_URI = "http://www.etas.com/ascet/amd/620/formulas";
    public static final String eNS_PREFIX = "Formulas";
    public static final FormulasPackage eINSTANCE = FormulasPackageImpl.init();
    public static final int COLOR_T = 0;
    public static final int COLOR_T__BLUE = 0;
    public static final int COLOR_T__GREEN = 1;
    public static final int COLOR_T__RED = 2;
    public static final int COLOR_T_FEATURE_COUNT = 3;
    public static final int COLOR_T_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 1;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__FORMULAS = 3;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 4;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int FILE_REFERENCE_T = 2;
    public static final int FILE_REFERENCE_T__VALUE = 0;
    public static final int FILE_REFERENCE_T__CHECKSUM = 1;
    public static final int FILE_REFERENCE_T__TYPE = 2;
    public static final int FILE_REFERENCE_T_FEATURE_COUNT = 3;
    public static final int FILE_REFERENCE_T_OPERATION_COUNT = 0;
    public static final int FORMATTED_TEXT_T = 3;
    public static final int FORMATTED_TEXT_T__VALUE = 0;
    public static final int FORMATTED_TEXT_T_FEATURE_COUNT = 1;
    public static final int FORMATTED_TEXT_T_OPERATION_COUNT = 0;
    public static final int FORMULA_COMPLEX_TYPE = 4;
    public static final int FORMULA_COMPLEX_TYPE__COMMENT = 0;
    public static final int FORMULA_COMPLEX_TYPE__PARAMETER = 1;
    public static final int FORMULA_COMPLEX_TYPE__NAME = 2;
    public static final int FORMULA_COMPLEX_TYPE__TYPE = 3;
    public static final int FORMULA_COMPLEX_TYPE__UNIT = 4;
    public static final int FORMULA_COMPLEX_TYPE_FEATURE_COUNT = 5;
    public static final int FORMULA_COMPLEX_TYPE_OPERATION_COUNT = 0;
    public static final int FORMULAS_TYPE = 5;
    public static final int FORMULAS_TYPE__FORMULA = 0;
    public static final int FORMULAS_TYPE__SIGNATURE = 1;
    public static final int FORMULAS_TYPE__SCHEMA_VERSION = 2;
    public static final int FORMULAS_TYPE__TOOL_VERSION = 3;
    public static final int FORMULAS_TYPE_FEATURE_COUNT = 4;
    public static final int FORMULAS_TYPE_OPERATION_COUNT = 0;
    public static final int GENERIC_DATA_T = 6;
    public static final int GENERIC_DATA_T__ANY = 0;
    public static final int GENERIC_DATA_T__NAME = 1;
    public static final int GENERIC_DATA_T_FEATURE_COUNT = 2;
    public static final int GENERIC_DATA_T_OPERATION_COUNT = 0;
    public static final int ICON_T = 7;
    public static final int ICON_T__ICON_FILE = 0;
    public static final int ICON_T__SIZE = 1;
    public static final int ICON_T__ICON_NAME = 2;
    public static final int ICON_T__ICON_OID = 3;
    public static final int ICON_T_FEATURE_COUNT = 4;
    public static final int ICON_T_OPERATION_COUNT = 0;
    public static final int INTERVAL_T = 8;
    public static final int INTERVAL_T__MAX = 0;
    public static final int INTERVAL_T__MIN = 1;
    public static final int INTERVAL_T_FEATURE_COUNT = 2;
    public static final int INTERVAL_T_OPERATION_COUNT = 0;
    public static final int ITEM_REF_T = 9;
    public static final int ITEM_REF_T__NAME = 0;
    public static final int ITEM_REF_T__OID = 1;
    public static final int ITEM_REF_T_FEATURE_COUNT = 2;
    public static final int ITEM_REF_T_OPERATION_COUNT = 0;
    public static final int NOTES_T = 10;
    public static final int NOTES_T__NOTE = 0;
    public static final int NOTES_T_FEATURE_COUNT = 1;
    public static final int NOTES_T_OPERATION_COUNT = 0;
    public static final int NOTE_TYPE = 11;
    public static final int NOTE_TYPE__TEXT = 0;
    public static final int NOTE_TYPE__VIEW = 1;
    public static final int NOTE_TYPE__NAME = 2;
    public static final int NOTE_TYPE_FEATURE_COUNT = 3;
    public static final int NOTE_TYPE_OPERATION_COUNT = 0;
    public static final int OPTION_T = 12;
    public static final int OPTION_T__NAME = 0;
    public static final int OPTION_T__TYPE = 1;
    public static final int OPTION_T__VALUE = 2;
    public static final int OPTION_T_FEATURE_COUNT = 3;
    public static final int OPTION_T_OPERATION_COUNT = 0;
    public static final int PARAMETER_TYPE = 13;
    public static final int PARAMETER_TYPE__VALUE = 0;
    public static final int PARAMETER_TYPE_FEATURE_COUNT = 1;
    public static final int PARAMETER_TYPE_OPERATION_COUNT = 0;
    public static final int POINT_T = 14;
    public static final int POINT_T__X = 0;
    public static final int POINT_T__Y = 1;
    public static final int POINT_T_FEATURE_COUNT = 2;
    public static final int POINT_T_OPERATION_COUNT = 0;
    public static final int SIZE_T = 15;
    public static final int SIZE_T__X = 0;
    public static final int SIZE_T__Y = 1;
    public static final int SIZE_T_FEATURE_COUNT = 2;
    public static final int SIZE_T_OPERATION_COUNT = 0;
    public static final int TIME_STAMP_T = 16;
    public static final int TIME_STAMP_T__TIME_STAMP_COUNTER = 0;
    public static final int TIME_STAMP_T__TIME_STAMP_KEY = 1;
    public static final int TIME_STAMP_T__TIME_STAMP_VALUE = 2;
    public static final int TIME_STAMP_T_FEATURE_COUNT = 3;
    public static final int TIME_STAMP_T_OPERATION_COUNT = 0;
    public static final int VIEW_TYPE = 17;
    public static final int VIEW_TYPE__NAME = 0;
    public static final int VIEW_TYPE_FEATURE_COUNT = 1;
    public static final int VIEW_TYPE_OPERATION_COUNT = 0;
    public static final int TYPE_TYPE = 18;
    public static final int NUMBER_OR_FRACTION = 19;
    public static final int NUMBER_OR_FRACTION_MEMBER1 = 20;
    public static final int NZQR = 21;
    public static final int NZQR_MEMBER2 = 22;
    public static final int OID = 23;
    public static final int TYPE_TYPE_OBJECT = 24;

    public EClass getColorT();

    public EAttribute getColorT_Blue();

    public EAttribute getColorT_Green();

    public EAttribute getColorT_Red();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_Formulas();

    public EClass getFileReferenceT();

    public EAttribute getFileReferenceT_Value();

    public EAttribute getFileReferenceT_Checksum();

    public EAttribute getFileReferenceT_Type();

    public EClass getFormattedTextT();

    public EAttribute getFormattedTextT_Value();

    public EClass getFormulaComplexType();

    public EReference getFormulaComplexType_Comment();

    public EReference getFormulaComplexType_Parameter();

    public EAttribute getFormulaComplexType_Name();

    public EAttribute getFormulaComplexType_Type();

    public EAttribute getFormulaComplexType_Unit();

    public EClass getFormulasType();

    public EReference getFormulasType_Formula();

    public EReference getFormulasType_Signature();

    public EAttribute getFormulasType_SchemaVersion();

    public EAttribute getFormulasType_ToolVersion();

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

    public EClass getNotesT();

    public EReference getNotesT_Note();

    public EClass getNoteType();

    public EReference getNoteType_Text();

    public EReference getNoteType_View();

    public EAttribute getNoteType_Name();

    public EClass getOptionT();

    public EAttribute getOptionT_Name();

    public EAttribute getOptionT_Type();

    public EAttribute getOptionT_Value();

    public EClass getParameterType();

    public EAttribute getParameterType_Value();

    public EClass getPointT();

    public EAttribute getPointT_X();

    public EAttribute getPointT_Y();

    public EClass getSizeT();

    public EAttribute getSizeT_X();

    public EAttribute getSizeT_Y();

    public EClass getTimeStampT();

    public EAttribute getTimeStampT_TimeStampCounter();

    public EAttribute getTimeStampT_TimeStampKey();

    public EAttribute getTimeStampT_TimeStampValue();

    public EClass getViewType();

    public EAttribute getViewType_Name();

    public EEnum getTypeType();

    public EDataType getNumberOrFraction();

    public EDataType getNumberOrFractionMember1();

    public EDataType getNzqr();

    public EDataType getNzqrMember2();

    public EDataType getOID();

    public EDataType getTypeTypeObject();

    public FormulasFactory getFormulasFactory();

    public static interface Literals {
        public static final EClass COLOR_T = eINSTANCE.getColorT();
        public static final EAttribute COLOR_T__BLUE = eINSTANCE.getColorT_Blue();
        public static final EAttribute COLOR_T__GREEN = eINSTANCE.getColorT_Green();
        public static final EAttribute COLOR_T__RED = eINSTANCE.getColorT_Red();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__FORMULAS = eINSTANCE.getDocumentRoot_Formulas();
        public static final EClass FILE_REFERENCE_T = eINSTANCE.getFileReferenceT();
        public static final EAttribute FILE_REFERENCE_T__VALUE = eINSTANCE.getFileReferenceT_Value();
        public static final EAttribute FILE_REFERENCE_T__CHECKSUM = eINSTANCE.getFileReferenceT_Checksum();
        public static final EAttribute FILE_REFERENCE_T__TYPE = eINSTANCE.getFileReferenceT_Type();
        public static final EClass FORMATTED_TEXT_T = eINSTANCE.getFormattedTextT();
        public static final EAttribute FORMATTED_TEXT_T__VALUE = eINSTANCE.getFormattedTextT_Value();
        public static final EClass FORMULA_COMPLEX_TYPE = eINSTANCE.getFormulaComplexType();
        public static final EReference FORMULA_COMPLEX_TYPE__COMMENT = eINSTANCE.getFormulaComplexType_Comment();
        public static final EReference FORMULA_COMPLEX_TYPE__PARAMETER = eINSTANCE.getFormulaComplexType_Parameter();
        public static final EAttribute FORMULA_COMPLEX_TYPE__NAME = eINSTANCE.getFormulaComplexType_Name();
        public static final EAttribute FORMULA_COMPLEX_TYPE__TYPE = eINSTANCE.getFormulaComplexType_Type();
        public static final EAttribute FORMULA_COMPLEX_TYPE__UNIT = eINSTANCE.getFormulaComplexType_Unit();
        public static final EClass FORMULAS_TYPE = eINSTANCE.getFormulasType();
        public static final EReference FORMULAS_TYPE__FORMULA = eINSTANCE.getFormulasType_Formula();
        public static final EReference FORMULAS_TYPE__SIGNATURE = eINSTANCE.getFormulasType_Signature();
        public static final EAttribute FORMULAS_TYPE__SCHEMA_VERSION = eINSTANCE.getFormulasType_SchemaVersion();
        public static final EAttribute FORMULAS_TYPE__TOOL_VERSION = eINSTANCE.getFormulasType_ToolVersion();
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
        public static final EClass NOTES_T = eINSTANCE.getNotesT();
        public static final EReference NOTES_T__NOTE = eINSTANCE.getNotesT_Note();
        public static final EClass NOTE_TYPE = eINSTANCE.getNoteType();
        public static final EReference NOTE_TYPE__TEXT = eINSTANCE.getNoteType_Text();
        public static final EReference NOTE_TYPE__VIEW = eINSTANCE.getNoteType_View();
        public static final EAttribute NOTE_TYPE__NAME = eINSTANCE.getNoteType_Name();
        public static final EClass OPTION_T = eINSTANCE.getOptionT();
        public static final EAttribute OPTION_T__NAME = eINSTANCE.getOptionT_Name();
        public static final EAttribute OPTION_T__TYPE = eINSTANCE.getOptionT_Type();
        public static final EAttribute OPTION_T__VALUE = eINSTANCE.getOptionT_Value();
        public static final EClass PARAMETER_TYPE = eINSTANCE.getParameterType();
        public static final EAttribute PARAMETER_TYPE__VALUE = eINSTANCE.getParameterType_Value();
        public static final EClass POINT_T = eINSTANCE.getPointT();
        public static final EAttribute POINT_T__X = eINSTANCE.getPointT_X();
        public static final EAttribute POINT_T__Y = eINSTANCE.getPointT_Y();
        public static final EClass SIZE_T = eINSTANCE.getSizeT();
        public static final EAttribute SIZE_T__X = eINSTANCE.getSizeT_X();
        public static final EAttribute SIZE_T__Y = eINSTANCE.getSizeT_Y();
        public static final EClass TIME_STAMP_T = eINSTANCE.getTimeStampT();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_COUNTER = eINSTANCE.getTimeStampT_TimeStampCounter();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_KEY = eINSTANCE.getTimeStampT_TimeStampKey();
        public static final EAttribute TIME_STAMP_T__TIME_STAMP_VALUE = eINSTANCE.getTimeStampT_TimeStampValue();
        public static final EClass VIEW_TYPE = eINSTANCE.getViewType();
        public static final EAttribute VIEW_TYPE__NAME = eINSTANCE.getViewType_Name();
        public static final EEnum TYPE_TYPE = eINSTANCE.getTypeType();
        public static final EDataType NUMBER_OR_FRACTION = eINSTANCE.getNumberOrFraction();
        public static final EDataType NUMBER_OR_FRACTION_MEMBER1 = eINSTANCE.getNumberOrFractionMember1();
        public static final EDataType NZQR = eINSTANCE.getNzqr();
        public static final EDataType NZQR_MEMBER2 = eINSTANCE.getNzqrMember2();
        public static final EDataType OID = eINSTANCE.getOID();
        public static final EDataType TYPE_TYPE_OBJECT = eINSTANCE.getTypeTypeObject();
    }
}

