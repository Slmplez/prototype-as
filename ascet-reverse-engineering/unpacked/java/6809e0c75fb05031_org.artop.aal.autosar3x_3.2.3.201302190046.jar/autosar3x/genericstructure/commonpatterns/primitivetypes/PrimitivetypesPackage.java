/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesFactory;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;

public interface PrimitivetypesPackage
extends EPackage {
    public static final String eNAME = "primitivetypes";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/pt";
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
    public static final int STRING = 4;
    public static final int IDENTIFIER = 5;
    public static final int EXT_ID_CLASS_ENUM = 6;
    public static final int NAME_TOKEN = 7;
    public static final int MIME_TYPE_STRING = 8;
    public static final int URI_STRING = 9;
    public static final int ADDRESS = 10;
    public static final int BOOLEAN = 11;
    public static final int FLOAT = 12;
    public static final int INTEGER = 13;
    public static final int UNLIMITED_INTEGER = 14;
    public static final int REGULAR_EXPRESSION = 15;
    public static final int DATE_TIME = 16;

    public EClass getStringContainer();

    public EAttribute getStringContainer_Value();

    public EClass getFloatContainer();

    public EAttribute getFloatContainer_Value();

    public EClass getIntegerContainer();

    public EAttribute getIntegerContainer_Value();

    public EClass getBooleanContainer();

    public EAttribute getBooleanContainer_Value();

    public EDataType getString();

    public EDataType getIdentifier();

    public EDataType getExtIdClassEnum();

    public EDataType getNameToken();

    public EDataType getMimeTypeString();

    public EDataType getUriString();

    public EDataType getAddress();

    public EDataType getBoolean();

    public EDataType getFloat();

    public EDataType getInteger();

    public EDataType getUnlimitedInteger();

    public EDataType getRegularExpression();

    public EDataType getDateTime();

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
        public static final EDataType STRING = eINSTANCE.getString();
        public static final EDataType IDENTIFIER = eINSTANCE.getIdentifier();
        public static final EDataType EXT_ID_CLASS_ENUM = eINSTANCE.getExtIdClassEnum();
        public static final EDataType NAME_TOKEN = eINSTANCE.getNameToken();
        public static final EDataType MIME_TYPE_STRING = eINSTANCE.getMimeTypeString();
        public static final EDataType URI_STRING = eINSTANCE.getUriString();
        public static final EDataType ADDRESS = eINSTANCE.getAddress();
        public static final EDataType BOOLEAN = eINSTANCE.getBoolean();
        public static final EDataType FLOAT = eINSTANCE.getFloat();
        public static final EDataType INTEGER = eINSTANCE.getInteger();
        public static final EDataType UNLIMITED_INTEGER = eINSTANCE.getUnlimitedInteger();
        public static final EDataType REGULAR_EXPRESSION = eINSTANCE.getRegularExpression();
        public static final EDataType DATE_TIME = eINSTANCE.getDateTime();
    }
}

