/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.PrimitivetypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface PrimitivetypesPackage
extends EPackage {
    public static final String eNAME = "primitivetypes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt";
    public static final String eNS_PREFIX = "";
    public static final PrimitivetypesPackage eINSTANCE = PrimitivetypesPackageImpl.init();
    public static final int STRING_CONTAINER = 0;
    public static final int STRING_CONTAINER__GCHECKSUM = 0;
    public static final int STRING_CONTAINER__GTIMESTAMP = 1;
    public static final int STRING_CONTAINER__CHECKSUM = 2;
    public static final int STRING_CONTAINER__TIMESTAMP = 3;
    public static final int STRING_CONTAINER__VALUE = 4;
    public static final int STRING_CONTAINER_FEATURE_COUNT = 5;
    public static final int FLOAT_CONTAINER = 1;
    public static final int FLOAT_CONTAINER__GCHECKSUM = 0;
    public static final int FLOAT_CONTAINER__GTIMESTAMP = 1;
    public static final int FLOAT_CONTAINER__CHECKSUM = 2;
    public static final int FLOAT_CONTAINER__TIMESTAMP = 3;
    public static final int FLOAT_CONTAINER__VALUE = 4;
    public static final int FLOAT_CONTAINER_FEATURE_COUNT = 5;
    public static final int INTEGER_CONTAINER = 2;
    public static final int INTEGER_CONTAINER__GCHECKSUM = 0;
    public static final int INTEGER_CONTAINER__GTIMESTAMP = 1;
    public static final int INTEGER_CONTAINER__CHECKSUM = 2;
    public static final int INTEGER_CONTAINER__TIMESTAMP = 3;
    public static final int INTEGER_CONTAINER__VALUE = 4;
    public static final int INTEGER_CONTAINER_FEATURE_COUNT = 5;
    public static final int BOOLEAN_CONTAINER = 3;
    public static final int BOOLEAN_CONTAINER__GCHECKSUM = 0;
    public static final int BOOLEAN_CONTAINER__GTIMESTAMP = 1;
    public static final int BOOLEAN_CONTAINER__CHECKSUM = 2;
    public static final int BOOLEAN_CONTAINER__TIMESTAMP = 3;
    public static final int BOOLEAN_CONTAINER__VALUE = 4;
    public static final int BOOLEAN_CONTAINER_FEATURE_COUNT = 5;
    public static final int BYTE_ORDER_ENUM = 4;
    public static final int MONOTONY_ENUM = 5;
    public static final int ARGUMENT_DIRECTION_ENUM = 6;
    public static final int ADDRESS = 7;
    public static final int ALIGNMENT_TYPE = 8;
    public static final int BOOLEAN = 9;
    public static final int CATEGORY_STRING = 10;
    public static final int STRING = 11;
    public static final int DATE_TIME = 12;
    public static final int FLOAT = 13;
    public static final int INTEGER = 14;
    public static final int MIME_TYPE_STRING = 15;
    public static final int NAME_TOKEN = 16;
    public static final int NATIVE_DECLARATION_STRING = 17;
    public static final int NUMERICAL = 18;
    public static final int POSITIVE_INTEGER = 19;
    public static final int REGULAR_EXPRESSION = 20;
    public static final int REVISION_LABEL_STRING = 21;
    public static final int SECTION_INITIALIZATION_POLICY_TYPE = 22;
    public static final int TIME_VALUE = 23;
    public static final int UNLIMITED_INTEGER = 24;
    public static final int URI_STRING = 25;
    public static final int VERBATIM_STRING = 26;
    public static final int DISPLAY_FORMAT_STRING = 27;
    public static final int NAME_TOKENS = 28;
    public static final int CIDENTIFIER = 29;
    public static final int IDENTIFIER = 30;
    public static final int REF = 31;
    public static final int INTEGER_DATATYPE = 32;
    public static final int POSITIVE_INTEGER_DATATYPE = 33;
    public static final int UNLIMITED_INTEGER_DATATYPE = 34;

    public EClass getStringContainer();

    public EAttribute getStringContainer_Value();

    public EClass getFloatContainer();

    public EAttribute getFloatContainer_Value();

    public EClass getIntegerContainer();

    public EAttribute getIntegerContainer_Value();

    public EClass getBooleanContainer();

    public EAttribute getBooleanContainer_Value();

    public EEnum getByteOrderEnum();

    public EEnum getMonotonyEnum();

    public EEnum getArgumentDirectionEnum();

    public EDataType getAddress();

    public EDataType getAlignmentType();

    public EDataType getBoolean();

    public EDataType getCategoryString();

    public EDataType getString();

    public EDataType getDateTime();

    public EDataType getFloat();

    public EDataType getInteger();

    public EDataType getMimeTypeString();

    public EDataType getNameToken();

    public EDataType getNativeDeclarationString();

    public EDataType getNumerical();

    public EDataType getPositiveInteger();

    public EDataType getRegularExpression();

    public EDataType getRevisionLabelString();

    public EDataType getSectionInitializationPolicyType();

    public EDataType getTimeValue();

    public EDataType getUnlimitedInteger();

    public EDataType getUriString();

    public EDataType getVerbatimString();

    public EDataType getDisplayFormatString();

    public EDataType getNameTokens();

    public EDataType getCIdentifier();

    public EDataType getIdentifier();

    public EDataType getRef();

    public EDataType getIntegerDatatype();

    public EDataType getPositiveIntegerDatatype();

    public EDataType getUnlimitedIntegerDatatype();

    public PrimitivetypesFactory getPrimitivetypesFactory();

    public static interface Literals {
        public static final EClass STRING_CONTAINER = eINSTANCE.getStringContainer();
        public static final EAttribute STRING_CONTAINER__VALUE = eINSTANCE.getStringContainer_Value();
        public static final EClass FLOAT_CONTAINER = eINSTANCE.getFloatContainer();
        public static final EAttribute FLOAT_CONTAINER__VALUE = eINSTANCE.getFloatContainer_Value();
        public static final EClass INTEGER_CONTAINER = eINSTANCE.getIntegerContainer();
        public static final EAttribute INTEGER_CONTAINER__VALUE = eINSTANCE.getIntegerContainer_Value();
        public static final EClass BOOLEAN_CONTAINER = eINSTANCE.getBooleanContainer();
        public static final EAttribute BOOLEAN_CONTAINER__VALUE = eINSTANCE.getBooleanContainer_Value();
        public static final EEnum BYTE_ORDER_ENUM = eINSTANCE.getByteOrderEnum();
        public static final EEnum MONOTONY_ENUM = eINSTANCE.getMonotonyEnum();
        public static final EEnum ARGUMENT_DIRECTION_ENUM = eINSTANCE.getArgumentDirectionEnum();
        public static final EDataType ADDRESS = eINSTANCE.getAddress();
        public static final EDataType ALIGNMENT_TYPE = eINSTANCE.getAlignmentType();
        public static final EDataType BOOLEAN = eINSTANCE.getBoolean();
        public static final EDataType CATEGORY_STRING = eINSTANCE.getCategoryString();
        public static final EDataType STRING = eINSTANCE.getString();
        public static final EDataType DATE_TIME = eINSTANCE.getDateTime();
        public static final EDataType FLOAT = eINSTANCE.getFloat();
        public static final EDataType INTEGER = eINSTANCE.getInteger();
        public static final EDataType MIME_TYPE_STRING = eINSTANCE.getMimeTypeString();
        public static final EDataType NAME_TOKEN = eINSTANCE.getNameToken();
        public static final EDataType NATIVE_DECLARATION_STRING = eINSTANCE.getNativeDeclarationString();
        public static final EDataType NUMERICAL = eINSTANCE.getNumerical();
        public static final EDataType POSITIVE_INTEGER = eINSTANCE.getPositiveInteger();
        public static final EDataType REGULAR_EXPRESSION = eINSTANCE.getRegularExpression();
        public static final EDataType REVISION_LABEL_STRING = eINSTANCE.getRevisionLabelString();
        public static final EDataType SECTION_INITIALIZATION_POLICY_TYPE = eINSTANCE.getSectionInitializationPolicyType();
        public static final EDataType TIME_VALUE = eINSTANCE.getTimeValue();
        public static final EDataType UNLIMITED_INTEGER = eINSTANCE.getUnlimitedInteger();
        public static final EDataType URI_STRING = eINSTANCE.getUriString();
        public static final EDataType VERBATIM_STRING = eINSTANCE.getVerbatimString();
        public static final EDataType DISPLAY_FORMAT_STRING = eINSTANCE.getDisplayFormatString();
        public static final EDataType NAME_TOKENS = eINSTANCE.getNameTokens();
        public static final EDataType CIDENTIFIER = eINSTANCE.getCIdentifier();
        public static final EDataType IDENTIFIER = eINSTANCE.getIdentifier();
        public static final EDataType REF = eINSTANCE.getRef();
        public static final EDataType INTEGER_DATATYPE = eINSTANCE.getIntegerDatatype();
        public static final EDataType POSITIVE_INTEGER_DATATYPE = eINSTANCE.getPositiveIntegerDatatype();
        public static final EDataType UNLIMITED_INTEGER_DATATYPE = eINSTANCE.getUnlimitedIntegerDatatype();
    }
}

