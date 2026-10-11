/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.ecore.xml.type.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.EObjectValidator;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLTypeValidator
extends EObjectValidator {
    public static final XMLTypeValidator INSTANCE = new XMLTypeValidator();
    public static final String DIAGNOSTIC_SOURCE = "org.eclipse.emf.ecore.xml.type";
    private static final int GENERATED_DIAGNOSTIC_CODE_COUNT = 0;
    public static final int WELL_FORMED_XML_GREGORIAN_CALENDAR = 0;
    protected static final int DIAGNOSTIC_CODE_COUNT = 0;
    public static final EValidator.PatternMatcher[][] LANGUAGE__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher("[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*")}};
    public static final EValidator.PatternMatcher[][] NAME__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher("\\i\\c*")}};
    public static final EValidator.PatternMatcher[][] NC_NAME__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher("[\\i-[:]][\\c-[:]]*")}, {XMLTypeUtil.createPatternMatcher("\\i\\c*")}};
    public static final BigInteger NEGATIVE_INTEGER__MAX__VALUE = new BigInteger("-1");
    public static final EValidator.PatternMatcher[][] NMTOKEN__PATTERN__VALUES = new EValidator.PatternMatcher[][]{{XMLTypeUtil.createPatternMatcher("\\c+")}};
    public static final BigInteger NON_NEGATIVE_INTEGER__MIN__VALUE = new BigInteger("0");
    public static final BigInteger NON_POSITIVE_INTEGER__MAX__VALUE = new BigInteger("0");
    public static final BigInteger POSITIVE_INTEGER__MIN__VALUE = new BigInteger("1");
    public static final short UNSIGNED_BYTE__MIN__VALUE = 0;
    public static final short UNSIGNED_BYTE__MAX__VALUE = 255;
    public static final long UNSIGNED_INT__MIN__VALUE = 0L;
    public static final long UNSIGNED_INT__MAX__VALUE = 0xFFFFFFFFL;
    public static final BigInteger UNSIGNED_LONG__MIN__VALUE = new BigInteger("0");
    public static final BigInteger UNSIGNED_LONG__MAX__VALUE = new BigInteger("18446744073709551615");
    public static final int UNSIGNED_SHORT__MIN__VALUE = 0;
    public static final int UNSIGNED_SHORT__MAX__VALUE = 65535;

    @Override
    protected EPackage getEPackage() {
        return XMLTypePackage.eINSTANCE;
    }

    @Override
    protected boolean validate(int classifierID, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        switch (classifierID) {
            case 0: {
                return this.validateAnyType((AnyType)value, diagnostics, context);
            }
            case 1: {
                return this.validateProcessingInstruction((ProcessingInstruction)value, diagnostics, context);
            }
            case 2: {
                return this.validateSimpleAnyType((SimpleAnyType)value, diagnostics, context);
            }
            case 3: {
                return this.validateXMLTypeDocumentRoot((XMLTypeDocumentRoot)value, diagnostics, context);
            }
            case 4: {
                return this.validateAnySimpleType(value, diagnostics, context);
            }
            case 5: {
                return this.validateAnyURI((String)value, diagnostics, context);
            }
            case 6: {
                return this.validateBase64Binary((byte[])value, diagnostics, context);
            }
            case 7: {
                return this.validateBoolean((Boolean)value, diagnostics, context);
            }
            case 8: {
                return this.validateBooleanObject((Boolean)value, diagnostics, context);
            }
            case 9: {
                return this.validateByte((Byte)value, diagnostics, context);
            }
            case 10: {
                return this.validateByteObject((Byte)value, diagnostics, context);
            }
            case 11: {
                return this.validateDate((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 12: {
                return this.validateDateTime((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 13: {
                return this.validateDecimal((BigDecimal)value, diagnostics, context);
            }
            case 14: {
                return this.validateDouble((Double)value, diagnostics, context);
            }
            case 15: {
                return this.validateDoubleObject((Double)value, diagnostics, context);
            }
            case 16: {
                return this.validateDuration((Duration)value, diagnostics, context);
            }
            case 17: {
                return this.validateENTITIES((List)value, diagnostics, context);
            }
            case 18: {
                return this.validateENTITIESBase((List)value, diagnostics, context);
            }
            case 19: {
                return this.validateENTITY((String)value, diagnostics, context);
            }
            case 20: {
                return this.validateFloat(((Float)value).floatValue(), diagnostics, context);
            }
            case 21: {
                return this.validateFloatObject((Float)value, diagnostics, context);
            }
            case 22: {
                return this.validateGDay((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 23: {
                return this.validateGMonth((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 24: {
                return this.validateGMonthDay((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 25: {
                return this.validateGYear((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 26: {
                return this.validateGYearMonth((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 27: {
                return this.validateHexBinary((byte[])value, diagnostics, context);
            }
            case 28: {
                return this.validateID((String)value, diagnostics, context);
            }
            case 29: {
                return this.validateIDREF((String)value, diagnostics, context);
            }
            case 30: {
                return this.validateIDREFS((List)value, diagnostics, context);
            }
            case 31: {
                return this.validateIDREFSBase((List)value, diagnostics, context);
            }
            case 32: {
                return this.validateInt((Integer)value, diagnostics, context);
            }
            case 33: {
                return this.validateInteger((BigInteger)value, diagnostics, context);
            }
            case 34: {
                return this.validateIntObject((Integer)value, diagnostics, context);
            }
            case 35: {
                return this.validateLanguage((String)value, diagnostics, context);
            }
            case 36: {
                return this.validateLong((Long)value, diagnostics, context);
            }
            case 37: {
                return this.validateLongObject((Long)value, diagnostics, context);
            }
            case 38: {
                return this.validateName((String)value, diagnostics, context);
            }
            case 39: {
                return this.validateNCName((String)value, diagnostics, context);
            }
            case 40: {
                return this.validateNegativeInteger((BigInteger)value, diagnostics, context);
            }
            case 41: {
                return this.validateNMTOKEN((String)value, diagnostics, context);
            }
            case 42: {
                return this.validateNMTOKENS((List)value, diagnostics, context);
            }
            case 43: {
                return this.validateNMTOKENSBase((List)value, diagnostics, context);
            }
            case 44: {
                return this.validateNonNegativeInteger((BigInteger)value, diagnostics, context);
            }
            case 45: {
                return this.validateNonPositiveInteger((BigInteger)value, diagnostics, context);
            }
            case 46: {
                return this.validateNormalizedString((String)value, diagnostics, context);
            }
            case 47: {
                return this.validateNOTATION((QName)value, diagnostics, context);
            }
            case 48: {
                return this.validatePositiveInteger((BigInteger)value, diagnostics, context);
            }
            case 49: {
                return this.validateQName((QName)value, diagnostics, context);
            }
            case 50: {
                return this.validateShort((Short)value, diagnostics, context);
            }
            case 51: {
                return this.validateShortObject((Short)value, diagnostics, context);
            }
            case 52: {
                return this.validateString((String)value, diagnostics, context);
            }
            case 53: {
                return this.validateTime((XMLGregorianCalendar)value, diagnostics, context);
            }
            case 54: {
                return this.validateToken((String)value, diagnostics, context);
            }
            case 55: {
                return this.validateUnsignedByte((Short)value, diagnostics, context);
            }
            case 56: {
                return this.validateUnsignedByteObject((Short)value, diagnostics, context);
            }
            case 57: {
                return this.validateUnsignedInt((Long)value, diagnostics, context);
            }
            case 58: {
                return this.validateUnsignedIntObject((Long)value, diagnostics, context);
            }
            case 59: {
                return this.validateUnsignedLong((BigInteger)value, diagnostics, context);
            }
            case 60: {
                return this.validateUnsignedShort((Integer)value, diagnostics, context);
            }
            case 61: {
                return this.validateUnsignedShortObject((Integer)value, diagnostics, context);
            }
        }
        return true;
    }

    public boolean validateAnyType(AnyType anyType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(anyType, diagnostics, context);
    }

    public boolean validateProcessingInstruction(ProcessingInstruction processingInstruction, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(processingInstruction, diagnostics, context);
    }

    public boolean validateSimpleAnyType(SimpleAnyType simpleAnyType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(simpleAnyType, diagnostics, context);
    }

    public boolean validateXMLTypeDocumentRoot(XMLTypeDocumentRoot xmlTypeDocumentRoot, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate_EveryDefaultConstraint(xmlTypeDocumentRoot, diagnostics, context);
    }

    public boolean validateAnySimpleType(Object anySimpleType, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateAnyURI(String anyURI, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateBase64Binary(byte[] base64Binary, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateBoolean(boolean boolean_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateBooleanObject(Boolean booleanObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateByte(byte byte_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateByteObject(Byte byteObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDate(XMLGregorianCalendar date, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = date.isValid() && "date".equals(date.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.DATE, date, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateDate(Object date, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateDate((XMLGregorianCalendar)date, diagnostics, context);
    }

    public boolean validateDateTime(XMLGregorianCalendar dateTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = dateTime.isValid() && "dateTime".equals(dateTime.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.DATE_TIME, dateTime, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateDateTime(Object dateTime, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateDateTime((XMLGregorianCalendar)dateTime, diagnostics, context);
    }

    public boolean validateDecimal(BigDecimal decimal, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDouble(double double_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDoubleObject(Double doubleObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateDuration(Duration duration, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Deprecated
    public boolean validateDuration(Object duration, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateENTITIES(List<?> entities, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateENTITIESBase_ItemType(entities, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateENTITIES_MinLength(entities, diagnostics, context);
        }
        return result;
    }

    public boolean validateENTITIES_MinLength(List<?> entities, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int length = entities.size();
        boolean bl = result = length >= 1;
        if (!result && diagnostics != null) {
            this.reportMinLengthViolation(XMLTypePackage.Literals.ENTITIES, entities, length, 1, diagnostics, context);
        }
        return result;
    }

    public boolean validateENTITIESBase(List<?> entitiesBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateENTITIESBase_ItemType(entitiesBase, diagnostics, context);
        return result;
    }

    public boolean validateENTITIESBase_ItemType(List<?> entitiesBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        Iterator<?> i = entitiesBase.iterator();
        while (i.hasNext() && (result || diagnostics != null)) {
            Object item = i.next();
            if (XMLTypePackage.Literals.ENTITY.isInstance(item)) {
                result &= this.validateENTITY((String)item, diagnostics, context);
                continue;
            }
            result = false;
            this.reportDataValueTypeViolation(XMLTypePackage.Literals.ENTITY, item, diagnostics, context);
        }
        return result;
    }

    public boolean validateENTITY(String entity, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNCName_Pattern(entity, diagnostics, context);
        return result;
    }

    public boolean validateFloat(float float_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateFloatObject(Float floatObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateGDay(XMLGregorianCalendar gDay, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = gDay.isValid() && "gDay".equals(gDay.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.GDAY, gDay, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateGDay(Object gDay, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateGDay((XMLGregorianCalendar)gDay, diagnostics, context);
    }

    public boolean validateGMonth(XMLGregorianCalendar gMonth, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = gMonth.isValid() && "gMonth".equals(gMonth.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.GMONTH, gMonth, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateGMonth(Object gMonth, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateGMonth((XMLGregorianCalendar)gMonth, diagnostics, context);
    }

    public boolean validateGMonthDay(XMLGregorianCalendar gMonthDay, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = gMonthDay.isValid() && "gMonthDay".equals(gMonthDay.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.GMONTH_DAY, gMonthDay, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateGMonthDay(Object gMonthDay, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateGMonthDay((XMLGregorianCalendar)gMonthDay, diagnostics, context);
    }

    public boolean validateGYear(XMLGregorianCalendar gYear, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = gYear.isValid() && "gYear".equals(gYear.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.GYEAR, gYear, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateGYear(Object gYear, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateGYear((XMLGregorianCalendar)gYear, diagnostics, context);
    }

    public boolean validateGYearMonth(XMLGregorianCalendar gYearMonth, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = gYearMonth.isValid() && "gYearMonth".equals(gYearMonth.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.GYEAR_MONTH, gYearMonth, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateGYearMonth(Object gYearMonth, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateGYearMonth((XMLGregorianCalendar)gYearMonth, diagnostics, context);
    }

    public boolean validateHexBinary(byte[] hexBinary, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateID(String id, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNCName_Pattern(id, diagnostics, context);
        return result;
    }

    public boolean validateIDREF(String idref, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNCName_Pattern(idref, diagnostics, context);
        return result;
    }

    public boolean validateIDREFS(List<?> idrefs, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateIDREFSBase_ItemType(idrefs, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateIDREFS_MinLength(idrefs, diagnostics, context);
        }
        return result;
    }

    public boolean validateIDREFS_MinLength(List<?> idrefs, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int length = idrefs.size();
        boolean bl = result = length >= 1;
        if (!result && diagnostics != null) {
            this.reportMinLengthViolation(XMLTypePackage.Literals.IDREFS, idrefs, length, 1, diagnostics, context);
        }
        return result;
    }

    public boolean validateIDREFSBase(List<?> idrefsBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateIDREFSBase_ItemType(idrefsBase, diagnostics, context);
        return result;
    }

    public boolean validateIDREFSBase_ItemType(List<?> idrefsBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        Iterator<?> i = idrefsBase.iterator();
        while (i.hasNext() && (result || diagnostics != null)) {
            Object item = i.next();
            if (XMLTypePackage.Literals.IDREF.isInstance(item)) {
                result &= this.validateIDREF((String)item, diagnostics, context);
                continue;
            }
            result = false;
            this.reportDataValueTypeViolation(XMLTypePackage.Literals.IDREF, item, diagnostics, context);
        }
        return result;
    }

    public boolean validateInt(int int_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateInteger(BigInteger integer, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateIntObject(Integer intObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLanguage(String language, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateLanguage_Pattern(language, diagnostics, context);
        return result;
    }

    public boolean validateLanguage_Pattern(String language, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(XMLTypePackage.Literals.LANGUAGE, language, LANGUAGE__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateLong(long long_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateLongObject(Long longObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateName(String name, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateName_Pattern(name, diagnostics, context);
        return result;
    }

    public boolean validateName_Pattern(String name, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(XMLTypePackage.Literals.NAME, name, NAME__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNCName(String ncName, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNCName_Pattern(ncName, diagnostics, context);
        return result;
    }

    public boolean validateNCName_Pattern(String ncName, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(XMLTypePackage.Literals.NC_NAME, ncName, NC_NAME__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNegativeInteger(BigInteger negativeInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNegativeInteger_Max(negativeInteger, diagnostics, context);
        return result;
    }

    public boolean validateNegativeInteger_Max(BigInteger negativeInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = negativeInteger.compareTo(NEGATIVE_INTEGER__MAX__VALUE) <= 0;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.NEGATIVE_INTEGER, negativeInteger, NEGATIVE_INTEGER__MAX__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateNMTOKEN(String nmtoken, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNMTOKEN_Pattern(nmtoken, diagnostics, context);
        return result;
    }

    public boolean validateNMTOKEN_Pattern(String nmtoken, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validatePattern(XMLTypePackage.Literals.NMTOKEN, nmtoken, NMTOKEN__PATTERN__VALUES, diagnostics, context);
    }

    public boolean validateNMTOKENS(List<?> nmtokens, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNMTOKENSBase_ItemType(nmtokens, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateNMTOKENS_MinLength(nmtokens, diagnostics, context);
        }
        return result;
    }

    public boolean validateNMTOKENS_MinLength(List<?> nmtokens, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        int length = nmtokens.size();
        boolean bl = result = length >= 1;
        if (!result && diagnostics != null) {
            this.reportMinLengthViolation(XMLTypePackage.Literals.NMTOKENS, nmtokens, length, 1, diagnostics, context);
        }
        return result;
    }

    public boolean validateNMTOKENSBase(List<?> nmtokensBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNMTOKENSBase_ItemType(nmtokensBase, diagnostics, context);
        return result;
    }

    public boolean validateNMTOKENSBase_ItemType(List<?> nmtokensBase, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = true;
        Iterator<?> i = nmtokensBase.iterator();
        while (i.hasNext() && (result || diagnostics != null)) {
            Object item = i.next();
            if (XMLTypePackage.Literals.NMTOKEN.isInstance(item)) {
                result &= this.validateNMTOKEN((String)item, diagnostics, context);
                continue;
            }
            result = false;
            this.reportDataValueTypeViolation(XMLTypePackage.Literals.NMTOKEN, item, diagnostics, context);
        }
        return result;
    }

    public boolean validateNonNegativeInteger(BigInteger nonNegativeInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNonNegativeInteger_Min(nonNegativeInteger, diagnostics, context);
        return result;
    }

    public boolean validateNonNegativeInteger_Min(BigInteger nonNegativeInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = nonNegativeInteger.compareTo(NON_NEGATIVE_INTEGER__MIN__VALUE) >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.NON_NEGATIVE_INTEGER, nonNegativeInteger, NON_NEGATIVE_INTEGER__MIN__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateNonPositiveInteger(BigInteger nonPositiveInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateNonPositiveInteger_Max(nonPositiveInteger, diagnostics, context);
        return result;
    }

    public boolean validateNonPositiveInteger_Max(BigInteger nonPositiveInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = nonPositiveInteger.compareTo(NON_POSITIVE_INTEGER__MAX__VALUE) <= 0;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.NON_POSITIVE_INTEGER, nonPositiveInteger, NON_POSITIVE_INTEGER__MAX__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateNormalizedString(String normalizedString, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateNOTATION(QName notation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Deprecated
    public boolean validateNOTATION(Object notation, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validatePositiveInteger(BigInteger positiveInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validatePositiveInteger_Min(positiveInteger, diagnostics, context);
        return result;
    }

    public boolean validatePositiveInteger_Min(BigInteger positiveInteger, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = positiveInteger.compareTo(POSITIVE_INTEGER__MIN__VALUE) >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.POSITIVE_INTEGER, positiveInteger, POSITIVE_INTEGER__MIN__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateQName(QName qName, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Deprecated
    public boolean validateQName(Object qName, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateShort(short short_, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateShortObject(Short shortObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateString(String string, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateTime(XMLGregorianCalendar time, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = time.isValid() && "time".equals(time.getXMLSchemaType().getLocalPart());
        if (!result && diagnostics != null) {
            this.reportXMLGregorianCalendarViolation(XMLTypePackage.Literals.TIME, time, diagnostics, context);
        }
        return result;
    }

    @Deprecated
    public boolean validateTime(Object time, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validateTime((XMLGregorianCalendar)time, diagnostics, context);
    }

    public boolean validateToken(String token, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public boolean validateUnsignedByte(short unsignedByte, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedByte_Min(unsignedByte, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedByte_Max(unsignedByte, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedByte_Min(short unsignedByte, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedByte >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.UNSIGNED_BYTE, unsignedByte, (short)0, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedByte_Max(short unsignedByte, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedByte <= 255;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.UNSIGNED_BYTE, unsignedByte, (short)255, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedByteObject(Short unsignedByteObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedByte_Min(unsignedByteObject, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedByte_Max(unsignedByteObject, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedInt(long unsignedInt, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedInt_Min(unsignedInt, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedInt_Max(unsignedInt, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedInt_Min(long unsignedInt, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedInt >= 0L;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.UNSIGNED_INT, unsignedInt, 0L, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedInt_Max(long unsignedInt, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedInt <= 0xFFFFFFFFL;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.UNSIGNED_INT, unsignedInt, 0xFFFFFFFFL, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedIntObject(Long unsignedIntObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedInt_Min(unsignedIntObject, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedInt_Max(unsignedIntObject, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedLong(BigInteger unsignedLong, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedLong_Min(unsignedLong, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedLong_Max(unsignedLong, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedLong_Min(BigInteger unsignedLong, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedLong.compareTo(UNSIGNED_LONG__MIN__VALUE) >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.UNSIGNED_LONG, unsignedLong, UNSIGNED_LONG__MIN__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedLong_Max(BigInteger unsignedLong, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedLong.compareTo(UNSIGNED_LONG__MAX__VALUE) <= 0;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.UNSIGNED_LONG, unsignedLong, UNSIGNED_LONG__MAX__VALUE, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedShort(int unsignedShort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedShort_Min(unsignedShort, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedShort_Max(unsignedShort, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedShort_Min(int unsignedShort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedShort >= 0;
        if (!result && diagnostics != null) {
            this.reportMinViolation(XMLTypePackage.Literals.UNSIGNED_SHORT, unsignedShort, 0, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedShort_Max(int unsignedShort, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result;
        boolean bl = result = unsignedShort <= 65535;
        if (!result && diagnostics != null) {
            this.reportMaxViolation(XMLTypePackage.Literals.UNSIGNED_SHORT, unsignedShort, 65535, true, diagnostics, context);
        }
        return result;
    }

    public boolean validateUnsignedShortObject(Integer unsignedShortObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        boolean result = this.validateUnsignedShort_Min(unsignedShortObject, diagnostics, context);
        if (result || diagnostics != null) {
            result &= this.validateUnsignedShort_Max(unsignedShortObject, diagnostics, context);
        }
        return result;
    }

    @Override
    public ResourceLocator getResourceLocator() {
        return EcorePlugin.INSTANCE;
    }

    protected void reportXMLGregorianCalendarViolation(EDataType eDataType, XMLGregorianCalendar value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        this.createDiagnostic(4, DIAGNOSTIC_SOURCE, 0, "_UI_BadXMLGregorianCalendar_diagnostic", new Object[]{XMLTypeValidator.getValueLabel(eDataType, value, context), ExtendedMetaData.INSTANCE.getName(eDataType)}, new Object[]{value}, context);
    }
}

