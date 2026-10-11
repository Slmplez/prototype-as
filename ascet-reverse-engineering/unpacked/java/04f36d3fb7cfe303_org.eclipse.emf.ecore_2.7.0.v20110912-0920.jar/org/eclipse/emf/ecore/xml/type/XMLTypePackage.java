/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.impl.XMLTypePackageImpl;

public interface XMLTypePackage
extends EPackage {
    public static final String eNAME = "type";
    public static final String eNS_URI = "http://www.eclipse.org/emf/2003/XMLType";
    public static final String eNS_PREFIX = "ecore.xml.type";
    public static final XMLTypePackage eINSTANCE = XMLTypePackageImpl.init();
    public static final int ANY_TYPE = 0;
    public static final int ANY_TYPE__MIXED = 0;
    public static final int ANY_TYPE__ANY = 1;
    public static final int ANY_TYPE__ANY_ATTRIBUTE = 2;
    public static final int ANY_TYPE_FEATURE_COUNT = 3;
    public static final int PROCESSING_INSTRUCTION = 1;
    public static final int PROCESSING_INSTRUCTION__DATA = 0;
    public static final int PROCESSING_INSTRUCTION__TARGET = 1;
    public static final int PROCESSING_INSTRUCTION_FEATURE_COUNT = 2;
    public static final int SIMPLE_ANY_TYPE = 2;
    public static final int SIMPLE_ANY_TYPE__MIXED = 0;
    public static final int SIMPLE_ANY_TYPE__ANY = 1;
    public static final int SIMPLE_ANY_TYPE__ANY_ATTRIBUTE = 2;
    public static final int SIMPLE_ANY_TYPE__RAW_VALUE = 3;
    public static final int SIMPLE_ANY_TYPE__VALUE = 4;
    public static final int SIMPLE_ANY_TYPE__INSTANCE_TYPE = 5;
    public static final int SIMPLE_ANY_TYPE_FEATURE_COUNT = 6;
    public static final int XML_TYPE_DOCUMENT_ROOT = 3;
    public static final int XML_TYPE_DOCUMENT_ROOT__MIXED = 0;
    public static final int XML_TYPE_DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int XML_TYPE_DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int XML_TYPE_DOCUMENT_ROOT__CDATA = 3;
    public static final int XML_TYPE_DOCUMENT_ROOT__COMMENT = 4;
    public static final int XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION = 5;
    public static final int XML_TYPE_DOCUMENT_ROOT__TEXT = 6;
    public static final int XML_TYPE_DOCUMENT_ROOT_FEATURE_COUNT = 7;
    public static final int ANY_SIMPLE_TYPE = 4;
    public static final int ANY_URI = 5;
    public static final int BASE64_BINARY = 6;
    public static final int BOOLEAN = 7;
    public static final int BOOLEAN_OBJECT = 8;
    public static final int DECIMAL = 13;
    public static final int INTEGER = 33;
    public static final int INT_OBJECT = 34;
    public static final int LONG = 36;
    public static final int LONG_OBJECT = 37;
    public static final int INT = 32;
    public static final int SHORT = 50;
    public static final int SHORT_OBJECT = 51;
    public static final int BYTE = 9;
    public static final int BYTE_OBJECT = 10;
    public static final int DATE = 11;
    public static final int DATE_TIME = 12;
    public static final int STRING = 52;
    public static final int DOUBLE = 14;
    public static final int DOUBLE_OBJECT = 15;
    public static final int DURATION = 16;
    public static final int ENTITIES_BASE = 18;
    public static final int NORMALIZED_STRING = 46;
    public static final int TOKEN = 54;
    public static final int NAME = 38;
    public static final int NC_NAME = 39;
    public static final int ENTITY = 19;
    public static final int ENTITIES = 17;
    public static final int FLOAT = 20;
    public static final int FLOAT_OBJECT = 21;
    public static final int GDAY = 22;
    public static final int GMONTH = 23;
    public static final int GMONTH_DAY = 24;
    public static final int GYEAR = 25;
    public static final int GYEAR_MONTH = 26;
    public static final int HEX_BINARY = 27;
    public static final int ID = 28;
    public static final int IDREF = 29;
    public static final int IDREFS_BASE = 31;
    public static final int IDREFS = 30;
    public static final int LANGUAGE = 35;
    public static final int NON_POSITIVE_INTEGER = 45;
    public static final int NEGATIVE_INTEGER = 40;
    public static final int NMTOKEN = 41;
    public static final int NMTOKENS_BASE = 43;
    public static final int NMTOKENS = 42;
    public static final int NON_NEGATIVE_INTEGER = 44;
    public static final int NOTATION = 47;
    public static final int POSITIVE_INTEGER = 48;
    public static final int QNAME = 49;
    public static final int TIME = 53;
    public static final int UNSIGNED_LONG = 59;
    public static final int UNSIGNED_INT = 57;
    public static final int UNSIGNED_INT_OBJECT = 58;
    public static final int UNSIGNED_SHORT = 60;
    public static final int UNSIGNED_SHORT_OBJECT = 61;
    public static final int UNSIGNED_BYTE = 55;
    public static final int UNSIGNED_BYTE_OBJECT = 56;

    public EClass getAnyType();

    public EAttribute getAnyType_Mixed();

    public EAttribute getAnyType_Any();

    public EAttribute getAnyType_AnyAttribute();

    public EClass getProcessingInstruction();

    public EAttribute getProcessingInstruction_Data();

    public EAttribute getProcessingInstruction_Target();

    public EClass getSimpleAnyType();

    public EAttribute getSimpleAnyType_RawValue();

    public EAttribute getSimpleAnyType_Value();

    public EReference getSimpleAnyType_InstanceType();

    public EClass getXMLTypeDocumentRoot();

    public EAttribute getXMLTypeDocumentRoot_Mixed();

    public EReference getXMLTypeDocumentRoot_XMLNSPrefixMap();

    public EReference getXMLTypeDocumentRoot_XSISchemaLocation();

    public EAttribute getXMLTypeDocumentRoot_CDATA();

    public EAttribute getXMLTypeDocumentRoot_Comment();

    public EAttribute getXMLTypeDocumentRoot_Text();

    public EReference getXMLTypeDocumentRoot_ProcessingInstruction();

    public EDataType getAnySimpleType();

    public EDataType getAnyURI();

    public EDataType getBase64Binary();

    public EDataType getBoolean();

    public EDataType getBooleanObject();

    public EDataType getDecimal();

    public EDataType getInteger();

    public EDataType getIntObject();

    public EDataType getLong();

    public EDataType getLongObject();

    public EDataType getInt();

    public EDataType getShort();

    public EDataType getShortObject();

    public EDataType getByte();

    public EDataType getByteObject();

    public EDataType getDate();

    public EDataType getDateTime();

    public EDataType getString();

    public EDataType getDouble();

    public EDataType getDoubleObject();

    public EDataType getDuration();

    public EDataType getENTITIESBase();

    public EDataType getNormalizedString();

    public EDataType getToken();

    public EDataType getName_();

    public EDataType getNCName();

    public EDataType getENTITY();

    public EDataType getENTITIES();

    public EDataType getFloat();

    public EDataType getFloatObject();

    public EDataType getGDay();

    public EDataType getGMonth();

    public EDataType getGMonthDay();

    public EDataType getGYear();

    public EDataType getGYearMonth();

    public EDataType getHexBinary();

    public EDataType getID();

    public EDataType getIDREF();

    public EDataType getIDREFSBase();

    public EDataType getIDREFS();

    public EDataType getLanguage();

    public EDataType getNonPositiveInteger();

    public EDataType getNegativeInteger();

    public EDataType getNMTOKEN();

    public EDataType getNMTOKENSBase();

    public EDataType getNMTOKENS();

    public EDataType getNonNegativeInteger();

    public EDataType getNOTATION();

    public EDataType getPositiveInteger();

    public EDataType getQName();

    public EDataType getTime();

    public EDataType getUnsignedLong();

    public EDataType getUnsignedInt();

    public EDataType getUnsignedIntObject();

    public EDataType getUnsignedShort();

    public EDataType getUnsignedShortObject();

    public EDataType getUnsignedByte();

    public EDataType getUnsignedByteObject();

    public XMLTypeFactory getXMLTypeFactory();

    public static interface Literals {
        public static final EClass ANY_TYPE = eINSTANCE.getAnyType();
        public static final EAttribute ANY_TYPE__MIXED = eINSTANCE.getAnyType_Mixed();
        public static final EAttribute ANY_TYPE__ANY = eINSTANCE.getAnyType_Any();
        public static final EAttribute ANY_TYPE__ANY_ATTRIBUTE = eINSTANCE.getAnyType_AnyAttribute();
        public static final EClass PROCESSING_INSTRUCTION = eINSTANCE.getProcessingInstruction();
        public static final EAttribute PROCESSING_INSTRUCTION__DATA = eINSTANCE.getProcessingInstruction_Data();
        public static final EAttribute PROCESSING_INSTRUCTION__TARGET = eINSTANCE.getProcessingInstruction_Target();
        public static final EClass SIMPLE_ANY_TYPE = eINSTANCE.getSimpleAnyType();
        public static final EAttribute SIMPLE_ANY_TYPE__RAW_VALUE = eINSTANCE.getSimpleAnyType_RawValue();
        public static final EAttribute SIMPLE_ANY_TYPE__VALUE = eINSTANCE.getSimpleAnyType_Value();
        public static final EReference SIMPLE_ANY_TYPE__INSTANCE_TYPE = eINSTANCE.getSimpleAnyType_InstanceType();
        public static final EClass XML_TYPE_DOCUMENT_ROOT = eINSTANCE.getXMLTypeDocumentRoot();
        public static final EAttribute XML_TYPE_DOCUMENT_ROOT__MIXED = eINSTANCE.getXMLTypeDocumentRoot_Mixed();
        public static final EReference XML_TYPE_DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getXMLTypeDocumentRoot_XMLNSPrefixMap();
        public static final EReference XML_TYPE_DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getXMLTypeDocumentRoot_XSISchemaLocation();
        public static final EAttribute XML_TYPE_DOCUMENT_ROOT__CDATA = eINSTANCE.getXMLTypeDocumentRoot_CDATA();
        public static final EAttribute XML_TYPE_DOCUMENT_ROOT__COMMENT = eINSTANCE.getXMLTypeDocumentRoot_Comment();
        public static final EAttribute XML_TYPE_DOCUMENT_ROOT__TEXT = eINSTANCE.getXMLTypeDocumentRoot_Text();
        public static final EReference XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION = eINSTANCE.getXMLTypeDocumentRoot_ProcessingInstruction();
        public static final EDataType ANY_SIMPLE_TYPE = eINSTANCE.getAnySimpleType();
        public static final EDataType ANY_URI = eINSTANCE.getAnyURI();
        public static final EDataType BASE64_BINARY = eINSTANCE.getBase64Binary();
        public static final EDataType BOOLEAN = eINSTANCE.getBoolean();
        public static final EDataType BOOLEAN_OBJECT = eINSTANCE.getBooleanObject();
        public static final EDataType BYTE = eINSTANCE.getByte();
        public static final EDataType BYTE_OBJECT = eINSTANCE.getByteObject();
        public static final EDataType DATE = eINSTANCE.getDate();
        public static final EDataType DATE_TIME = eINSTANCE.getDateTime();
        public static final EDataType DECIMAL = eINSTANCE.getDecimal();
        public static final EDataType DOUBLE = eINSTANCE.getDouble();
        public static final EDataType DOUBLE_OBJECT = eINSTANCE.getDoubleObject();
        public static final EDataType DURATION = eINSTANCE.getDuration();
        public static final EDataType ENTITIES = eINSTANCE.getENTITIES();
        public static final EDataType ENTITIES_BASE = eINSTANCE.getENTITIESBase();
        public static final EDataType ENTITY = eINSTANCE.getENTITY();
        public static final EDataType FLOAT = eINSTANCE.getFloat();
        public static final EDataType FLOAT_OBJECT = eINSTANCE.getFloatObject();
        public static final EDataType GDAY = eINSTANCE.getGDay();
        public static final EDataType GMONTH = eINSTANCE.getGMonth();
        public static final EDataType GMONTH_DAY = eINSTANCE.getGMonthDay();
        public static final EDataType GYEAR = eINSTANCE.getGYear();
        public static final EDataType GYEAR_MONTH = eINSTANCE.getGYearMonth();
        public static final EDataType HEX_BINARY = eINSTANCE.getHexBinary();
        public static final EDataType ID = eINSTANCE.getID();
        public static final EDataType IDREF = eINSTANCE.getIDREF();
        public static final EDataType IDREFS = eINSTANCE.getIDREFS();
        public static final EDataType IDREFS_BASE = eINSTANCE.getIDREFSBase();
        public static final EDataType INT = eINSTANCE.getInt();
        public static final EDataType INTEGER = eINSTANCE.getInteger();
        public static final EDataType INT_OBJECT = eINSTANCE.getIntObject();
        public static final EDataType LANGUAGE = eINSTANCE.getLanguage();
        public static final EDataType LONG = eINSTANCE.getLong();
        public static final EDataType LONG_OBJECT = eINSTANCE.getLongObject();
        public static final EDataType NAME = eINSTANCE.getName_();
        public static final EDataType NC_NAME = eINSTANCE.getNCName();
        public static final EDataType NEGATIVE_INTEGER = eINSTANCE.getNegativeInteger();
        public static final EDataType NMTOKEN = eINSTANCE.getNMTOKEN();
        public static final EDataType NMTOKENS = eINSTANCE.getNMTOKENS();
        public static final EDataType NMTOKENS_BASE = eINSTANCE.getNMTOKENSBase();
        public static final EDataType NON_NEGATIVE_INTEGER = eINSTANCE.getNonNegativeInteger();
        public static final EDataType NON_POSITIVE_INTEGER = eINSTANCE.getNonPositiveInteger();
        public static final EDataType NORMALIZED_STRING = eINSTANCE.getNormalizedString();
        public static final EDataType NOTATION = eINSTANCE.getNOTATION();
        public static final EDataType POSITIVE_INTEGER = eINSTANCE.getPositiveInteger();
        public static final EDataType QNAME = eINSTANCE.getQName();
        public static final EDataType SHORT = eINSTANCE.getShort();
        public static final EDataType SHORT_OBJECT = eINSTANCE.getShortObject();
        public static final EDataType STRING = eINSTANCE.getString();
        public static final EDataType TIME = eINSTANCE.getTime();
        public static final EDataType TOKEN = eINSTANCE.getToken();
        public static final EDataType UNSIGNED_BYTE = eINSTANCE.getUnsignedByte();
        public static final EDataType UNSIGNED_BYTE_OBJECT = eINSTANCE.getUnsignedByteObject();
        public static final EDataType UNSIGNED_INT = eINSTANCE.getUnsignedInt();
        public static final EDataType UNSIGNED_INT_OBJECT = eINSTANCE.getUnsignedIntObject();
        public static final EDataType UNSIGNED_LONG = eINSTANCE.getUnsignedLong();
        public static final EDataType UNSIGNED_SHORT = eINSTANCE.getUnsignedShort();
        public static final EDataType UNSIGNED_SHORT_OBJECT = eINSTANCE.getUnsignedShortObject();
    }
}

