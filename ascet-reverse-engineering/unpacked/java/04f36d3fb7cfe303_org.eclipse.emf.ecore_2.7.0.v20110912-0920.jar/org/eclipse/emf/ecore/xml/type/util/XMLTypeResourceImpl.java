/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xml.type.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.ResourceImpl;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class XMLTypeResourceImpl
extends ResourceImpl {
    public XMLTypeResourceImpl(URI uri) {
        super(uri);
    }

    public static class DataFrame
    extends StackFrame {
        protected StringBuffer stringBuffer;

        public void characters(char[] text, int start, int length) throws SAXException {
            if (this.stringBuffer == null) {
                this.stringBuffer = new StringBuffer();
            }
            this.stringBuffer.append(text, start, length);
        }

        public String popValue() {
            if (this.stringBuffer == null) {
                this.pop();
                return null;
            }
            String result = this.stringBuffer.toString();
            this.stringBuffer.setLength(0);
            this.pop();
            return result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class FrameFactory {
        public static final FrameFactory INSTANCE = new FrameFactory();
        protected AnyTypeStackFrame anyType;
        protected ProcessingInstructionStackFrame processingInstruction;
        protected SimpleAnyTypeStackFrame simpleAnyType;
        protected XMLTypeDocumentRootStackFrame xmlTypeDocumentRoot;
        protected DataFrame anySimpleType;
        protected DataFrame anyURI;
        protected DataFrame base64Binary;
        protected DataFrame boolean_;
        protected DataFrame booleanObject;
        protected DataFrame byte_;
        protected DataFrame byteObject;
        protected DataFrame date;
        protected DataFrame dateTime;
        protected DataFrame decimal;
        protected DataFrame double_;
        protected DataFrame doubleObject;
        protected DataFrame duration;
        protected DataFrame entities;
        protected DataFrame entitiesBase;
        protected DataFrame entity;
        protected DataFrame float_;
        protected DataFrame floatObject;
        protected DataFrame gDay;
        protected DataFrame gMonth;
        protected DataFrame gMonthDay;
        protected DataFrame gYear;
        protected DataFrame gYearMonth;
        protected DataFrame hexBinary;
        protected DataFrame id;
        protected DataFrame idref;
        protected DataFrame idrefs;
        protected DataFrame idrefsBase;
        protected DataFrame int_;
        protected DataFrame integer;
        protected DataFrame intObject;
        protected DataFrame language;
        protected DataFrame long_;
        protected DataFrame longObject;
        protected DataFrame name;
        protected DataFrame ncName;
        protected DataFrame negativeInteger;
        protected DataFrame nmtoken;
        protected DataFrame nmtokens;
        protected DataFrame nmtokensBase;
        protected DataFrame nonNegativeInteger;
        protected DataFrame nonPositiveInteger;
        protected DataFrame normalizedString;
        protected DataFrame notation;
        protected DataFrame positiveInteger;
        protected DataFrame qName;
        protected DataFrame short_;
        protected DataFrame shortObject;
        protected DataFrame string;
        protected DataFrame time;
        protected DataFrame token;
        protected DataFrame unsignedByte;
        protected DataFrame unsignedByteObject;
        protected DataFrame unsignedInt;
        protected DataFrame unsignedIntObject;
        protected DataFrame unsignedLong;
        protected DataFrame unsignedShort;
        protected DataFrame unsignedShortObject;

        public AnyTypeStackFrame pushAnyType(StackFrame previous, Attributes attributes) {
            AnyTypeStackFrame resultAnyType = this.anyType == null ? new AnyTypeStackFrame() : this.anyType;
            this.anyType = null;
            resultAnyType.pushOnto(previous);
            resultAnyType.handleAttributes(attributes);
            return resultAnyType;
        }

        public AnyType popAnyType(AnyTypeStackFrame anyType) {
            AnyType resultAnyTypeValue = anyType.popAnyType();
            this.anyType = anyType;
            return resultAnyTypeValue;
        }

        public ProcessingInstructionStackFrame pushProcessingInstruction(StackFrame previous, Attributes attributes) {
            ProcessingInstructionStackFrame resultProcessingInstruction = this.processingInstruction == null ? new ProcessingInstructionStackFrame() : this.processingInstruction;
            this.processingInstruction = null;
            resultProcessingInstruction.pushOnto(previous);
            resultProcessingInstruction.handleAttributes(attributes);
            return resultProcessingInstruction;
        }

        public ProcessingInstruction popProcessingInstruction(ProcessingInstructionStackFrame processingInstruction) {
            ProcessingInstruction resultProcessingInstructionValue = processingInstruction.popProcessingInstruction();
            this.processingInstruction = processingInstruction;
            return resultProcessingInstructionValue;
        }

        public SimpleAnyTypeStackFrame pushSimpleAnyType(StackFrame previous, Attributes attributes) {
            SimpleAnyTypeStackFrame resultSimpleAnyType = this.simpleAnyType == null ? new SimpleAnyTypeStackFrame() : this.simpleAnyType;
            this.simpleAnyType = null;
            resultSimpleAnyType.pushOnto(previous);
            resultSimpleAnyType.handleAttributes(attributes);
            return resultSimpleAnyType;
        }

        public SimpleAnyType popSimpleAnyType(SimpleAnyTypeStackFrame simpleAnyType) {
            SimpleAnyType resultSimpleAnyTypeValue = simpleAnyType.popSimpleAnyType();
            this.simpleAnyType = simpleAnyType;
            return resultSimpleAnyTypeValue;
        }

        public XMLTypeDocumentRootStackFrame pushXMLTypeDocumentRoot(StackFrame previous, Attributes attributes) {
            XMLTypeDocumentRootStackFrame resultXMLTypeDocumentRoot = this.xmlTypeDocumentRoot == null ? new XMLTypeDocumentRootStackFrame() : this.xmlTypeDocumentRoot;
            this.xmlTypeDocumentRoot = null;
            resultXMLTypeDocumentRoot.pushOnto(previous);
            resultXMLTypeDocumentRoot.handleAttributes(attributes);
            return resultXMLTypeDocumentRoot;
        }

        public XMLTypeDocumentRoot popXMLTypeDocumentRoot(XMLTypeDocumentRootStackFrame xmlTypeDocumentRoot) {
            XMLTypeDocumentRoot resultXMLTypeDocumentRootValue = xmlTypeDocumentRoot.popXMLTypeDocumentRoot();
            this.xmlTypeDocumentRoot = xmlTypeDocumentRoot;
            return resultXMLTypeDocumentRootValue;
        }

        public DataFrame pushAnySimpleType(StackFrame previous, Attributes attributes) {
            DataFrame resultAnySimpleType = this.anySimpleType == null ? new DataFrame() : this.anySimpleType;
            this.anySimpleType = null;
            resultAnySimpleType.pushOnto(previous);
            resultAnySimpleType.handleAttributes(attributes);
            return resultAnySimpleType;
        }

        public Object popAnySimpleType(DataFrame anySimpleType) {
            Object resultAnySimpleTypeValue = XMLTypeFactory.eINSTANCE.createAnySimpleType(anySimpleType.popValue());
            this.anySimpleType = anySimpleType;
            return resultAnySimpleTypeValue;
        }

        public DataFrame pushAnyURI(StackFrame previous, Attributes attributes) {
            DataFrame resultAnyURI = this.anyURI == null ? new DataFrame() : this.anyURI;
            this.anyURI = null;
            resultAnyURI.pushOnto(previous);
            resultAnyURI.handleAttributes(attributes);
            return resultAnyURI;
        }

        public String popAnyURI(DataFrame anyURI) {
            String resultAnyURIValue = XMLTypeFactory.eINSTANCE.createAnyURI(anyURI.popValue());
            this.anyURI = anyURI;
            return resultAnyURIValue;
        }

        public DataFrame pushBase64Binary(StackFrame previous, Attributes attributes) {
            DataFrame resultBase64Binary = this.base64Binary == null ? new DataFrame() : this.base64Binary;
            this.base64Binary = null;
            resultBase64Binary.pushOnto(previous);
            resultBase64Binary.handleAttributes(attributes);
            return resultBase64Binary;
        }

        public byte[] popBase64Binary(DataFrame base64Binary) {
            byte[] resultBase64BinaryValue = XMLTypeFactory.eINSTANCE.createBase64Binary(base64Binary.popValue());
            this.base64Binary = base64Binary;
            return resultBase64BinaryValue;
        }

        public DataFrame pushBoolean(StackFrame previous, Attributes attributes) {
            DataFrame resultBoolean = this.boolean_ == null ? new DataFrame() : this.boolean_;
            this.boolean_ = null;
            resultBoolean.pushOnto(previous);
            resultBoolean.handleAttributes(attributes);
            return resultBoolean;
        }

        public boolean popBoolean(DataFrame boolean_) {
            boolean resultBooleanValue = XMLTypeFactory.eINSTANCE.createBoolean(boolean_.popValue());
            this.boolean_ = boolean_;
            return resultBooleanValue;
        }

        public DataFrame pushBooleanObject(StackFrame previous, Attributes attributes) {
            DataFrame resultBooleanObject = this.booleanObject == null ? new DataFrame() : this.booleanObject;
            this.booleanObject = null;
            resultBooleanObject.pushOnto(previous);
            resultBooleanObject.handleAttributes(attributes);
            return resultBooleanObject;
        }

        public Boolean popBooleanObject(DataFrame booleanObject) {
            Boolean resultBooleanObjectValue = XMLTypeFactory.eINSTANCE.createBooleanObject(booleanObject.popValue());
            this.booleanObject = booleanObject;
            return resultBooleanObjectValue;
        }

        public DataFrame pushByte(StackFrame previous, Attributes attributes) {
            DataFrame resultByte = this.byte_ == null ? new DataFrame() : this.byte_;
            this.byte_ = null;
            resultByte.pushOnto(previous);
            resultByte.handleAttributes(attributes);
            return resultByte;
        }

        public byte popByte(DataFrame byte_) {
            byte resultByteValue = XMLTypeFactory.eINSTANCE.createByte(byte_.popValue());
            this.byte_ = byte_;
            return resultByteValue;
        }

        public DataFrame pushByteObject(StackFrame previous, Attributes attributes) {
            DataFrame resultByteObject = this.byteObject == null ? new DataFrame() : this.byteObject;
            this.byteObject = null;
            resultByteObject.pushOnto(previous);
            resultByteObject.handleAttributes(attributes);
            return resultByteObject;
        }

        public Byte popByteObject(DataFrame byteObject) {
            Byte resultByteObjectValue = XMLTypeFactory.eINSTANCE.createByteObject(byteObject.popValue());
            this.byteObject = byteObject;
            return resultByteObjectValue;
        }

        public DataFrame pushDate(StackFrame previous, Attributes attributes) {
            DataFrame resultDate = this.date == null ? new DataFrame() : this.date;
            this.date = null;
            resultDate.pushOnto(previous);
            resultDate.handleAttributes(attributes);
            return resultDate;
        }

        public XMLGregorianCalendar popDate(DataFrame date) {
            XMLGregorianCalendar resultDateValue = XMLTypeFactory.eINSTANCE.createDate(date.popValue());
            this.date = date;
            return resultDateValue;
        }

        public DataFrame pushDateTime(StackFrame previous, Attributes attributes) {
            DataFrame resultDateTime = this.dateTime == null ? new DataFrame() : this.dateTime;
            this.dateTime = null;
            resultDateTime.pushOnto(previous);
            resultDateTime.handleAttributes(attributes);
            return resultDateTime;
        }

        public XMLGregorianCalendar popDateTime(DataFrame dateTime) {
            XMLGregorianCalendar resultDateTimeValue = XMLTypeFactory.eINSTANCE.createDateTime(dateTime.popValue());
            this.dateTime = dateTime;
            return resultDateTimeValue;
        }

        public DataFrame pushDecimal(StackFrame previous, Attributes attributes) {
            DataFrame resultDecimal = this.decimal == null ? new DataFrame() : this.decimal;
            this.decimal = null;
            resultDecimal.pushOnto(previous);
            resultDecimal.handleAttributes(attributes);
            return resultDecimal;
        }

        public BigDecimal popDecimal(DataFrame decimal) {
            BigDecimal resultDecimalValue = XMLTypeFactory.eINSTANCE.createDecimal(decimal.popValue());
            this.decimal = decimal;
            return resultDecimalValue;
        }

        public DataFrame pushDouble(StackFrame previous, Attributes attributes) {
            DataFrame resultDouble = this.double_ == null ? new DataFrame() : this.double_;
            this.double_ = null;
            resultDouble.pushOnto(previous);
            resultDouble.handleAttributes(attributes);
            return resultDouble;
        }

        public double popDouble(DataFrame double_) {
            double resultDoubleValue = XMLTypeFactory.eINSTANCE.createDouble(double_.popValue());
            this.double_ = double_;
            return resultDoubleValue;
        }

        public DataFrame pushDoubleObject(StackFrame previous, Attributes attributes) {
            DataFrame resultDoubleObject = this.doubleObject == null ? new DataFrame() : this.doubleObject;
            this.doubleObject = null;
            resultDoubleObject.pushOnto(previous);
            resultDoubleObject.handleAttributes(attributes);
            return resultDoubleObject;
        }

        public Double popDoubleObject(DataFrame doubleObject) {
            Double resultDoubleObjectValue = XMLTypeFactory.eINSTANCE.createDoubleObject(doubleObject.popValue());
            this.doubleObject = doubleObject;
            return resultDoubleObjectValue;
        }

        public DataFrame pushDuration(StackFrame previous, Attributes attributes) {
            DataFrame resultDuration = this.duration == null ? new DataFrame() : this.duration;
            this.duration = null;
            resultDuration.pushOnto(previous);
            resultDuration.handleAttributes(attributes);
            return resultDuration;
        }

        public Duration popDuration(DataFrame duration) {
            Duration resultDurationValue = XMLTypeFactory.eINSTANCE.createDuration(duration.popValue());
            this.duration = duration;
            return resultDurationValue;
        }

        public DataFrame pushENTITIES(StackFrame previous, Attributes attributes) {
            DataFrame resultENTITIES = this.entities == null ? new DataFrame() : this.entities;
            this.entities = null;
            resultENTITIES.pushOnto(previous);
            resultENTITIES.handleAttributes(attributes);
            return resultENTITIES;
        }

        public List<String> popENTITIES(DataFrame entities) {
            List<String> resultENTITIESValue = XMLTypeFactory.eINSTANCE.createENTITIES(entities.popValue());
            this.entities = entities;
            return resultENTITIESValue;
        }

        public DataFrame pushENTITIESBase(StackFrame previous, Attributes attributes) {
            DataFrame resultENTITIESBase = this.entitiesBase == null ? new DataFrame() : this.entitiesBase;
            this.entitiesBase = null;
            resultENTITIESBase.pushOnto(previous);
            resultENTITIESBase.handleAttributes(attributes);
            return resultENTITIESBase;
        }

        public List<String> popENTITIESBase(DataFrame entitiesBase) {
            List<String> resultENTITIESBaseValue = XMLTypeFactory.eINSTANCE.createENTITIESBase(entitiesBase.popValue());
            this.entitiesBase = entitiesBase;
            return resultENTITIESBaseValue;
        }

        public DataFrame pushENTITY(StackFrame previous, Attributes attributes) {
            DataFrame resultENTITY = this.entity == null ? new DataFrame() : this.entity;
            this.entity = null;
            resultENTITY.pushOnto(previous);
            resultENTITY.handleAttributes(attributes);
            return resultENTITY;
        }

        public String popENTITY(DataFrame entity) {
            String resultENTITYValue = XMLTypeFactory.eINSTANCE.createENTITY(entity.popValue());
            this.entity = entity;
            return resultENTITYValue;
        }

        public DataFrame pushFloat(StackFrame previous, Attributes attributes) {
            DataFrame resultFloat = this.float_ == null ? new DataFrame() : this.float_;
            this.float_ = null;
            resultFloat.pushOnto(previous);
            resultFloat.handleAttributes(attributes);
            return resultFloat;
        }

        public float popFloat(DataFrame float_) {
            float resultFloatValue = XMLTypeFactory.eINSTANCE.createFloat(float_.popValue());
            this.float_ = float_;
            return resultFloatValue;
        }

        public DataFrame pushFloatObject(StackFrame previous, Attributes attributes) {
            DataFrame resultFloatObject = this.floatObject == null ? new DataFrame() : this.floatObject;
            this.floatObject = null;
            resultFloatObject.pushOnto(previous);
            resultFloatObject.handleAttributes(attributes);
            return resultFloatObject;
        }

        public Float popFloatObject(DataFrame floatObject) {
            Float resultFloatObjectValue = XMLTypeFactory.eINSTANCE.createFloatObject(floatObject.popValue());
            this.floatObject = floatObject;
            return resultFloatObjectValue;
        }

        public DataFrame pushGDay(StackFrame previous, Attributes attributes) {
            DataFrame resultGDay = this.gDay == null ? new DataFrame() : this.gDay;
            this.gDay = null;
            resultGDay.pushOnto(previous);
            resultGDay.handleAttributes(attributes);
            return resultGDay;
        }

        public XMLGregorianCalendar popGDay(DataFrame gDay) {
            XMLGregorianCalendar resultGDayValue = XMLTypeFactory.eINSTANCE.createGDay(gDay.popValue());
            this.gDay = gDay;
            return resultGDayValue;
        }

        public DataFrame pushGMonth(StackFrame previous, Attributes attributes) {
            DataFrame resultGMonth = this.gMonth == null ? new DataFrame() : this.gMonth;
            this.gMonth = null;
            resultGMonth.pushOnto(previous);
            resultGMonth.handleAttributes(attributes);
            return resultGMonth;
        }

        public XMLGregorianCalendar popGMonth(DataFrame gMonth) {
            XMLGregorianCalendar resultGMonthValue = XMLTypeFactory.eINSTANCE.createGMonth(gMonth.popValue());
            this.gMonth = gMonth;
            return resultGMonthValue;
        }

        public DataFrame pushGMonthDay(StackFrame previous, Attributes attributes) {
            DataFrame resultGMonthDay = this.gMonthDay == null ? new DataFrame() : this.gMonthDay;
            this.gMonthDay = null;
            resultGMonthDay.pushOnto(previous);
            resultGMonthDay.handleAttributes(attributes);
            return resultGMonthDay;
        }

        public XMLGregorianCalendar popGMonthDay(DataFrame gMonthDay) {
            XMLGregorianCalendar resultGMonthDayValue = XMLTypeFactory.eINSTANCE.createGMonthDay(gMonthDay.popValue());
            this.gMonthDay = gMonthDay;
            return resultGMonthDayValue;
        }

        public DataFrame pushGYear(StackFrame previous, Attributes attributes) {
            DataFrame resultGYear = this.gYear == null ? new DataFrame() : this.gYear;
            this.gYear = null;
            resultGYear.pushOnto(previous);
            resultGYear.handleAttributes(attributes);
            return resultGYear;
        }

        public XMLGregorianCalendar popGYear(DataFrame gYear) {
            XMLGregorianCalendar resultGYearValue = XMLTypeFactory.eINSTANCE.createGYear(gYear.popValue());
            this.gYear = gYear;
            return resultGYearValue;
        }

        public DataFrame pushGYearMonth(StackFrame previous, Attributes attributes) {
            DataFrame resultGYearMonth = this.gYearMonth == null ? new DataFrame() : this.gYearMonth;
            this.gYearMonth = null;
            resultGYearMonth.pushOnto(previous);
            resultGYearMonth.handleAttributes(attributes);
            return resultGYearMonth;
        }

        public XMLGregorianCalendar popGYearMonth(DataFrame gYearMonth) {
            XMLGregorianCalendar resultGYearMonthValue = XMLTypeFactory.eINSTANCE.createGYearMonth(gYearMonth.popValue());
            this.gYearMonth = gYearMonth;
            return resultGYearMonthValue;
        }

        public DataFrame pushHexBinary(StackFrame previous, Attributes attributes) {
            DataFrame resultHexBinary = this.hexBinary == null ? new DataFrame() : this.hexBinary;
            this.hexBinary = null;
            resultHexBinary.pushOnto(previous);
            resultHexBinary.handleAttributes(attributes);
            return resultHexBinary;
        }

        public byte[] popHexBinary(DataFrame hexBinary) {
            byte[] resultHexBinaryValue = XMLTypeFactory.eINSTANCE.createHexBinary(hexBinary.popValue());
            this.hexBinary = hexBinary;
            return resultHexBinaryValue;
        }

        public DataFrame pushID(StackFrame previous, Attributes attributes) {
            DataFrame resultID = this.id == null ? new DataFrame() : this.id;
            this.id = null;
            resultID.pushOnto(previous);
            resultID.handleAttributes(attributes);
            return resultID;
        }

        public String popID(DataFrame id) {
            String resultIDValue = XMLTypeFactory.eINSTANCE.createID(id.popValue());
            this.id = id;
            return resultIDValue;
        }

        public DataFrame pushIDREF(StackFrame previous, Attributes attributes) {
            DataFrame resultIDREF = this.idref == null ? new DataFrame() : this.idref;
            this.idref = null;
            resultIDREF.pushOnto(previous);
            resultIDREF.handleAttributes(attributes);
            return resultIDREF;
        }

        public String popIDREF(DataFrame idref) {
            String resultIDREFValue = XMLTypeFactory.eINSTANCE.createIDREF(idref.popValue());
            this.idref = idref;
            return resultIDREFValue;
        }

        public DataFrame pushIDREFS(StackFrame previous, Attributes attributes) {
            DataFrame resultIDREFS = this.idrefs == null ? new DataFrame() : this.idrefs;
            this.idrefs = null;
            resultIDREFS.pushOnto(previous);
            resultIDREFS.handleAttributes(attributes);
            return resultIDREFS;
        }

        public List<String> popIDREFS(DataFrame idrefs) {
            List<String> resultIDREFSValue = XMLTypeFactory.eINSTANCE.createIDREFS(idrefs.popValue());
            this.idrefs = idrefs;
            return resultIDREFSValue;
        }

        public DataFrame pushIDREFSBase(StackFrame previous, Attributes attributes) {
            DataFrame resultIDREFSBase = this.idrefsBase == null ? new DataFrame() : this.idrefsBase;
            this.idrefsBase = null;
            resultIDREFSBase.pushOnto(previous);
            resultIDREFSBase.handleAttributes(attributes);
            return resultIDREFSBase;
        }

        public List<String> popIDREFSBase(DataFrame idrefsBase) {
            List<String> resultIDREFSBaseValue = XMLTypeFactory.eINSTANCE.createIDREFSBase(idrefsBase.popValue());
            this.idrefsBase = idrefsBase;
            return resultIDREFSBaseValue;
        }

        public DataFrame pushInt(StackFrame previous, Attributes attributes) {
            DataFrame resultInt = this.int_ == null ? new DataFrame() : this.int_;
            this.int_ = null;
            resultInt.pushOnto(previous);
            resultInt.handleAttributes(attributes);
            return resultInt;
        }

        public int popInt(DataFrame int_) {
            int resultIntValue = XMLTypeFactory.eINSTANCE.createInt(int_.popValue());
            this.int_ = int_;
            return resultIntValue;
        }

        public DataFrame pushInteger(StackFrame previous, Attributes attributes) {
            DataFrame resultInteger = this.integer == null ? new DataFrame() : this.integer;
            this.integer = null;
            resultInteger.pushOnto(previous);
            resultInteger.handleAttributes(attributes);
            return resultInteger;
        }

        public BigInteger popInteger(DataFrame integer) {
            BigInteger resultIntegerValue = XMLTypeFactory.eINSTANCE.createInteger(integer.popValue());
            this.integer = integer;
            return resultIntegerValue;
        }

        public DataFrame pushIntObject(StackFrame previous, Attributes attributes) {
            DataFrame resultIntObject = this.intObject == null ? new DataFrame() : this.intObject;
            this.intObject = null;
            resultIntObject.pushOnto(previous);
            resultIntObject.handleAttributes(attributes);
            return resultIntObject;
        }

        public Integer popIntObject(DataFrame intObject) {
            Integer resultIntObjectValue = XMLTypeFactory.eINSTANCE.createIntObject(intObject.popValue());
            this.intObject = intObject;
            return resultIntObjectValue;
        }

        public DataFrame pushLanguage(StackFrame previous, Attributes attributes) {
            DataFrame resultLanguage = this.language == null ? new DataFrame() : this.language;
            this.language = null;
            resultLanguage.pushOnto(previous);
            resultLanguage.handleAttributes(attributes);
            return resultLanguage;
        }

        public String popLanguage(DataFrame language) {
            String resultLanguageValue = XMLTypeFactory.eINSTANCE.createLanguage(language.popValue());
            this.language = language;
            return resultLanguageValue;
        }

        public DataFrame pushLong(StackFrame previous, Attributes attributes) {
            DataFrame resultLong = this.long_ == null ? new DataFrame() : this.long_;
            this.long_ = null;
            resultLong.pushOnto(previous);
            resultLong.handleAttributes(attributes);
            return resultLong;
        }

        public long popLong(DataFrame long_) {
            long resultLongValue = XMLTypeFactory.eINSTANCE.createLong(long_.popValue());
            this.long_ = long_;
            return resultLongValue;
        }

        public DataFrame pushLongObject(StackFrame previous, Attributes attributes) {
            DataFrame resultLongObject = this.longObject == null ? new DataFrame() : this.longObject;
            this.longObject = null;
            resultLongObject.pushOnto(previous);
            resultLongObject.handleAttributes(attributes);
            return resultLongObject;
        }

        public Long popLongObject(DataFrame longObject) {
            Long resultLongObjectValue = XMLTypeFactory.eINSTANCE.createLongObject(longObject.popValue());
            this.longObject = longObject;
            return resultLongObjectValue;
        }

        public DataFrame pushName(StackFrame previous, Attributes attributes) {
            DataFrame resultName = this.name == null ? new DataFrame() : this.name;
            this.name = null;
            resultName.pushOnto(previous);
            resultName.handleAttributes(attributes);
            return resultName;
        }

        public String popName(DataFrame name) {
            String resultNameValue = XMLTypeFactory.eINSTANCE.createName(name.popValue());
            this.name = name;
            return resultNameValue;
        }

        public DataFrame pushNCName(StackFrame previous, Attributes attributes) {
            DataFrame resultNCName = this.ncName == null ? new DataFrame() : this.ncName;
            this.ncName = null;
            resultNCName.pushOnto(previous);
            resultNCName.handleAttributes(attributes);
            return resultNCName;
        }

        public String popNCName(DataFrame ncName) {
            String resultNCNameValue = XMLTypeFactory.eINSTANCE.createNCName(ncName.popValue());
            this.ncName = ncName;
            return resultNCNameValue;
        }

        public DataFrame pushNegativeInteger(StackFrame previous, Attributes attributes) {
            DataFrame resultNegativeInteger = this.negativeInteger == null ? new DataFrame() : this.negativeInteger;
            this.negativeInteger = null;
            resultNegativeInteger.pushOnto(previous);
            resultNegativeInteger.handleAttributes(attributes);
            return resultNegativeInteger;
        }

        public BigInteger popNegativeInteger(DataFrame negativeInteger) {
            BigInteger resultNegativeIntegerValue = XMLTypeFactory.eINSTANCE.createNegativeInteger(negativeInteger.popValue());
            this.negativeInteger = negativeInteger;
            return resultNegativeIntegerValue;
        }

        public DataFrame pushNMTOKEN(StackFrame previous, Attributes attributes) {
            DataFrame resultNMTOKEN = this.nmtoken == null ? new DataFrame() : this.nmtoken;
            this.nmtoken = null;
            resultNMTOKEN.pushOnto(previous);
            resultNMTOKEN.handleAttributes(attributes);
            return resultNMTOKEN;
        }

        public String popNMTOKEN(DataFrame nmtoken) {
            String resultNMTOKENValue = XMLTypeFactory.eINSTANCE.createNMTOKEN(nmtoken.popValue());
            this.nmtoken = nmtoken;
            return resultNMTOKENValue;
        }

        public DataFrame pushNMTOKENS(StackFrame previous, Attributes attributes) {
            DataFrame resultNMTOKENS = this.nmtokens == null ? new DataFrame() : this.nmtokens;
            this.nmtokens = null;
            resultNMTOKENS.pushOnto(previous);
            resultNMTOKENS.handleAttributes(attributes);
            return resultNMTOKENS;
        }

        public List<String> popNMTOKENS(DataFrame nmtokens) {
            List<String> resultNMTOKENSValue = XMLTypeFactory.eINSTANCE.createNMTOKENS(nmtokens.popValue());
            this.nmtokens = nmtokens;
            return resultNMTOKENSValue;
        }

        public DataFrame pushNMTOKENSBase(StackFrame previous, Attributes attributes) {
            DataFrame resultNMTOKENSBase = this.nmtokensBase == null ? new DataFrame() : this.nmtokensBase;
            this.nmtokensBase = null;
            resultNMTOKENSBase.pushOnto(previous);
            resultNMTOKENSBase.handleAttributes(attributes);
            return resultNMTOKENSBase;
        }

        public List<String> popNMTOKENSBase(DataFrame nmtokensBase) {
            List<String> resultNMTOKENSBaseValue = XMLTypeFactory.eINSTANCE.createNMTOKENSBase(nmtokensBase.popValue());
            this.nmtokensBase = nmtokensBase;
            return resultNMTOKENSBaseValue;
        }

        public DataFrame pushNonNegativeInteger(StackFrame previous, Attributes attributes) {
            DataFrame resultNonNegativeInteger = this.nonNegativeInteger == null ? new DataFrame() : this.nonNegativeInteger;
            this.nonNegativeInteger = null;
            resultNonNegativeInteger.pushOnto(previous);
            resultNonNegativeInteger.handleAttributes(attributes);
            return resultNonNegativeInteger;
        }

        public BigInteger popNonNegativeInteger(DataFrame nonNegativeInteger) {
            BigInteger resultNonNegativeIntegerValue = XMLTypeFactory.eINSTANCE.createNonNegativeInteger(nonNegativeInteger.popValue());
            this.nonNegativeInteger = nonNegativeInteger;
            return resultNonNegativeIntegerValue;
        }

        public DataFrame pushNonPositiveInteger(StackFrame previous, Attributes attributes) {
            DataFrame resultNonPositiveInteger = this.nonPositiveInteger == null ? new DataFrame() : this.nonPositiveInteger;
            this.nonPositiveInteger = null;
            resultNonPositiveInteger.pushOnto(previous);
            resultNonPositiveInteger.handleAttributes(attributes);
            return resultNonPositiveInteger;
        }

        public BigInteger popNonPositiveInteger(DataFrame nonPositiveInteger) {
            BigInteger resultNonPositiveIntegerValue = XMLTypeFactory.eINSTANCE.createNonPositiveInteger(nonPositiveInteger.popValue());
            this.nonPositiveInteger = nonPositiveInteger;
            return resultNonPositiveIntegerValue;
        }

        public DataFrame pushNormalizedString(StackFrame previous, Attributes attributes) {
            DataFrame resultNormalizedString = this.normalizedString == null ? new DataFrame() : this.normalizedString;
            this.normalizedString = null;
            resultNormalizedString.pushOnto(previous);
            resultNormalizedString.handleAttributes(attributes);
            return resultNormalizedString;
        }

        public String popNormalizedString(DataFrame normalizedString) {
            String resultNormalizedStringValue = XMLTypeFactory.eINSTANCE.createNormalizedString(normalizedString.popValue());
            this.normalizedString = normalizedString;
            return resultNormalizedStringValue;
        }

        public DataFrame pushNOTATION(StackFrame previous, Attributes attributes) {
            DataFrame resultNOTATION = this.notation == null ? new DataFrame() : this.notation;
            this.notation = null;
            resultNOTATION.pushOnto(previous);
            resultNOTATION.handleAttributes(attributes);
            return resultNOTATION;
        }

        public QName popNOTATION(DataFrame notation) {
            QName resultNOTATIONValue = XMLTypeFactory.eINSTANCE.createNOTATION(notation.popValue());
            this.notation = notation;
            return resultNOTATIONValue;
        }

        public DataFrame pushPositiveInteger(StackFrame previous, Attributes attributes) {
            DataFrame resultPositiveInteger = this.positiveInteger == null ? new DataFrame() : this.positiveInteger;
            this.positiveInteger = null;
            resultPositiveInteger.pushOnto(previous);
            resultPositiveInteger.handleAttributes(attributes);
            return resultPositiveInteger;
        }

        public BigInteger popPositiveInteger(DataFrame positiveInteger) {
            BigInteger resultPositiveIntegerValue = XMLTypeFactory.eINSTANCE.createPositiveInteger(positiveInteger.popValue());
            this.positiveInteger = positiveInteger;
            return resultPositiveIntegerValue;
        }

        public DataFrame pushQName(StackFrame previous, Attributes attributes) {
            DataFrame resultQName = this.qName == null ? new DataFrame() : this.qName;
            this.qName = null;
            resultQName.pushOnto(previous);
            resultQName.handleAttributes(attributes);
            return resultQName;
        }

        public QName popQName(DataFrame qName) {
            QName resultQNameValue = XMLTypeFactory.eINSTANCE.createQName(qName.popValue());
            this.qName = qName;
            return resultQNameValue;
        }

        public DataFrame pushShort(StackFrame previous, Attributes attributes) {
            DataFrame resultShort = this.short_ == null ? new DataFrame() : this.short_;
            this.short_ = null;
            resultShort.pushOnto(previous);
            resultShort.handleAttributes(attributes);
            return resultShort;
        }

        public short popShort(DataFrame short_) {
            short resultShortValue = XMLTypeFactory.eINSTANCE.createShort(short_.popValue());
            this.short_ = short_;
            return resultShortValue;
        }

        public DataFrame pushShortObject(StackFrame previous, Attributes attributes) {
            DataFrame resultShortObject = this.shortObject == null ? new DataFrame() : this.shortObject;
            this.shortObject = null;
            resultShortObject.pushOnto(previous);
            resultShortObject.handleAttributes(attributes);
            return resultShortObject;
        }

        public Short popShortObject(DataFrame shortObject) {
            Short resultShortObjectValue = XMLTypeFactory.eINSTANCE.createShortObject(shortObject.popValue());
            this.shortObject = shortObject;
            return resultShortObjectValue;
        }

        public DataFrame pushString(StackFrame previous, Attributes attributes) {
            DataFrame resultString = this.string == null ? new DataFrame() : this.string;
            this.string = null;
            resultString.pushOnto(previous);
            resultString.handleAttributes(attributes);
            return resultString;
        }

        public String popString(DataFrame string) {
            String resultStringValue = string.popValue();
            this.string = string;
            return resultStringValue;
        }

        public DataFrame pushTime(StackFrame previous, Attributes attributes) {
            DataFrame resultTime = this.time == null ? new DataFrame() : this.time;
            this.time = null;
            resultTime.pushOnto(previous);
            resultTime.handleAttributes(attributes);
            return resultTime;
        }

        public XMLGregorianCalendar popTime(DataFrame time) {
            XMLGregorianCalendar resultTimeValue = XMLTypeFactory.eINSTANCE.createTime(time.popValue());
            this.time = time;
            return resultTimeValue;
        }

        public DataFrame pushToken(StackFrame previous, Attributes attributes) {
            DataFrame resultToken = this.token == null ? new DataFrame() : this.token;
            this.token = null;
            resultToken.pushOnto(previous);
            resultToken.handleAttributes(attributes);
            return resultToken;
        }

        public String popToken(DataFrame token) {
            String resultTokenValue = XMLTypeFactory.eINSTANCE.createToken(token.popValue());
            this.token = token;
            return resultTokenValue;
        }

        public DataFrame pushUnsignedByte(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedByte = this.unsignedByte == null ? new DataFrame() : this.unsignedByte;
            this.unsignedByte = null;
            resultUnsignedByte.pushOnto(previous);
            resultUnsignedByte.handleAttributes(attributes);
            return resultUnsignedByte;
        }

        public short popUnsignedByte(DataFrame unsignedByte) {
            short resultUnsignedByteValue = XMLTypeFactory.eINSTANCE.createUnsignedByte(unsignedByte.popValue());
            this.unsignedByte = unsignedByte;
            return resultUnsignedByteValue;
        }

        public DataFrame pushUnsignedByteObject(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedByteObject = this.unsignedByteObject == null ? new DataFrame() : this.unsignedByteObject;
            this.unsignedByteObject = null;
            resultUnsignedByteObject.pushOnto(previous);
            resultUnsignedByteObject.handleAttributes(attributes);
            return resultUnsignedByteObject;
        }

        public Short popUnsignedByteObject(DataFrame unsignedByteObject) {
            Short resultUnsignedByteObjectValue = XMLTypeFactory.eINSTANCE.createUnsignedByteObject(unsignedByteObject.popValue());
            this.unsignedByteObject = unsignedByteObject;
            return resultUnsignedByteObjectValue;
        }

        public DataFrame pushUnsignedInt(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedInt = this.unsignedInt == null ? new DataFrame() : this.unsignedInt;
            this.unsignedInt = null;
            resultUnsignedInt.pushOnto(previous);
            resultUnsignedInt.handleAttributes(attributes);
            return resultUnsignedInt;
        }

        public long popUnsignedInt(DataFrame unsignedInt) {
            long resultUnsignedIntValue = XMLTypeFactory.eINSTANCE.createUnsignedInt(unsignedInt.popValue());
            this.unsignedInt = unsignedInt;
            return resultUnsignedIntValue;
        }

        public DataFrame pushUnsignedIntObject(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedIntObject = this.unsignedIntObject == null ? new DataFrame() : this.unsignedIntObject;
            this.unsignedIntObject = null;
            resultUnsignedIntObject.pushOnto(previous);
            resultUnsignedIntObject.handleAttributes(attributes);
            return resultUnsignedIntObject;
        }

        public Long popUnsignedIntObject(DataFrame unsignedIntObject) {
            Long resultUnsignedIntObjectValue = XMLTypeFactory.eINSTANCE.createUnsignedIntObject(unsignedIntObject.popValue());
            this.unsignedIntObject = unsignedIntObject;
            return resultUnsignedIntObjectValue;
        }

        public DataFrame pushUnsignedLong(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedLong = this.unsignedLong == null ? new DataFrame() : this.unsignedLong;
            this.unsignedLong = null;
            resultUnsignedLong.pushOnto(previous);
            resultUnsignedLong.handleAttributes(attributes);
            return resultUnsignedLong;
        }

        public BigInteger popUnsignedLong(DataFrame unsignedLong) {
            BigInteger resultUnsignedLongValue = XMLTypeFactory.eINSTANCE.createUnsignedLong(unsignedLong.popValue());
            this.unsignedLong = unsignedLong;
            return resultUnsignedLongValue;
        }

        public DataFrame pushUnsignedShort(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedShort = this.unsignedShort == null ? new DataFrame() : this.unsignedShort;
            this.unsignedShort = null;
            resultUnsignedShort.pushOnto(previous);
            resultUnsignedShort.handleAttributes(attributes);
            return resultUnsignedShort;
        }

        public int popUnsignedShort(DataFrame unsignedShort) {
            int resultUnsignedShortValue = XMLTypeFactory.eINSTANCE.createUnsignedShort(unsignedShort.popValue());
            this.unsignedShort = unsignedShort;
            return resultUnsignedShortValue;
        }

        public DataFrame pushUnsignedShortObject(StackFrame previous, Attributes attributes) {
            DataFrame resultUnsignedShortObject = this.unsignedShortObject == null ? new DataFrame() : this.unsignedShortObject;
            this.unsignedShortObject = null;
            resultUnsignedShortObject.pushOnto(previous);
            resultUnsignedShortObject.handleAttributes(attributes);
            return resultUnsignedShortObject;
        }

        public Integer popUnsignedShortObject(DataFrame unsignedShortObject) {
            Integer resultUnsignedShortObjectValue = XMLTypeFactory.eINSTANCE.createUnsignedShortObject(unsignedShortObject.popValue());
            this.unsignedShortObject = unsignedShortObject;
            return resultUnsignedShortObjectValue;
        }

        public static class AnyTypeStackFrame
        extends StackFrame {
            protected AnyType theAnyType;

            public void handleAttributes(Attributes attributes) {
            }

            public StackFrame startElement(String namespace, String localName, String qName, Attributes attributes) throws SAXException {
                return super.startElement(namespace, localName, qName, attributes);
            }

            public void endElement(StackFrame child) throws SAXException {
                super.endElement(child);
            }

            public void create() {
                this.theAnyType = XMLTypeFactory.eINSTANCE.createAnyType();
            }

            protected AnyType popAnyType() {
                this.pop();
                AnyType resultAnyTypeValue = this.theAnyType;
                this.theAnyType = null;
                return resultAnyTypeValue;
            }
        }

        public static class ProcessingInstructionStackFrame
        extends StackFrame {
            protected ProcessingInstruction theProcessingInstruction;
            protected DataFrame data;
            protected DataFrame target;

            public void handleAttributes(Attributes attributes) {
                String theValue = attributes.getValue("", "data");
                if (theValue != null) {
                    this.theProcessingInstruction.setData(XMLTypeFactory.eINSTANCE.createString(theValue));
                }
                if ((theValue = attributes.getValue("", "target")) != null) {
                    this.theProcessingInstruction.setTarget(XMLTypeFactory.eINSTANCE.createString(theValue));
                }
            }

            public StackFrame startElement(String namespace, String localName, String qName, Attributes attributes) throws SAXException {
                return super.startElement(namespace, localName, qName, attributes);
            }

            public void endElement(StackFrame child) throws SAXException {
                super.endElement(child);
            }

            public void create() {
                this.theProcessingInstruction = XMLTypeFactory.eINSTANCE.createProcessingInstruction();
            }

            protected ProcessingInstruction popProcessingInstruction() {
                this.pop();
                ProcessingInstruction resultProcessingInstructionValue = this.theProcessingInstruction;
                this.theProcessingInstruction = null;
                return resultProcessingInstructionValue;
            }
        }

        public static class SimpleAnyTypeStackFrame
        extends StackFrame {
            protected SimpleAnyType theSimpleAnyType;

            public void handleAttributes(Attributes attributes) {
            }

            public StackFrame startElement(String namespace, String localName, String qName, Attributes attributes) throws SAXException {
                return super.startElement(namespace, localName, qName, attributes);
            }

            public void endElement(StackFrame child) throws SAXException {
                super.endElement(child);
            }

            public void create() {
                this.theSimpleAnyType = XMLTypeFactory.eINSTANCE.createSimpleAnyType();
            }

            protected SimpleAnyType popSimpleAnyType() {
                this.pop();
                SimpleAnyType resultSimpleAnyTypeValue = this.theSimpleAnyType;
                this.theSimpleAnyType = null;
                return resultSimpleAnyTypeValue;
            }
        }

        public static class XMLTypeDocumentRootStackFrame
        extends StackFrame {
            protected XMLTypeDocumentRoot theXMLTypeDocumentRoot;
            protected DataFrame cDATA;
            protected DataFrame comment;
            protected ProcessingInstructionStackFrame processingInstruction;
            protected DataFrame text;

            public void handleAttributes(Attributes attributes) {
            }

            public StackFrame startElement(String namespace, String localName, String qName, Attributes attributes) throws SAXException {
                throw new UnsupportedOperationException();
            }

            public void endElement(StackFrame child) throws SAXException {
                throw new UnsupportedOperationException();
            }

            public void create() {
                this.theXMLTypeDocumentRoot = XMLTypeFactory.eINSTANCE.createXMLTypeDocumentRoot();
            }

            protected XMLTypeDocumentRoot popXMLTypeDocumentRoot() {
                this.pop();
                XMLTypeDocumentRoot resultXMLTypeDocumentRootValue = this.theXMLTypeDocumentRoot;
                this.theXMLTypeDocumentRoot = null;
                return resultXMLTypeDocumentRootValue;
            }
        }
    }

    public static class Handler
    extends DefaultHandler {
        protected StackFrame stackFrame = null;

        public Handler(StackFrame stackFrame) {
            this.stackFrame = stackFrame;
        }

        public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
            this.stackFrame = this.stackFrame.startElement(uri, localName, qName, attributes);
        }

        public void endElement(String uri, String localName, String qName) throws SAXException {
            this.stackFrame = this.stackFrame.endElement();
        }

        public void characters(char[] text, int start, int length) throws SAXException {
            this.stackFrame.characters(text, start, length);
        }

        public void error(SAXParseException exception) throws SAXException {
        }

        public void fatalError(SAXParseException exception) throws SAXException {
        }
    }

    public static abstract class StackFrame {
        private StackFrame previous;

        public final void pushOnto(StackFrame previous) {
            this.previous = previous;
            this.create();
        }

        public final void pop() {
            this.previous = null;
        }

        public void handleAttributes(Attributes attributes) {
        }

        public StackFrame startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
            throw new SAXException("Unexpected start element");
        }

        public void endElement(StackFrame child) throws SAXException {
            throw new SAXException("Unexpected end element");
        }

        public final StackFrame endElement() throws SAXException {
            StackFrame result = this.previous;
            this.previous.endElement(this);
            return result;
        }

        public void characters(char[] text, int start, int length) throws SAXException {
        }

        public void create() {
        }
    }
}

