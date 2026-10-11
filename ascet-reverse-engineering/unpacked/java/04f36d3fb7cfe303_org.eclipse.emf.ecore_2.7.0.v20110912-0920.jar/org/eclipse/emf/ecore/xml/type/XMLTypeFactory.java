/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.impl.XMLTypeFactoryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLTypeFactory
extends EFactory {
    public static final XMLTypeFactory eINSTANCE = XMLTypeFactoryImpl.init();

    public AnyType createAnyType();

    public ProcessingInstruction createProcessingInstruction();

    public SimpleAnyType createSimpleAnyType();

    public XMLTypeDocumentRoot createXMLTypeDocumentRoot();

    public Object createAnySimpleType(String var1);

    public String convertAnySimpleType(Object var1);

    public String createAnyURI(String var1);

    public String convertAnyURI(String var1);

    public byte[] createBase64Binary(String var1);

    public String convertBase64Binary(byte[] var1);

    public boolean createBoolean(String var1);

    public String convertBoolean(boolean var1);

    public Boolean createBooleanObject(String var1);

    public String convertBooleanObject(Boolean var1);

    public byte createByte(String var1);

    public String convertByte(byte var1);

    public Byte createByteObject(String var1);

    public String convertByteObject(Byte var1);

    public XMLGregorianCalendar createDate(String var1);

    public String convertDate(XMLGregorianCalendar var1);

    @Deprecated
    public String convertDate(Object var1);

    public XMLGregorianCalendar createDateTime(String var1);

    public String convertDateTime(XMLGregorianCalendar var1);

    @Deprecated
    public String convertDateTime(Object var1);

    public BigDecimal createDecimal(String var1);

    public String convertDecimal(BigDecimal var1);

    public double createDouble(String var1);

    public String convertDouble(double var1);

    public Double createDoubleObject(String var1);

    public String convertDoubleObject(Double var1);

    public Duration createDuration(String var1);

    public String convertDuration(Duration var1);

    @Deprecated
    public String convertDuration(Object var1);

    public List<String> createENTITIES(String var1);

    public String convertENTITIES(List<? extends String> var1);

    public List<String> createENTITIESBase(String var1);

    public String convertENTITIESBase(List<? extends String> var1);

    public String createENTITY(String var1);

    public String convertENTITY(String var1);

    public float createFloat(String var1);

    public String convertFloat(float var1);

    public Float createFloatObject(String var1);

    public String convertFloatObject(Float var1);

    public XMLGregorianCalendar createGDay(String var1);

    public String convertGDay(XMLGregorianCalendar var1);

    @Deprecated
    public String convertGDay(Object var1);

    public XMLGregorianCalendar createGMonth(String var1);

    public String convertGMonth(XMLGregorianCalendar var1);

    @Deprecated
    public String convertGMonth(Object var1);

    public XMLGregorianCalendar createGMonthDay(String var1);

    public String convertGMonthDay(XMLGregorianCalendar var1);

    @Deprecated
    public String convertGMonthDay(Object var1);

    public XMLGregorianCalendar createGYear(String var1);

    public String convertGYear(XMLGregorianCalendar var1);

    @Deprecated
    public String convertGYear(Object var1);

    public XMLGregorianCalendar createGYearMonth(String var1);

    public String convertGYearMonth(XMLGregorianCalendar var1);

    @Deprecated
    public String convertGYearMonth(Object var1);

    public byte[] createHexBinary(String var1);

    public String convertHexBinary(byte[] var1);

    public String createID(String var1);

    public String convertID(String var1);

    public String createIDREF(String var1);

    public String convertIDREF(String var1);

    public List<String> createIDREFS(String var1);

    public String convertIDREFS(List<? extends String> var1);

    public List<String> createIDREFSBase(String var1);

    public String convertIDREFSBase(List<? extends String> var1);

    public int createInt(String var1);

    public String convertInt(int var1);

    public BigInteger createInteger(String var1);

    public String convertInteger(BigInteger var1);

    public Integer createIntObject(String var1);

    public String convertIntObject(Integer var1);

    public String createLanguage(String var1);

    public String convertLanguage(String var1);

    public long createLong(String var1);

    public String convertLong(long var1);

    public Long createLongObject(String var1);

    public String convertLongObject(Long var1);

    public String createName(String var1);

    public String convertName(String var1);

    public String createNCName(String var1);

    public String convertNCName(String var1);

    public BigInteger createNegativeInteger(String var1);

    public String convertNegativeInteger(BigInteger var1);

    public String createNMTOKEN(String var1);

    public String convertNMTOKEN(String var1);

    public List<String> createNMTOKENS(String var1);

    public String convertNMTOKENS(List<? extends String> var1);

    public List<String> createNMTOKENSBase(String var1);

    public String convertNMTOKENSBase(List<? extends String> var1);

    public BigInteger createNonNegativeInteger(String var1);

    public String convertNonNegativeInteger(BigInteger var1);

    public BigInteger createNonPositiveInteger(String var1);

    public String convertNonPositiveInteger(BigInteger var1);

    public String createNormalizedString(String var1);

    public String convertNormalizedString(String var1);

    public QName createNOTATION(String var1);

    public String convertNOTATION(QName var1);

    @Deprecated
    public String convertNOTATION(Object var1);

    public BigInteger createPositiveInteger(String var1);

    public String convertPositiveInteger(BigInteger var1);

    public QName createQName(String var1);

    public QName createQName(String var1, String var2);

    public QName createQName(String var1, String var2, String var3);

    public String convertQName(QName var1);

    @Deprecated
    public String convertQName(Object var1);

    public short createShort(String var1);

    public String convertShort(short var1);

    public Short createShortObject(String var1);

    public String convertShortObject(Short var1);

    public String createString(String var1);

    public String convertString(String var1);

    public XMLGregorianCalendar createTime(String var1);

    public String convertTime(XMLGregorianCalendar var1);

    @Deprecated
    public String convertTime(Object var1);

    public String createToken(String var1);

    public String convertToken(String var1);

    public short createUnsignedByte(String var1);

    public String convertUnsignedByte(short var1);

    public Short createUnsignedByteObject(String var1);

    public String convertUnsignedByteObject(Short var1);

    public long createUnsignedInt(String var1);

    public String convertUnsignedInt(long var1);

    public Long createUnsignedIntObject(String var1);

    public String convertUnsignedIntObject(Long var1);

    public BigInteger createUnsignedLong(String var1);

    public String convertUnsignedLong(BigInteger var1);

    public int createUnsignedShort(String var1);

    public String convertUnsignedShort(int var1);

    public Integer createUnsignedShortObject(String var1);

    public String convertUnsignedShortObject(Integer var1);

    public XMLTypePackage getXMLTypePackage();
}

