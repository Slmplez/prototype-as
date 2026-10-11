/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.InvalidDatatypeValueException;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.impl.AnyTypeImpl;
import org.eclipse.emf.ecore.xml.type.impl.ProcessingInstructionImpl;
import org.eclipse.emf.ecore.xml.type.impl.SimpleAnyTypeImpl;
import org.eclipse.emf.ecore.xml.type.impl.XMLTypeDocumentRootImpl;
import org.eclipse.emf.ecore.xml.type.internal.DataValue;
import org.eclipse.emf.ecore.xml.type.internal.XMLCalendar;
import org.eclipse.emf.ecore.xml.type.internal.XMLDuration;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLTypeFactoryImpl
extends EFactoryImpl
implements XMLTypeFactory {
    protected static final DateFormat[] EDATE_FORMATS = new DateFormat[]{new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ"), new SafeSimpleDateFormat("yyyy-MM-ddZ")};

    @Override
    public Object createAnySimpleType(String literal) {
        return literal;
    }

    @Override
    public String convertAnySimpleType(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createAnyURI(String literal) {
        return literal;
    }

    @Override
    public String convertAnyURI(String instanceValue) {
        return instanceValue;
    }

    @Override
    public byte[] createBase64Binary(String literal) {
        if (literal == null) {
            return null;
        }
        byte[] value = DataValue.Base64.decode(this.collapseWhiteSpace(literal));
        if (value == null) {
            throw new InvalidDatatypeValueException("Invalid base64Binary value: '" + literal + "'");
        }
        return value;
    }

    @Override
    public String convertBase64Binary(byte[] instanceValue) {
        return instanceValue == null ? null : DataValue.Base64.encode(instanceValue);
    }

    @Override
    public boolean createBoolean(String initialValue) {
        return initialValue == null ? false : this.primitiveBooleanValueOf(initialValue);
    }

    @Override
    public String convertBoolean(boolean instanceValue) {
        return instanceValue ? "true" : "false";
    }

    @Override
    public Boolean createBooleanObject(String literal) {
        return literal == null ? null : this.booleanValueOf(literal);
    }

    @Override
    public String convertBooleanObject(Boolean instanceValue) {
        return instanceValue == null ? null : this.convertBoolean(instanceValue);
    }

    @Override
    public byte createByte(String literal) {
        return literal == null ? (byte)0 : Byte.parseByte(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertByte(byte instanceValue) {
        return Byte.toString(instanceValue);
    }

    @Override
    public Byte createByteObject(String literal) {
        return literal == null ? null : Byte.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertByteObject(Byte instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createDate(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 2);
    }

    @Override
    public String convertDate(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertDate(Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        if (instanceValue instanceof Date) {
            XMLGregorianCalendar value = new XMLCalendar((Date)instanceValue, 2).normalize();
            value.setHour(Integer.MIN_VALUE);
            value.setMinute(Integer.MIN_VALUE);
            value.setSecond(Integer.MIN_VALUE);
            value.setMillisecond(Integer.MIN_VALUE);
            return value.toString();
        }
        return instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createDateTime(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 0);
    }

    @Override
    public String convertDateTime(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertDateTime(Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        if (instanceValue instanceof Date) {
            return EDATE_FORMATS[0].format((Date)instanceValue);
        }
        return instanceValue.toString();
    }

    @Override
    public BigDecimal createDecimal(String literal) {
        return literal == null ? null : new BigDecimal(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertDecimal(BigDecimal instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public double createDouble(String literal) {
        return literal == null ? 0.0 : Double.parseDouble(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertDouble(double instanceValue) {
        return Double.toString(instanceValue);
    }

    @Override
    public Double createDoubleObject(String literal) {
        return literal == null ? null : Double.valueOf(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertDoubleObject(Double instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public Duration createDuration(String literal) {
        return literal == null ? null : new XMLDuration(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertDuration(Duration instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertDuration(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public List<String> createENTITIES(String literal) {
        return this.createENTITIESBase(literal);
    }

    public List<String> createENTITIESFromString(EDataType eDataType, String initialValue) {
        return this.createENTITIESBaseFromString(XMLTypePackage.Literals.ENTITIES_BASE, initialValue);
    }

    @Override
    public String convertENTITIES(List<? extends String> instanceValue) {
        return this.convertENTITIESBase(instanceValue);
    }

    public String convertENTITIESToString(EDataType eDataType, Object instanceValue) {
        return this.convertENTITIESBaseToString(XMLTypePackage.Literals.ENTITIES_BASE, instanceValue);
    }

    @Override
    public List<String> createENTITIESBase(String literal) {
        if (literal == null) {
            return null;
        }
        ArrayList<String> result = new ArrayList<String>();
        String[] stringArray = this.split(literal);
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String item = stringArray[n2];
            result.add(this.createENTITY(item));
            ++n2;
        }
        return result;
    }

    public List<String> createENTITIESBaseFromString(EDataType eDataType, String initialValue) {
        return this.createENTITIESBase(initialValue);
    }

    @Override
    public String convertENTITIESBase(List<? extends String> instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        if (instanceValue.isEmpty()) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        for (String string : instanceValue) {
            result.append(this.convertENTITY(string));
            result.append(' ');
        }
        return result.substring(0, result.length() - 1);
    }

    public String convertENTITIESBaseToString(EDataType eDataType, Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        List list = (List)instanceValue;
        if (list.isEmpty()) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        Iterator i = list.iterator();
        while (i.hasNext()) {
            result.append(this.convertENTITYToString(XMLTypePackage.Literals.ENTITY, i.next()));
            result.append(' ');
        }
        return result.substring(0, result.length() - 1);
    }

    @Override
    public String createENTITY(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertENTITY(String instanceValue) {
        return instanceValue;
    }

    @Override
    public float createFloat(String literal) {
        return literal == null ? 0.0f : Float.parseFloat(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertFloat(float instanceValue) {
        return Float.toString(instanceValue);
    }

    @Override
    public Float createFloatObject(String literal) {
        return literal == null ? null : Float.valueOf(this.collapseWhiteSpace(literal));
    }

    @Override
    public String convertFloatObject(Float instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createGDay(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 6);
    }

    @Override
    public String convertGDay(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String convertGDay(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createGMonth(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 7);
    }

    @Override
    public String convertGMonth(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertGMonth(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createGMonthDay(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 5);
    }

    @Override
    public String convertGMonthDay(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertGMonthDay(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createGYear(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 4);
    }

    @Override
    public String convertGYear(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertGYear(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLGregorianCalendar createGYearMonth(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 3);
    }

    @Override
    public String convertGYearMonth(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertGYearMonth(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public byte[] createHexBinary(String literal) {
        if (literal == null) {
            return null;
        }
        byte[] value = DataValue.HexBin.decode(this.collapseWhiteSpace(literal));
        if (value == null) {
            throw new InvalidDatatypeValueException("Invalid hexBinary value: '" + literal + "'");
        }
        return value;
    }

    @Override
    public String convertHexBinary(byte[] instanceValue) {
        return instanceValue == null ? null : DataValue.HexBin.encode(instanceValue);
    }

    @Override
    public String createID(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    public String createIDFromString(EDataType eDataType, String initialValue) {
        return this.createID(initialValue);
    }

    @Override
    public String convertID(String instanceValue) {
        return instanceValue;
    }

    @Override
    public String createIDREF(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    public String createIDREFFromString(EDataType eDataType, String initialValue) {
        return this.createIDREF(initialValue);
    }

    @Override
    public String convertIDREF(String instanceValue) {
        return instanceValue;
    }

    @Override
    public List<String> createIDREFS(String literal) {
        return this.createIDREFSBase(literal);
    }

    public List<String> createIDREFSFromString(EDataType eDataType, String initialValue) {
        return this.createIDREFSBaseFromString(XMLTypePackage.Literals.IDREFS_BASE, initialValue);
    }

    @Override
    public String convertIDREFS(List<? extends String> instanceValue) {
        return this.convertIDREFSBase(instanceValue);
    }

    public String convertIDREFSToString(EDataType eDataType, Object instanceValue) {
        return this.convertIDREFSBaseToString(XMLTypePackage.Literals.IDREFS_BASE, instanceValue);
    }

    @Override
    public List<String> createIDREFSBase(String literal) {
        if (literal == null) {
            return null;
        }
        ArrayList<String> result = new ArrayList<String>();
        String[] stringArray = this.split(literal);
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String item = stringArray[n2];
            result.add(this.createIDREF(item));
            ++n2;
        }
        return result;
    }

    public List<String> createIDREFSBaseFromString(EDataType eDataType, String initialValue) {
        return this.createIDREFSBase(initialValue);
    }

    @Override
    public String convertIDREFSBase(List<? extends String> instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        if (instanceValue.isEmpty()) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        for (String string : instanceValue) {
            result.append(this.convertIDREF(string));
            result.append(' ');
        }
        return result.substring(0, result.length() - 1);
    }

    public String convertIDREFSBaseToString(EDataType eDataType, Object instanceValue) {
        return this.convertIDREFSBase((List)instanceValue);
    }

    @Override
    public int createInt(String initialValue) {
        return initialValue == null ? 0 : Integer.parseInt(this.collapseWhiteSpaceAndLeadingPlus(initialValue));
    }

    @Override
    public String convertInt(int instanceValue) {
        return Integer.toString(instanceValue);
    }

    @Override
    public BigInteger createInteger(String literal) {
        return literal == null ? null : new BigInteger(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertInteger(BigInteger instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public Integer createIntObject(String literal) {
        return literal == null ? null : Integer.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertIntObject(Integer instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createLanguage(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertLanguage(String instanceValue) {
        return instanceValue;
    }

    @Override
    public long createLong(String literal) {
        return literal == null ? 0L : Long.parseLong(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertLong(long instanceValue) {
        return Long.toString(instanceValue);
    }

    @Override
    public Long createLongObject(String literal) {
        return literal == null ? null : Long.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertLongObject(Long instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createName(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertName(String instanceValue) {
        return instanceValue;
    }

    @Override
    public String createNCName(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertNCName(String instanceValue) {
        return instanceValue;
    }

    @Override
    public BigInteger createNegativeInteger(String literal) {
        return this.createNonPositiveIntegerFromString(XMLTypePackage.Literals.NON_POSITIVE_INTEGER, literal);
    }

    public BigInteger createNegativeIntegerFromString(EDataType eDataType, String initialValue) {
        return this.createNonPositiveIntegerFromString(XMLTypePackage.Literals.NON_POSITIVE_INTEGER, initialValue);
    }

    @Override
    public String convertNegativeInteger(BigInteger instanceValue) {
        return this.convertNonPositiveInteger(instanceValue);
    }

    public String convertNegativeIntegerToString(EDataType eDataType, Object instanceValue) {
        return this.convertNonPositiveIntegerToString(XMLTypePackage.Literals.NON_POSITIVE_INTEGER, instanceValue);
    }

    @Override
    public String createNMTOKEN(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertNMTOKEN(String instanceValue) {
        return instanceValue;
    }

    @Override
    public List<String> createNMTOKENS(String literal) {
        return this.createNMTOKENSBase(literal);
    }

    public List<String> createNMTOKENSFromString(EDataType eDataType, String initialValue) {
        return this.createNMTOKENSBaseFromString(XMLTypePackage.Literals.NMTOKENS_BASE, initialValue);
    }

    @Override
    public String convertNMTOKENS(List<? extends String> instanceValue) {
        return this.convertNMTOKENSBase(instanceValue);
    }

    public String convertNMTOKENSToString(EDataType eDataType, Object instanceValue) {
        return this.convertNMTOKENSBaseToString(XMLTypePackage.Literals.NMTOKENS_BASE, instanceValue);
    }

    @Override
    public List<String> createNMTOKENSBase(String literal) {
        if (literal == null) {
            return null;
        }
        ArrayList<String> result = new ArrayList<String>();
        String[] stringArray = this.split(literal);
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String item = stringArray[n2];
            result.add(this.createNMTOKEN(item));
            ++n2;
        }
        return result;
    }

    public List<String> createNMTOKENSBaseFromString(EDataType eDataType, String initialValue) {
        return this.createNMTOKENSBase(initialValue);
    }

    @Override
    public String convertNMTOKENSBase(List<? extends String> instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        if (instanceValue.isEmpty()) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        for (String string : instanceValue) {
            result.append(this.convertNMTOKEN(string));
            result.append(' ');
        }
        return result.substring(0, result.length() - 1);
    }

    public String convertNMTOKENSBaseToString(EDataType eDataType, Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        List list = (List)instanceValue;
        if (list.isEmpty()) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        Iterator i = list.iterator();
        while (i.hasNext()) {
            result.append(this.convertNMTOKENToString(XMLTypePackage.Literals.NMTOKEN, i.next()));
            result.append(' ');
        }
        return result.substring(0, result.length() - 1);
    }

    @Override
    public BigInteger createNonNegativeInteger(String literal) {
        return literal == null ? null : new BigInteger(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertNonNegativeInteger(BigInteger instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public BigInteger createNonPositiveInteger(String literal) {
        return literal == null ? null : new BigInteger(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertNonPositiveInteger(BigInteger instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createNormalizedString(String literal) {
        return this.replaceWhiteSpace(literal);
    }

    @Override
    public String convertNormalizedString(String instanceValue) {
        return instanceValue;
    }

    @Override
    public QName createNOTATION(String literal) {
        return this.createQName(literal);
    }

    @Override
    public String convertNOTATION(QName instanceValue) {
        return this.convertQName(instanceValue);
    }

    @Override
    @Deprecated
    public String convertNOTATION(Object instanceValue) {
        return this.convertNOTATION((QName)instanceValue);
    }

    @Override
    public BigInteger createPositiveInteger(String literal) {
        return this.createNonNegativeInteger(literal);
    }

    public BigInteger createPositiveIntegerFromString(EDataType eDataType, String initialValue) {
        return this.createNonNegativeIntegerFromString(XMLTypePackage.Literals.NON_NEGATIVE_INTEGER, initialValue);
    }

    @Override
    public String convertPositiveInteger(BigInteger instanceValue) {
        return this.convertNonNegativeInteger(instanceValue);
    }

    public String convertPositiveIntegerToString(EDataType eDataType, Object instanceValue) {
        return this.convertNonNegativeIntegerToString(XMLTypePackage.Literals.NON_NEGATIVE_INTEGER, instanceValue);
    }

    @Override
    public QName createQName(String literal) {
        int index;
        String normalizedLiteral = this.collapseWhiteSpace(literal);
        if (literal == null) {
            return null;
        }
        if (normalizedLiteral.startsWith("{") && (index = normalizedLiteral.lastIndexOf(125)) != -1) {
            return new org.eclipse.emf.ecore.xml.type.internal.QName(normalizedLiteral.substring(1, index), normalizedLiteral.substring(index + 1), "");
        }
        return new org.eclipse.emf.ecore.xml.type.internal.QName(normalizedLiteral);
    }

    @Override
    public QName createQName(String namespaceURI, String localPart) {
        return new org.eclipse.emf.ecore.xml.type.internal.QName(namespaceURI, localPart, "");
    }

    @Override
    public QName createQName(String namespaceURI, String localPart, String prefix) {
        return new org.eclipse.emf.ecore.xml.type.internal.QName(namespaceURI, localPart, prefix);
    }

    @Override
    public String convertQName(QName instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        String prefix = instanceValue.getPrefix();
        return prefix.length() == 0 ? instanceValue.getLocalPart() : String.valueOf(prefix) + ':' + instanceValue.getLocalPart();
    }

    @Override
    @Deprecated
    public String convertQName(Object instanceValue) {
        return this.convertQName((QName)instanceValue);
    }

    @Override
    public short createShort(String literal) {
        return literal == null ? (short)0 : Short.parseShort(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertShort(short instanceValue) {
        return Short.toString(instanceValue);
    }

    @Override
    public Short createShortObject(String literal) {
        return literal == null ? null : Short.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertShortObject(Short instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createString(String initialValue) {
        return initialValue;
    }

    @Override
    public String convertString(String instanceValue) {
        return instanceValue;
    }

    @Override
    public XMLGregorianCalendar createTime(String literal) {
        return literal == null ? null : new XMLCalendar(this.collapseWhiteSpace(literal), 1);
    }

    @Override
    public String convertTime(XMLGregorianCalendar instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    @Deprecated
    public String convertTime(Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public String createToken(String literal) {
        return this.collapseWhiteSpace(literal);
    }

    @Override
    public String convertToken(String instanceValue) {
        return instanceValue;
    }

    @Override
    public short createUnsignedByte(String literal) {
        return literal == null ? (short)0 : Short.parseShort(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedByte(short instanceValue) {
        return Short.toString(instanceValue);
    }

    @Override
    public Short createUnsignedByteObject(String literal) {
        return literal == null ? null : Short.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedByteObject(Short instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public long createUnsignedInt(String literal) {
        return literal == null ? 0L : Long.parseLong(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedInt(long instanceValue) {
        return Long.toString(instanceValue);
    }

    @Override
    public Long createUnsignedIntObject(String literal) {
        return literal == null ? null : Long.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedIntObject(Long instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public BigInteger createUnsignedLong(String literal) {
        return this.createNonNegativeInteger(literal);
    }

    public BigInteger createUnsignedLongFromString(EDataType eDataType, String initialValue) {
        return this.createNonNegativeIntegerFromString(XMLTypePackage.Literals.NON_NEGATIVE_INTEGER, initialValue);
    }

    @Override
    public String convertUnsignedLong(BigInteger instanceValue) {
        return this.convertNonNegativeInteger(instanceValue);
    }

    public String convertUnsignedLongToString(EDataType eDataType, Object instanceValue) {
        return this.convertNonNegativeIntegerToString(XMLTypePackage.Literals.NON_NEGATIVE_INTEGER, instanceValue);
    }

    @Override
    public int createUnsignedShort(String literal) {
        return literal == null ? 0 : Integer.parseInt(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedShort(int instanceValue) {
        return Integer.toString(instanceValue);
    }

    @Override
    public Integer createUnsignedShortObject(String literal) {
        return literal == null ? null : Integer.valueOf(this.collapseWhiteSpaceAndLeadingPlus(literal));
    }

    @Override
    public String convertUnsignedShortObject(Integer instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public static XMLTypeFactory init() {
        try {
            XMLTypeFactory theXMLTypeFactory = (XMLTypeFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.eclipse.org/emf/2003/XMLType");
            if (theXMLTypeFactory != null) {
                return theXMLTypeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log(exception);
        }
        return new XMLTypeFactoryImpl();
    }

    @Override
    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAnyType();
            }
            case 1: {
                return this.createProcessingInstruction();
            }
            case 2: {
                return this.createSimpleAnyType();
            }
            case 3: {
                return this.createXMLTypeDocumentRoot();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    @Override
    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createAnySimpleTypeFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createAnyURIFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createBase64BinaryFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createBooleanFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createBooleanObjectFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createByteFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createByteObjectFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createDateFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createDateTimeFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createDecimalFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createDoubleFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createDoubleObjectFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createDurationFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createENTITIESFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createENTITIESBaseFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createENTITYFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createFloatFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createFloatObjectFromString(eDataType, initialValue);
            }
            case 22: {
                return this.createGDayFromString(eDataType, initialValue);
            }
            case 23: {
                return this.createGMonthFromString(eDataType, initialValue);
            }
            case 24: {
                return this.createGMonthDayFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createGYearFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createGYearMonthFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createHexBinaryFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createIDFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createIDREFFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createIDREFSFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createIDREFSBaseFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createIntFromString(eDataType, initialValue);
            }
            case 33: {
                return this.createIntegerFromString(eDataType, initialValue);
            }
            case 34: {
                return this.createIntObjectFromString(eDataType, initialValue);
            }
            case 35: {
                return this.createLanguageFromString(eDataType, initialValue);
            }
            case 36: {
                return this.createLongFromString(eDataType, initialValue);
            }
            case 37: {
                return this.createLongObjectFromString(eDataType, initialValue);
            }
            case 38: {
                return this.createNameFromString(eDataType, initialValue);
            }
            case 39: {
                return this.createNCNameFromString(eDataType, initialValue);
            }
            case 40: {
                return this.createNegativeIntegerFromString(eDataType, initialValue);
            }
            case 41: {
                return this.createNMTOKENFromString(eDataType, initialValue);
            }
            case 42: {
                return this.createNMTOKENSFromString(eDataType, initialValue);
            }
            case 43: {
                return this.createNMTOKENSBaseFromString(eDataType, initialValue);
            }
            case 44: {
                return this.createNonNegativeIntegerFromString(eDataType, initialValue);
            }
            case 45: {
                return this.createNonPositiveIntegerFromString(eDataType, initialValue);
            }
            case 46: {
                return this.createNormalizedStringFromString(eDataType, initialValue);
            }
            case 47: {
                return this.createNOTATIONFromString(eDataType, initialValue);
            }
            case 48: {
                return this.createPositiveIntegerFromString(eDataType, initialValue);
            }
            case 49: {
                return this.createQNameFromString(eDataType, initialValue);
            }
            case 50: {
                return this.createShortFromString(eDataType, initialValue);
            }
            case 51: {
                return this.createShortObjectFromString(eDataType, initialValue);
            }
            case 52: {
                return this.createStringFromString(eDataType, initialValue);
            }
            case 53: {
                return this.createTimeFromString(eDataType, initialValue);
            }
            case 54: {
                return this.createTokenFromString(eDataType, initialValue);
            }
            case 55: {
                return this.createUnsignedByteFromString(eDataType, initialValue);
            }
            case 56: {
                return this.createUnsignedByteObjectFromString(eDataType, initialValue);
            }
            case 57: {
                return this.createUnsignedIntFromString(eDataType, initialValue);
            }
            case 58: {
                return this.createUnsignedIntObjectFromString(eDataType, initialValue);
            }
            case 59: {
                return this.createUnsignedLongFromString(eDataType, initialValue);
            }
            case 60: {
                return this.createUnsignedShortFromString(eDataType, initialValue);
            }
            case 61: {
                return this.createUnsignedShortObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertAnySimpleTypeToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertAnyURIToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertBase64BinaryToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertBooleanToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertBooleanObjectToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertByteToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertByteObjectToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertDateToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertDateTimeToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertDecimalToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertDoubleToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertDoubleObjectToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertDurationToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertENTITIESToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertENTITIESBaseToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertENTITYToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertFloatToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertFloatObjectToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertGDayToString(eDataType, instanceValue);
            }
            case 23: {
                return this.convertGMonthToString(eDataType, instanceValue);
            }
            case 24: {
                return this.convertGMonthDayToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertGYearToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertGYearMonthToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertHexBinaryToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertIDToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertIDREFToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertIDREFSToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertIDREFSBaseToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertIntToString(eDataType, instanceValue);
            }
            case 33: {
                return this.convertIntegerToString(eDataType, instanceValue);
            }
            case 34: {
                return this.convertIntObjectToString(eDataType, instanceValue);
            }
            case 35: {
                return this.convertLanguageToString(eDataType, instanceValue);
            }
            case 36: {
                return this.convertLongToString(eDataType, instanceValue);
            }
            case 37: {
                return this.convertLongObjectToString(eDataType, instanceValue);
            }
            case 38: {
                return this.convertNameToString(eDataType, instanceValue);
            }
            case 39: {
                return this.convertNCNameToString(eDataType, instanceValue);
            }
            case 40: {
                return this.convertNegativeIntegerToString(eDataType, instanceValue);
            }
            case 41: {
                return this.convertNMTOKENToString(eDataType, instanceValue);
            }
            case 42: {
                return this.convertNMTOKENSToString(eDataType, instanceValue);
            }
            case 43: {
                return this.convertNMTOKENSBaseToString(eDataType, instanceValue);
            }
            case 44: {
                return this.convertNonNegativeIntegerToString(eDataType, instanceValue);
            }
            case 45: {
                return this.convertNonPositiveIntegerToString(eDataType, instanceValue);
            }
            case 46: {
                return this.convertNormalizedStringToString(eDataType, instanceValue);
            }
            case 47: {
                return this.convertNOTATIONToString(eDataType, instanceValue);
            }
            case 48: {
                return this.convertPositiveIntegerToString(eDataType, instanceValue);
            }
            case 49: {
                return this.convertQNameToString(eDataType, instanceValue);
            }
            case 50: {
                return this.convertShortToString(eDataType, instanceValue);
            }
            case 51: {
                return this.convertShortObjectToString(eDataType, instanceValue);
            }
            case 52: {
                return this.convertStringToString(eDataType, instanceValue);
            }
            case 53: {
                return this.convertTimeToString(eDataType, instanceValue);
            }
            case 54: {
                return this.convertTokenToString(eDataType, instanceValue);
            }
            case 55: {
                return this.convertUnsignedByteToString(eDataType, instanceValue);
            }
            case 56: {
                return this.convertUnsignedByteObjectToString(eDataType, instanceValue);
            }
            case 57: {
                return this.convertUnsignedIntToString(eDataType, instanceValue);
            }
            case 58: {
                return this.convertUnsignedIntObjectToString(eDataType, instanceValue);
            }
            case 59: {
                return this.convertUnsignedLongToString(eDataType, instanceValue);
            }
            case 60: {
                return this.convertUnsignedShortToString(eDataType, instanceValue);
            }
            case 61: {
                return this.convertUnsignedShortObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public AnyType createAnyType() {
        AnyTypeImpl anyType = new AnyTypeImpl();
        return anyType;
    }

    @Override
    public ProcessingInstruction createProcessingInstruction() {
        ProcessingInstructionImpl processingInstruction = new ProcessingInstructionImpl();
        return processingInstruction;
    }

    @Override
    public SimpleAnyType createSimpleAnyType() {
        SimpleAnyTypeImpl simpleAnyType = new SimpleAnyTypeImpl();
        return simpleAnyType;
    }

    @Override
    public XMLTypeDocumentRoot createXMLTypeDocumentRoot() {
        XMLTypeDocumentRootImpl xmlTypeDocumentRoot = new XMLTypeDocumentRootImpl();
        return xmlTypeDocumentRoot;
    }

    public Object createAnySimpleTypeFromString(EDataType eDataType, String initialValue) {
        return this.createAnySimpleType(initialValue);
    }

    public String convertAnySimpleTypeToString(EDataType eDataType, Object instanceValue) {
        return this.convertAnySimpleType(instanceValue);
    }

    public String createAnyURIFromString(EDataType eDataType, String initialValue) {
        return this.createAnyURI(initialValue);
    }

    public String convertAnyURIToString(EDataType eDataType, Object instanceValue) {
        return this.convertAnyURI((String)instanceValue);
    }

    public byte[] createBase64BinaryFromString(EDataType eDataType, String initialValue) {
        return this.createBase64Binary(initialValue);
    }

    public String convertBase64BinaryToString(EDataType eDataType, Object instanceValue) {
        return this.convertBase64Binary((byte[])instanceValue);
    }

    public Boolean createBooleanFromString(EDataType eDataType, String initialValue) {
        return this.createBooleanObject(initialValue);
    }

    public String convertBooleanToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Boolean createBooleanObjectFromString(EDataType eDataType, String initialValue) {
        return initialValue == null ? null : this.booleanValueOf(initialValue);
    }

    public String convertBooleanObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BigDecimal createDecimalFromString(EDataType eDataType, String initialValue) {
        return this.createDecimal(initialValue);
    }

    public String convertDecimalToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BigInteger createIntegerFromString(EDataType eDataType, String initialValue) {
        return this.createInteger(initialValue);
    }

    public String convertIntegerToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Integer createIntObjectFromString(EDataType eDataType, String initialValue) {
        return this.createIntObject(initialValue);
    }

    public String convertIntObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Long createLongFromString(EDataType eDataType, String initialValue) {
        return this.createLongObject(initialValue);
    }

    public String convertLongToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Long createLongObjectFromString(EDataType eDataType, String initialValue) {
        return this.createLongObject(initialValue);
    }

    public String convertLongObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Integer createIntFromString(EDataType eDataType, String initialValue) {
        return this.createIntObject(initialValue);
    }

    public String convertIntToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Short createShortFromString(EDataType eDataType, String initialValue) {
        return this.createShortObject(initialValue);
    }

    public String convertShortToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Short createShortObjectFromString(EDataType eDataType, String initialValue) {
        return this.createShortObject(initialValue);
    }

    public String convertShortObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Byte createByteFromString(EDataType eDataType, String initialValue) {
        return this.createByteObject(initialValue);
    }

    public String convertByteToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Byte createByteObjectFromString(EDataType eDataType, String initialValue) {
        return this.createByteObject(initialValue);
    }

    public String convertByteObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createDateFromString(EDataType eDataType, String initialValue) {
        return this.createDate(initialValue);
    }

    public String convertDateToString(EDataType eDataType, Object instanceValue) {
        return this.convertDate(instanceValue);
    }

    public Object createDateTimeFromString(EDataType eDataType, String initialValue) {
        return this.createDateTime(initialValue);
    }

    public String convertDateTimeToString(EDataType eDataType, Object instanceValue) {
        return this.convertDateTime(instanceValue);
    }

    public String createStringFromString(EDataType eDataType, String initialValue) {
        return initialValue;
    }

    public String convertStringToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public Double createDoubleFromString(EDataType eDataType, String initialValue) {
        return this.createDoubleObject(initialValue);
    }

    public String convertDoubleToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Double createDoubleObjectFromString(EDataType eDataType, String initialValue) {
        return this.createDoubleObject(initialValue);
    }

    public String convertDoubleObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createDurationFromString(EDataType eDataType, String initialValue) {
        return this.createDuration(initialValue);
    }

    public String convertDurationToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createNormalizedStringFromString(EDataType eDataType, String initialValue) {
        return this.createNormalizedString(initialValue);
    }

    public String convertNormalizedStringToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String createTokenFromString(EDataType eDataType, String initialValue) {
        return this.createToken(initialValue);
    }

    public String convertTokenToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String createNameFromString(EDataType eDataType, String initialValue) {
        return this.createName(initialValue);
    }

    public String convertNameToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String createNCNameFromString(EDataType eDataType, String initialValue) {
        return this.createNCName(initialValue);
    }

    public String convertNCNameToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String createENTITYFromString(EDataType eDataType, String initialValue) {
        return this.createENTITY(initialValue);
    }

    public String convertENTITYToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public Float createFloatFromString(EDataType eDataType, String initialValue) {
        return this.createFloatObject(initialValue);
    }

    public String convertFloatToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Float createFloatObjectFromString(EDataType eDataType, String initialValue) {
        return this.createFloatObject(initialValue);
    }

    public String convertFloatObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createGDayFromString(EDataType eDataType, String initialValue) {
        return this.createGDay(initialValue);
    }

    public String convertGDayToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createGMonthFromString(EDataType eDataType, String initialValue) {
        return this.createGMonth(initialValue);
    }

    public String convertGMonthToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createGMonthDayFromString(EDataType eDataType, String initialValue) {
        return this.createGMonthDay(initialValue);
    }

    public String convertGMonthDayToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createGYearFromString(EDataType eDataType, String initialValue) {
        return this.createGYear(initialValue);
    }

    public String convertGYearToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createGYearMonthFromString(EDataType eDataType, String initialValue) {
        return this.createGYearMonth(initialValue);
    }

    public String convertGYearMonthToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public byte[] createHexBinaryFromString(EDataType eDataType, String initialValue) {
        return this.createHexBinary(initialValue);
    }

    public String convertHexBinaryToString(EDataType eDataType, Object instanceValue) {
        return this.convertHexBinary((byte[])instanceValue);
    }

    public String convertIDToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String convertIDREFToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public String createLanguageFromString(EDataType eDataType, String initialValue) {
        return this.createLanguage(initialValue);
    }

    public String convertLanguageToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public BigInteger createNonPositiveIntegerFromString(EDataType eDataType, String initialValue) {
        return this.createNonPositiveInteger(initialValue);
    }

    public String convertNonPositiveIntegerToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createNMTOKENFromString(EDataType eDataType, String initialValue) {
        return this.createNMTOKEN(initialValue);
    }

    public String convertNMTOKENToString(EDataType eDataType, Object instanceValue) {
        return (String)instanceValue;
    }

    public BigInteger createNonNegativeIntegerFromString(EDataType eDataType, String initialValue) {
        return this.createNonNegativeInteger(initialValue);
    }

    public String convertNonNegativeIntegerToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Object createNOTATIONFromString(EDataType eDataType, String initialValue) {
        return this.createNOTATION(initialValue);
    }

    public String convertNOTATIONToString(EDataType eDataType, Object instanceValue) {
        return this.convertNOTATION((QName)instanceValue);
    }

    public Object createQNameFromString(EDataType eDataType, String initialValue) {
        return this.createQName(initialValue);
    }

    public String convertQNameToString(EDataType eDataType, Object instanceValue) {
        return this.convertQName((QName)instanceValue);
    }

    public Object createTimeFromString(EDataType eDataType, String initialValue) {
        return this.createTime(initialValue);
    }

    public String convertTimeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Long createUnsignedIntFromString(EDataType eDataType, String initialValue) {
        return this.createUnsignedIntObject(initialValue);
    }

    public String convertUnsignedIntToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Long createUnsignedIntObjectFromString(EDataType eDataType, String initialValue) {
        return this.createUnsignedIntObject(initialValue);
    }

    public String convertUnsignedIntObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Integer createUnsignedShortFromString(EDataType eDataType, String initialValue) {
        return this.createUnsignedShortObject(initialValue);
    }

    public String convertUnsignedShortToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Integer createUnsignedShortObjectFromString(EDataType eDataType, String initialValue) {
        return initialValue == null ? null : Integer.valueOf(this.collapseWhiteSpace(initialValue));
    }

    public String convertUnsignedShortObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Short createUnsignedByteFromString(EDataType eDataType, String initialValue) {
        return this.createUnsignedByteObject(initialValue);
    }

    public String convertUnsignedByteToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Short createUnsignedByteObjectFromString(EDataType eDataType, String initialValue) {
        return this.createUnsignedByteObject(initialValue);
    }

    public String convertUnsignedByteObjectToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public XMLTypePackage getXMLTypePackage() {
        return (XMLTypePackage)this.getEPackage();
    }

    @Deprecated
    public static XMLTypePackage getPackage() {
        return XMLTypePackage.eINSTANCE;
    }

    protected Boolean booleanValueOf(String initialValue) {
        if ("true".equals(initialValue = this.collapseWhiteSpace(initialValue)) || "1".equals(initialValue)) {
            return Boolean.TRUE;
        }
        if ("false".equals(initialValue) || "0".equals(initialValue)) {
            return Boolean.FALSE;
        }
        throw new InvalidDatatypeValueException("Invalid boolean value: '" + initialValue + "'");
    }

    protected boolean primitiveBooleanValueOf(String initialValue) {
        if ("true".equals(initialValue = this.collapseWhiteSpace(initialValue)) || "1".equals(initialValue)) {
            return true;
        }
        if ("false".equals(initialValue) || "0".equals(initialValue)) {
            return false;
        }
        throw new InvalidDatatypeValueException("Invalid boolean value: '" + initialValue + "'");
    }

    private String collapseWhiteSpaceAndLeadingPlus(String value) {
        String result = super.collapseWhiteSpace(value);
        return result.length() > 0 && result.charAt(0) == '+' ? result.substring(1) : result;
    }

    private static class SafeSimpleDateFormat
    extends SimpleDateFormat {
        private static final long serialVersionUID = 1L;

        public SafeSimpleDateFormat(String pattern) {
            super(pattern, Locale.ENGLISH);
        }

        public synchronized Date parse(String source) throws ParseException {
            return super.parse(source);
        }

        public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition pos) {
            StringBuffer result = super.format(date, toAppendTo, pos);
            result.insert(result.length() - 2, ":");
            return result;
        }
    }
}

