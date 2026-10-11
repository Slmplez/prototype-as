/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeValidator;

public class XMLTypePackageImpl
extends EPackageImpl
implements XMLTypePackage {
    private EClass anyTypeEClass = null;
    private EClass processingInstructionEClass = null;
    private EClass simpleAnyTypeEClass = null;
    private EClass xmlTypeDocumentRootEClass = null;
    private EDataType anySimpleTypeEDataType = null;
    private EDataType anyURIEDataType = null;
    private EDataType base64BinaryEDataType = null;
    private EDataType booleanEDataType = null;
    private EDataType booleanObjectEDataType = null;
    private EDataType decimalEDataType = null;
    private EDataType integerEDataType = null;
    private EDataType intObjectEDataType = null;
    private EDataType longEDataType = null;
    private EDataType longObjectEDataType = null;
    private EDataType intEDataType = null;
    private EDataType shortEDataType = null;
    private EDataType shortObjectEDataType = null;
    private EDataType byteEDataType = null;
    private EDataType byteObjectEDataType = null;
    private EDataType dateEDataType = null;
    private EDataType dateTimeEDataType = null;
    private EDataType stringEDataType = null;
    private EDataType doubleEDataType = null;
    private EDataType doubleObjectEDataType = null;
    private EDataType durationEDataType = null;
    private EDataType entitiesBaseEDataType = null;
    private EDataType normalizedStringEDataType = null;
    private EDataType tokenEDataType = null;
    private EDataType nameEDataType = null;
    private EDataType ncNameEDataType = null;
    private EDataType entityEDataType = null;
    private EDataType entitiesEDataType = null;
    private EDataType floatEDataType = null;
    private EDataType floatObjectEDataType = null;
    private EDataType gDayEDataType = null;
    private EDataType gMonthEDataType = null;
    private EDataType gMonthDayEDataType = null;
    private EDataType gYearEDataType = null;
    private EDataType gYearMonthEDataType = null;
    private EDataType hexBinaryEDataType = null;
    private EDataType idEDataType = null;
    private EDataType idrefEDataType = null;
    private EDataType idrefsBaseEDataType = null;
    private EDataType idrefsEDataType = null;
    private EDataType languageEDataType = null;
    private EDataType nonPositiveIntegerEDataType = null;
    private EDataType negativeIntegerEDataType = null;
    private EDataType nmtokenEDataType = null;
    private EDataType nmtokensBaseEDataType = null;
    private EDataType nmtokensEDataType = null;
    private EDataType nonNegativeIntegerEDataType = null;
    private EDataType notationEDataType = null;
    private EDataType positiveIntegerEDataType = null;
    private EDataType qNameEDataType = null;
    private EDataType timeEDataType = null;
    private EDataType unsignedLongEDataType = null;
    private EDataType unsignedIntEDataType = null;
    private EDataType unsignedIntObjectEDataType = null;
    private EDataType unsignedShortEDataType = null;
    private EDataType unsignedShortObjectEDataType = null;
    private EDataType unsignedByteEDataType = null;
    private EDataType unsignedByteObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private XMLTypePackageImpl() {
        super("http://www.eclipse.org/emf/2003/XMLType", XMLTypeFactory.eINSTANCE);
    }

    public static XMLTypePackage init() {
        if (isInited) {
            return (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        }
        XMLTypePackageImpl theXMLTypePackage = EPackage.Registry.INSTANCE.get("http://www.eclipse.org/emf/2003/XMLType") instanceof XMLTypePackageImpl ? EPackage.Registry.INSTANCE.get("http://www.eclipse.org/emf/2003/XMLType") : new XMLTypePackageImpl();
        isInited = true;
        theXMLTypePackage.createPackageContents();
        theXMLTypePackage.initializePackageContents();
        EValidator.Registry.INSTANCE.put(theXMLTypePackage, new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return XMLTypeValidator.INSTANCE;
            }
        });
        theXMLTypePackage.freeze();
        EPackage.Registry.INSTANCE.put("http://www.eclipse.org/emf/2003/XMLType", theXMLTypePackage);
        return theXMLTypePackage;
    }

    public EClass getAnyType() {
        return this.anyTypeEClass;
    }

    public EAttribute getAnyType_Mixed() {
        return (EAttribute)this.anyTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getAnyType_Any() {
        return (EAttribute)this.anyTypeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getAnyType_AnyAttribute() {
        return (EAttribute)this.anyTypeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getProcessingInstruction() {
        return this.processingInstructionEClass;
    }

    public EAttribute getProcessingInstruction_Data() {
        return (EAttribute)this.processingInstructionEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getProcessingInstruction_Target() {
        return (EAttribute)this.processingInstructionEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSimpleAnyType() {
        return this.simpleAnyTypeEClass;
    }

    public EAttribute getSimpleAnyType_RawValue() {
        return (EAttribute)this.simpleAnyTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSimpleAnyType_Value() {
        return (EAttribute)this.simpleAnyTypeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSimpleAnyType_InstanceType() {
        return (EReference)this.simpleAnyTypeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getXMLTypeDocumentRoot() {
        return this.xmlTypeDocumentRootEClass;
    }

    public EAttribute getXMLTypeDocumentRoot_Mixed() {
        return (EAttribute)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(0);
    }

    public EReference getXMLTypeDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(1);
    }

    public EReference getXMLTypeDocumentRoot_XSISchemaLocation() {
        return (EReference)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getXMLTypeDocumentRoot_CDATA() {
        return (EAttribute)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getXMLTypeDocumentRoot_Comment() {
        return (EAttribute)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getXMLTypeDocumentRoot_Text() {
        return (EAttribute)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(6);
    }

    public EReference getXMLTypeDocumentRoot_ProcessingInstruction() {
        return (EReference)this.xmlTypeDocumentRootEClass.getEStructuralFeatures().get(5);
    }

    public EDataType getAnySimpleType() {
        return this.anySimpleTypeEDataType;
    }

    public EDataType getAnyURI() {
        return this.anyURIEDataType;
    }

    public EDataType getBase64Binary() {
        return this.base64BinaryEDataType;
    }

    public EDataType getBoolean() {
        return this.booleanEDataType;
    }

    public EDataType getBooleanObject() {
        return this.booleanObjectEDataType;
    }

    public EDataType getDecimal() {
        return this.decimalEDataType;
    }

    public EDataType getInteger() {
        return this.integerEDataType;
    }

    public EDataType getIntObject() {
        return this.intObjectEDataType;
    }

    public EDataType getLong() {
        return this.longEDataType;
    }

    public EDataType getLongObject() {
        return this.longObjectEDataType;
    }

    public EDataType getInt() {
        return this.intEDataType;
    }

    public EDataType getShort() {
        return this.shortEDataType;
    }

    public EDataType getShortObject() {
        return this.shortObjectEDataType;
    }

    public EDataType getByte() {
        return this.byteEDataType;
    }

    public EDataType getByteObject() {
        return this.byteObjectEDataType;
    }

    public EDataType getDate() {
        return this.dateEDataType;
    }

    public EDataType getDateTime() {
        return this.dateTimeEDataType;
    }

    public EDataType getString() {
        return this.stringEDataType;
    }

    public EDataType getDouble() {
        return this.doubleEDataType;
    }

    public EDataType getDoubleObject() {
        return this.doubleObjectEDataType;
    }

    public EDataType getDuration() {
        return this.durationEDataType;
    }

    public EDataType getENTITIESBase() {
        return this.entitiesBaseEDataType;
    }

    public EDataType getNormalizedString() {
        return this.normalizedStringEDataType;
    }

    public EDataType getToken() {
        return this.tokenEDataType;
    }

    public EDataType getName_() {
        return this.nameEDataType;
    }

    public EDataType getNCName() {
        return this.ncNameEDataType;
    }

    public EDataType getENTITY() {
        return this.entityEDataType;
    }

    public EDataType getENTITIES() {
        return this.entitiesEDataType;
    }

    public EDataType getFloat() {
        return this.floatEDataType;
    }

    public EDataType getFloatObject() {
        return this.floatObjectEDataType;
    }

    public EDataType getGDay() {
        return this.gDayEDataType;
    }

    public EDataType getGMonth() {
        return this.gMonthEDataType;
    }

    public EDataType getGMonthDay() {
        return this.gMonthDayEDataType;
    }

    public EDataType getGYear() {
        return this.gYearEDataType;
    }

    public EDataType getGYearMonth() {
        return this.gYearMonthEDataType;
    }

    public EDataType getHexBinary() {
        return this.hexBinaryEDataType;
    }

    public EDataType getID() {
        return this.idEDataType;
    }

    public EDataType getIDREF() {
        return this.idrefEDataType;
    }

    public EDataType getIDREFSBase() {
        return this.idrefsBaseEDataType;
    }

    public EDataType getIDREFS() {
        return this.idrefsEDataType;
    }

    public EDataType getLanguage() {
        return this.languageEDataType;
    }

    public EDataType getNonPositiveInteger() {
        return this.nonPositiveIntegerEDataType;
    }

    public EDataType getNegativeInteger() {
        return this.negativeIntegerEDataType;
    }

    public EDataType getNMTOKEN() {
        return this.nmtokenEDataType;
    }

    public EDataType getNMTOKENSBase() {
        return this.nmtokensBaseEDataType;
    }

    public EDataType getNMTOKENS() {
        return this.nmtokensEDataType;
    }

    public EDataType getNonNegativeInteger() {
        return this.nonNegativeIntegerEDataType;
    }

    public EDataType getNOTATION() {
        return this.notationEDataType;
    }

    public EDataType getPositiveInteger() {
        return this.positiveIntegerEDataType;
    }

    public EDataType getQName() {
        return this.qNameEDataType;
    }

    public EDataType getTime() {
        return this.timeEDataType;
    }

    public EDataType getUnsignedLong() {
        return this.unsignedLongEDataType;
    }

    public EDataType getUnsignedInt() {
        return this.unsignedIntEDataType;
    }

    public EDataType getUnsignedIntObject() {
        return this.unsignedIntObjectEDataType;
    }

    public EDataType getUnsignedShort() {
        return this.unsignedShortEDataType;
    }

    public EDataType getUnsignedShortObject() {
        return this.unsignedShortObjectEDataType;
    }

    public EDataType getUnsignedByte() {
        return this.unsignedByteEDataType;
    }

    public EDataType getUnsignedByteObject() {
        return this.unsignedByteObjectEDataType;
    }

    public XMLTypeFactory getXMLTypeFactory() {
        return (XMLTypeFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.anyTypeEClass = this.createEClass(0);
        this.createEAttribute(this.anyTypeEClass, 0);
        this.createEAttribute(this.anyTypeEClass, 1);
        this.createEAttribute(this.anyTypeEClass, 2);
        this.processingInstructionEClass = this.createEClass(1);
        this.createEAttribute(this.processingInstructionEClass, 0);
        this.createEAttribute(this.processingInstructionEClass, 1);
        this.simpleAnyTypeEClass = this.createEClass(2);
        this.createEAttribute(this.simpleAnyTypeEClass, 3);
        this.createEAttribute(this.simpleAnyTypeEClass, 4);
        this.createEReference(this.simpleAnyTypeEClass, 5);
        this.xmlTypeDocumentRootEClass = this.createEClass(3);
        this.createEAttribute(this.xmlTypeDocumentRootEClass, 0);
        this.createEReference(this.xmlTypeDocumentRootEClass, 1);
        this.createEReference(this.xmlTypeDocumentRootEClass, 2);
        this.createEAttribute(this.xmlTypeDocumentRootEClass, 3);
        this.createEAttribute(this.xmlTypeDocumentRootEClass, 4);
        this.createEReference(this.xmlTypeDocumentRootEClass, 5);
        this.createEAttribute(this.xmlTypeDocumentRootEClass, 6);
        this.anySimpleTypeEDataType = this.createEDataType(4);
        this.anyURIEDataType = this.createEDataType(5);
        this.base64BinaryEDataType = this.createEDataType(6);
        this.booleanEDataType = this.createEDataType(7);
        this.booleanObjectEDataType = this.createEDataType(8);
        this.byteEDataType = this.createEDataType(9);
        this.byteObjectEDataType = this.createEDataType(10);
        this.dateEDataType = this.createEDataType(11);
        this.dateTimeEDataType = this.createEDataType(12);
        this.decimalEDataType = this.createEDataType(13);
        this.doubleEDataType = this.createEDataType(14);
        this.doubleObjectEDataType = this.createEDataType(15);
        this.durationEDataType = this.createEDataType(16);
        this.entitiesEDataType = this.createEDataType(17);
        this.entitiesBaseEDataType = this.createEDataType(18);
        this.entityEDataType = this.createEDataType(19);
        this.floatEDataType = this.createEDataType(20);
        this.floatObjectEDataType = this.createEDataType(21);
        this.gDayEDataType = this.createEDataType(22);
        this.gMonthEDataType = this.createEDataType(23);
        this.gMonthDayEDataType = this.createEDataType(24);
        this.gYearEDataType = this.createEDataType(25);
        this.gYearMonthEDataType = this.createEDataType(26);
        this.hexBinaryEDataType = this.createEDataType(27);
        this.idEDataType = this.createEDataType(28);
        this.idrefEDataType = this.createEDataType(29);
        this.idrefsEDataType = this.createEDataType(30);
        this.idrefsBaseEDataType = this.createEDataType(31);
        this.intEDataType = this.createEDataType(32);
        this.integerEDataType = this.createEDataType(33);
        this.intObjectEDataType = this.createEDataType(34);
        this.languageEDataType = this.createEDataType(35);
        this.longEDataType = this.createEDataType(36);
        this.longObjectEDataType = this.createEDataType(37);
        this.nameEDataType = this.createEDataType(38);
        this.ncNameEDataType = this.createEDataType(39);
        this.negativeIntegerEDataType = this.createEDataType(40);
        this.nmtokenEDataType = this.createEDataType(41);
        this.nmtokensEDataType = this.createEDataType(42);
        this.nmtokensBaseEDataType = this.createEDataType(43);
        this.nonNegativeIntegerEDataType = this.createEDataType(44);
        this.nonPositiveIntegerEDataType = this.createEDataType(45);
        this.normalizedStringEDataType = this.createEDataType(46);
        this.notationEDataType = this.createEDataType(47);
        this.positiveIntegerEDataType = this.createEDataType(48);
        this.qNameEDataType = this.createEDataType(49);
        this.shortEDataType = this.createEDataType(50);
        this.shortObjectEDataType = this.createEDataType(51);
        this.stringEDataType = this.createEDataType(52);
        this.timeEDataType = this.createEDataType(53);
        this.tokenEDataType = this.createEDataType(54);
        this.unsignedByteEDataType = this.createEDataType(55);
        this.unsignedByteObjectEDataType = this.createEDataType(56);
        this.unsignedIntEDataType = this.createEDataType(57);
        this.unsignedIntObjectEDataType = this.createEDataType(58);
        this.unsignedLongEDataType = this.createEDataType(59);
        this.unsignedShortEDataType = this.createEDataType(60);
        this.unsignedShortObjectEDataType = this.createEDataType(61);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("type");
        this.setNsPrefix("ecore.xml.type");
        this.setNsURI("http://www.eclipse.org/emf/2003/XMLType");
        this.simpleAnyTypeEClass.getESuperTypes().add((Object)this.getAnyType());
        this.initEClass(this.anyTypeEClass, AnyType.class, "AnyType", false, false, true);
        this.initEAttribute(this.getAnyType_Mixed(), this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, AnyType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getAnyType_Any(), this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, AnyType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getAnyType_AnyAttribute(), this.ecorePackage.getEFeatureMapEntry(), "anyAttribute", null, 0, -1, AnyType.class, false, false, true, false, false, false, false, true);
        this.initEClass(this.processingInstructionEClass, ProcessingInstruction.class, "ProcessingInstruction", false, false, true);
        this.initEAttribute(this.getProcessingInstruction_Data(), this.getString(), "data", null, 0, 1, ProcessingInstruction.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessingInstruction_Target(), this.getString(), "target", null, 1, 1, ProcessingInstruction.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.simpleAnyTypeEClass, SimpleAnyType.class, "SimpleAnyType", false, false, true);
        this.initEAttribute(this.getSimpleAnyType_RawValue(), this.getString(), "rawValue", null, 0, 1, SimpleAnyType.class, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getSimpleAnyType_Value(), this.getAnySimpleType(), "value", null, 0, 1, SimpleAnyType.class, true, true, true, false, false, true, true, true);
        this.initEReference(this.getSimpleAnyType_InstanceType(), this.ecorePackage.getEDataType(), null, "instanceType", null, 1, 1, SimpleAnyType.class, false, false, true, false, false, false, true, false, true);
        this.initEClass(this.xmlTypeDocumentRootEClass, XMLTypeDocumentRoot.class, "XMLTypeDocumentRoot", false, false, true);
        this.initEAttribute(this.getXMLTypeDocumentRoot_Mixed(), this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getXMLTypeDocumentRoot_XMLNSPrefixMap(), this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getXMLTypeDocumentRoot_XSISchemaLocation(), this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getXMLTypeDocumentRoot_CDATA(), this.getString(), "cDATA", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getXMLTypeDocumentRoot_Comment(), this.getString(), "comment", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEReference(this.getXMLTypeDocumentRoot_ProcessingInstruction(), this.getProcessingInstruction(), null, "processingInstruction", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getXMLTypeDocumentRoot_Text(), this.getString(), "text", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEDataType(this.anySimpleTypeEDataType, Object.class, "AnySimpleType", true, false);
        this.initEDataType(this.anyURIEDataType, String.class, "AnyURI", true, false);
        this.initEDataType(this.base64BinaryEDataType, byte[].class, "Base64Binary", true, false);
        this.initEDataType(this.booleanEDataType, Boolean.TYPE, "Boolean", true, false);
        this.initEDataType(this.booleanObjectEDataType, Boolean.class, "BooleanObject", true, false);
        this.initEDataType(this.byteEDataType, Byte.TYPE, "Byte", true, false);
        this.initEDataType(this.byteObjectEDataType, Byte.class, "ByteObject", true, false);
        this.initEDataType(this.dateEDataType, XMLGregorianCalendar.class, "Date", true, false);
        this.initEDataType(this.dateTimeEDataType, XMLGregorianCalendar.class, "DateTime", true, false);
        this.initEDataType(this.decimalEDataType, BigDecimal.class, "Decimal", true, false);
        this.initEDataType(this.doubleEDataType, Double.TYPE, "Double", true, false);
        this.initEDataType(this.doubleObjectEDataType, Double.class, "DoubleObject", true, false);
        this.initEDataType(this.durationEDataType, Duration.class, "Duration", true, false);
        this.initEDataType(this.entitiesEDataType, List.class, "ENTITIES", true, false);
        this.initEDataType(this.entitiesBaseEDataType, List.class, "ENTITIESBase", true, false);
        this.initEDataType(this.entityEDataType, String.class, "ENTITY", true, false);
        this.initEDataType(this.floatEDataType, Float.TYPE, "Float", true, false);
        this.initEDataType(this.floatObjectEDataType, Float.class, "FloatObject", true, false);
        this.initEDataType(this.gDayEDataType, XMLGregorianCalendar.class, "GDay", true, false);
        this.initEDataType(this.gMonthEDataType, XMLGregorianCalendar.class, "GMonth", true, false);
        this.initEDataType(this.gMonthDayEDataType, XMLGregorianCalendar.class, "GMonthDay", true, false);
        this.initEDataType(this.gYearEDataType, XMLGregorianCalendar.class, "GYear", true, false);
        this.initEDataType(this.gYearMonthEDataType, XMLGregorianCalendar.class, "GYearMonth", true, false);
        this.initEDataType(this.hexBinaryEDataType, byte[].class, "HexBinary", true, false);
        this.initEDataType(this.idEDataType, String.class, "ID", true, false);
        this.initEDataType(this.idrefEDataType, String.class, "IDREF", true, false);
        this.initEDataType(this.idrefsEDataType, List.class, "IDREFS", true, false);
        this.initEDataType(this.idrefsBaseEDataType, List.class, "IDREFSBase", true, false);
        this.initEDataType(this.intEDataType, Integer.TYPE, "Int", true, false);
        this.initEDataType(this.integerEDataType, BigInteger.class, "Integer", true, false);
        this.initEDataType(this.intObjectEDataType, Integer.class, "IntObject", true, false);
        this.initEDataType(this.languageEDataType, String.class, "Language", true, false);
        this.initEDataType(this.longEDataType, Long.TYPE, "Long", true, false);
        this.initEDataType(this.longObjectEDataType, Long.class, "LongObject", true, false);
        this.initEDataType(this.nameEDataType, String.class, "Name", true, false);
        this.initEDataType(this.ncNameEDataType, String.class, "NCName", true, false);
        this.initEDataType(this.negativeIntegerEDataType, BigInteger.class, "NegativeInteger", true, false);
        this.initEDataType(this.nmtokenEDataType, String.class, "NMTOKEN", true, false);
        this.initEDataType(this.nmtokensEDataType, List.class, "NMTOKENS", true, false);
        this.initEDataType(this.nmtokensBaseEDataType, List.class, "NMTOKENSBase", true, false);
        this.initEDataType(this.nonNegativeIntegerEDataType, BigInteger.class, "NonNegativeInteger", true, false);
        this.initEDataType(this.nonPositiveIntegerEDataType, BigInteger.class, "NonPositiveInteger", true, false);
        this.initEDataType(this.normalizedStringEDataType, String.class, "NormalizedString", true, false);
        this.initEDataType(this.notationEDataType, QName.class, "NOTATION", true, false);
        this.initEDataType(this.positiveIntegerEDataType, BigInteger.class, "PositiveInteger", true, false);
        this.initEDataType(this.qNameEDataType, QName.class, "QName", true, false);
        this.initEDataType(this.shortEDataType, Short.TYPE, "Short", true, false);
        this.initEDataType(this.shortObjectEDataType, Short.class, "ShortObject", true, false);
        this.initEDataType(this.stringEDataType, String.class, "String", true, false);
        this.initEDataType(this.timeEDataType, XMLGregorianCalendar.class, "Time", true, false);
        this.initEDataType(this.tokenEDataType, String.class, "Token", true, false);
        this.initEDataType(this.unsignedByteEDataType, Short.TYPE, "UnsignedByte", true, false);
        this.initEDataType(this.unsignedByteObjectEDataType, Short.class, "UnsignedByteObject", true, false);
        this.initEDataType(this.unsignedIntEDataType, Long.TYPE, "UnsignedInt", true, false);
        this.initEDataType(this.unsignedIntObjectEDataType, Long.class, "UnsignedIntObject", true, false);
        this.initEDataType(this.unsignedLongEDataType, BigInteger.class, "UnsignedLong", true, false);
        this.initEDataType(this.unsignedShortEDataType, Integer.TYPE, "UnsignedShort", true, false);
        this.initEDataType(this.unsignedShortObjectEDataType, Integer.class, "UnsignedShortObject", true, false);
        this.createResource("http://www.eclipse.org/emf/2003/XMLType");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation(this.anySimpleTypeEDataType, source, new String[]{"name", "anySimpleType"});
        this.addAnnotation(this.anyTypeEClass, source, new String[]{"name", "anyType", "kind", "mixed"});
        this.addAnnotation(this.getAnyType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation(this.getAnyType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":1", "processing", "lax"});
        this.addAnnotation(this.getAnyType_AnyAttribute(), source, new String[]{"kind", "attributeWildcard", "wildcards", "##any", "name", ":2", "processing", "lax"});
        this.addAnnotation(this.anyURIEDataType, source, new String[]{"name", "anyURI", "whiteSpace", "collapse"});
        this.addAnnotation(this.base64BinaryEDataType, source, new String[]{"name", "base64Binary", "whiteSpace", "collapse"});
        this.addAnnotation(this.booleanEDataType, source, new String[]{"name", "boolean", "whiteSpace", "collapse"});
        this.addAnnotation(this.booleanObjectEDataType, source, new String[]{"name", "boolean:Object", "baseType", "boolean"});
        this.addAnnotation(this.byteEDataType, source, new String[]{"name", "byte"});
        this.addAnnotation(this.byteObjectEDataType, source, new String[]{"name", "byte:Object", "baseType", "byte"});
        this.addAnnotation(this.dateEDataType, source, new String[]{"name", "date", "whiteSpace", "collapse"});
        this.addAnnotation(this.dateTimeEDataType, source, new String[]{"name", "dateTime", "whiteSpace", "collapse"});
        this.addAnnotation(this.decimalEDataType, source, new String[]{"name", "decimal", "whiteSpace", "collapse"});
        this.addAnnotation(this.doubleEDataType, source, new String[]{"name", "double", "whiteSpace", "collapse"});
        this.addAnnotation(this.doubleObjectEDataType, source, new String[]{"name", "double:Object", "baseType", "double"});
        this.addAnnotation(this.durationEDataType, source, new String[]{"name", "duration", "whiteSpace", "collapse"});
        this.addAnnotation(this.entitiesEDataType, source, new String[]{"name", "ENTITIES", "baseType", "ENTITIES_._base", "minLength", "1"});
        this.addAnnotation(this.entitiesBaseEDataType, source, new String[]{"name", "ENTITIES_._base", "itemType", "ENTITY"});
        this.addAnnotation(this.entityEDataType, source, new String[]{"name", "ENTITY", "baseType", "NCName"});
        this.addAnnotation(this.floatEDataType, source, new String[]{"name", "float", "whiteSpace", "collapse"});
        this.addAnnotation(this.floatObjectEDataType, source, new String[]{"name", "float:Object", "baseType", "float"});
        this.addAnnotation(this.gDayEDataType, source, new String[]{"name", "gDay", "whiteSpace", "collapse"});
        this.addAnnotation(this.gMonthEDataType, source, new String[]{"name", "gMonth", "whiteSpace", "collapse"});
        this.addAnnotation(this.gMonthDayEDataType, source, new String[]{"name", "gMonthDay", "whiteSpace", "collapse"});
        this.addAnnotation(this.gYearEDataType, source, new String[]{"name", "gYear", "whiteSpace", "collapse"});
        this.addAnnotation(this.gYearMonthEDataType, source, new String[]{"name", "gYearMonth", "whiteSpace", "collapse"});
        this.addAnnotation(this.hexBinaryEDataType, source, new String[]{"name", "hexBinary", "whiteSpace", "collapse"});
        this.addAnnotation(this.idEDataType, source, new String[]{"name", "ID", "baseType", "NCName"});
        this.addAnnotation(this.idrefEDataType, source, new String[]{"name", "IDREF", "baseType", "NCName"});
        this.addAnnotation(this.idrefsEDataType, source, new String[]{"name", "IDREFS", "baseType", "IDREFS_._base", "minLength", "1"});
        this.addAnnotation(this.idrefsBaseEDataType, source, new String[]{"name", "IDREFS_._base", "itemType", "IDREF"});
        this.addAnnotation(this.intEDataType, source, new String[]{"name", "int"});
        this.addAnnotation(this.integerEDataType, source, new String[]{"name", "integer"});
        this.addAnnotation(this.intObjectEDataType, source, new String[]{"name", "int:Object", "baseType", "int"});
        this.addAnnotation(this.languageEDataType, source, new String[]{"name", "language", "baseType", "token", "pattern", "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"});
        this.addAnnotation(this.longEDataType, source, new String[]{"name", "long"});
        this.addAnnotation(this.longObjectEDataType, source, new String[]{"name", "long:Object", "baseType", "long"});
        this.addAnnotation(this.nameEDataType, source, new String[]{"name", "Name", "baseType", "token", "pattern", "\\i\\c*"});
        this.addAnnotation(this.ncNameEDataType, source, new String[]{"name", "NCName", "baseType", "Name", "pattern", "[\\i-[:]][\\c-[:]]*"});
        this.addAnnotation(this.negativeIntegerEDataType, source, new String[]{"name", "negativeInteger", "baseType", "nonPositiveInteger", "maxInclusive", "-1"});
        this.addAnnotation(this.nmtokenEDataType, source, new String[]{"name", "NMTOKEN", "baseType", "token", "pattern", "\\c+"});
        this.addAnnotation(this.nmtokensEDataType, source, new String[]{"name", "NMTOKENS", "baseType", "NMTOKENS_._base", "minLength", "1"});
        this.addAnnotation(this.nmtokensBaseEDataType, source, new String[]{"name", "NMTOKENS_._base", "itemType", "NMTOKEN"});
        this.addAnnotation(this.nonNegativeIntegerEDataType, source, new String[]{"name", "nonNegativeInteger", "baseType", "integer", "minInclusive", "0"});
        this.addAnnotation(this.nonPositiveIntegerEDataType, source, new String[]{"name", "nonPositiveInteger", "baseType", "integer", "maxInclusive", "0"});
        this.addAnnotation(this.normalizedStringEDataType, source, new String[]{"name", "normalizedString", "baseType", "string", "whiteSpace", "replace"});
        this.addAnnotation(this.notationEDataType, source, new String[]{"name", "NOTATION", "whiteSpace", "collapse"});
        this.addAnnotation(this.positiveIntegerEDataType, source, new String[]{"name", "positiveInteger", "baseType", "nonNegativeInteger", "minInclusive", "1"});
        this.addAnnotation(this.processingInstructionEClass, source, new String[]{"name", "processingInstruction_._type", "kind", "empty"});
        this.addAnnotation(this.getProcessingInstruction_Data(), source, new String[]{"kind", "attribute", "name", "data"});
        this.addAnnotation(this.getProcessingInstruction_Target(), source, new String[]{"kind", "attribute", "name", "target"});
        this.addAnnotation(this.qNameEDataType, source, new String[]{"name", "QName", "whiteSpace", "collapse"});
        this.addAnnotation(this.shortEDataType, source, new String[]{"name", "short"});
        this.addAnnotation(this.shortObjectEDataType, source, new String[]{"name", "short:Object", "baseType", "short"});
        this.addAnnotation(this.simpleAnyTypeEClass, source, new String[]{"name", "simpleAnyType", "kind", "simple"});
        this.addAnnotation(this.getSimpleAnyType_RawValue(), source, new String[]{"name", ":3", "kind", "simple"});
        this.addAnnotation(this.getSimpleAnyType_Value(), source, new String[]{"name", ":4", "kind", "simple"});
        this.addAnnotation(this.getSimpleAnyType_InstanceType(), source, new String[]{"name", ":5", "kind", "simple"});
        this.addAnnotation(this.stringEDataType, source, new String[]{"name", "string", "whiteSpace", "preserve"});
        this.addAnnotation(this.timeEDataType, source, new String[]{"name", "time", "whiteSpace", "collapse"});
        this.addAnnotation(this.tokenEDataType, source, new String[]{"name", "token", "baseType", "normalizedString", "whiteSpace", "collapse"});
        this.addAnnotation(this.unsignedByteEDataType, source, new String[]{"name", "unsignedByte", "maxInclusive", "255", "minInclusive", "0"});
        this.addAnnotation(this.unsignedByteObjectEDataType, source, new String[]{"name", "unsignedByte:Object", "baseType", "unsignedByte"});
        this.addAnnotation(this.unsignedIntEDataType, source, new String[]{"name", "unsignedInt", "maxInclusive", "4294967295", "minInclusive", "0"});
        this.addAnnotation(this.unsignedIntObjectEDataType, source, new String[]{"name", "unsignedInt:Object", "baseType", "unsignedInt"});
        this.addAnnotation(this.unsignedLongEDataType, source, new String[]{"name", "unsignedLong", "baseType", "nonNegativeInteger", "maxInclusive", "18446744073709551615", "minInclusive", "0"});
        this.addAnnotation(this.unsignedShortEDataType, source, new String[]{"name", "unsignedShort", "maxInclusive", "65535", "minInclusive", "0"});
        this.addAnnotation(this.unsignedShortObjectEDataType, source, new String[]{"name", "unsignedShort:Object", "baseType", "unsignedShort"});
        this.addAnnotation(this.xmlTypeDocumentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_CDATA(), source, new String[]{"kind", "element", "name", "cDATA", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_Comment(), source, new String[]{"kind", "element", "name", "comment", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_ProcessingInstruction(), source, new String[]{"kind", "element", "name", "processingInstruction", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLTypeDocumentRoot_Text(), source, new String[]{"kind", "element", "name", "text", "namespace", "##targetNamespace"});
    }

    protected void createNullAnnotations() {
    }
}

