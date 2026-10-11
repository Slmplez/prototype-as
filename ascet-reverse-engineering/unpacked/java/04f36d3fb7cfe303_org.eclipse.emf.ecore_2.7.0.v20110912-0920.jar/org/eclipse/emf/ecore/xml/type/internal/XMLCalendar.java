/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.xml.type.internal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.xml.type.InvalidDatatypeValueException;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

public final class XMLCalendar
extends XMLGregorianCalendar
implements Serializable {
    private static final long serialVersionUID = 1L;
    public static final short DATETIME = 0;
    public static final short TIME = 1;
    public static final short DATE = 2;
    public static final short GYEARMONTH = 3;
    public static final short GYEAR = 4;
    public static final short GMONTHDAY = 5;
    public static final short GDAY = 6;
    public static final short GMONTH = 7;
    protected static final String[] XML_SCHEMA_TYPES = new String[]{"dateTime", "time", "date", "gYearMonth", "gYear", "gMonthDay", "gDay", "gMonth"};
    public static final int EQUALS = 0;
    public static final int LESS_THAN = -1;
    public static final int GREATER_THAN = 1;
    public static final int INDETERMINATE = 2;
    short dataType;
    private XMLGregorianCalendar xmlGregorianCalendar;
    private Date date;
    static final DatatypeFactory datatypeFactory;
    protected static final DateFormat[] EDATE_FORMATS;
    private static final boolean FIX_GMONTH_PARSE;
    private static final boolean FIX_GMONTH_PRINT;

    static {
        try {
            datatypeFactory = DatatypeFactory.newInstance();
        }
        catch (DatatypeConfigurationException exception) {
            throw new RuntimeException(exception);
        }
        EDATE_FORMATS = new DateFormat[]{new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'S'Z'"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'S"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), new SafeSimpleDateFormat("yyyy-MM-dd'Z'"), new SafeSimpleDateFormat("yyyy-MM-dd")};
        EDATE_FORMATS[0].setTimeZone(TimeZone.getTimeZone("GMT"));
        EDATE_FORMATS[1].setTimeZone(TimeZone.getTimeZone("GMT"));
        XMLGregorianCalendar test = null;
        try {
            test = datatypeFactory.newXMLGregorianCalendar("--12");
        }
        catch (Exception exception) {
            // empty catch block
        }
        FIX_GMONTH_PARSE = test == null;
        FIX_GMONTH_PRINT = test == null || test.toString().length() > 4;
    }

    private XMLCalendar(XMLGregorianCalendar xmlGregorianCalendar, Date date, short dataType) {
        this.xmlGregorianCalendar = xmlGregorianCalendar;
        this.date = date;
        this.dataType = dataType;
    }

    public XMLCalendar(String value, short datatype) {
        value = XMLTypeUtil.normalize(value, true);
        if (value.length() == 0) {
            throw new InvalidDatatypeValueException("Incomplete value");
        }
        if (datatype < 0 || datatype > 7) {
            throw new IllegalArgumentException("Illegal datatype value " + datatype);
        }
        if (datatype == 7 && FIX_GMONTH_PARSE && (value.length() < 6 || value.charAt(4) != '-' || value.charAt(5) != '-')) {
            StringBuilder v = new StringBuilder(value);
            v.insert(4, "--");
            value = v.toString();
        }
        this.date = null;
        this.dataType = datatype;
        this.xmlGregorianCalendar = datatypeFactory.newXMLGregorianCalendar(value);
    }

    public XMLCalendar(Date date, short dataType) {
        this.xmlGregorianCalendar = datatypeFactory.newXMLGregorianCalendar(EDATE_FORMATS[0].format(date));
        this.dataType = dataType;
        this.date = date;
    }

    public static int compare(XMLCalendar value1, XMLCalendar value2) {
        switch (value1.xmlGregorianCalendar.compare(value2.xmlGregorianCalendar)) {
            case 0: {
                return 0;
            }
            case -1: {
                return -1;
            }
            case 1: {
                return 1;
            }
        }
        return 2;
    }

    public boolean equals(Object object) {
        return object instanceof XMLCalendar ? this.xmlGregorianCalendar.equals(((XMLCalendar)object).xmlGregorianCalendar) : object instanceof XMLGregorianCalendar && this.xmlGregorianCalendar.equals(object);
    }

    public int hashCode() {
        return this.xmlGregorianCalendar.hashCode();
    }

    public String toString() {
        return this.toXMLFormat();
    }

    public Date getDate() {
        block13: {
            if (this.date == null) {
                try {
                    if (this.dataType == 0) {
                        String xmlFormat = this.toXMLFormat();
                        try {
                            this.date = EDATE_FORMATS[0].parse(xmlFormat);
                        }
                        catch (Exception e) {
                            try {
                                this.date = EDATE_FORMATS[1].parse(xmlFormat);
                                break block13;
                            }
                            catch (Exception e2) {
                                try {
                                    this.date = EDATE_FORMATS[2].parse(xmlFormat);
                                    break block13;
                                }
                                catch (Exception e3) {
                                    this.date = EDATE_FORMATS[3].parse(xmlFormat);
                                }
                            }
                        }
                        break block13;
                    }
                    if (this.dataType == 2) {
                        String xmlFormat = this.toXMLFormat();
                        try {
                            this.date = EDATE_FORMATS[4].parse(xmlFormat);
                        }
                        catch (Exception e) {
                            this.date = EDATE_FORMATS[5].parse(xmlFormat);
                        }
                    }
                }
                catch (Exception e) {
                    throw new WrappedException(e);
                }
            }
        }
        return this.date;
    }

    public void add(Duration duration) {
        this.xmlGregorianCalendar.add(duration);
        this.date = null;
    }

    public void clear() {
        this.xmlGregorianCalendar.clear();
        this.date = null;
    }

    public Object clone() {
        return new XMLCalendar(this.xmlGregorianCalendar, this.date, this.dataType);
    }

    public int compare(XMLGregorianCalendar xmlGregorianCalendar) {
        return this.xmlGregorianCalendar.compare(xmlGregorianCalendar instanceof XMLCalendar ? ((XMLCalendar)xmlGregorianCalendar).xmlGregorianCalendar : xmlGregorianCalendar);
    }

    public int getDay() {
        return this.xmlGregorianCalendar.getDay();
    }

    public BigInteger getEon() {
        return this.xmlGregorianCalendar.getEon();
    }

    public BigInteger getEonAndYear() {
        return this.xmlGregorianCalendar.getEonAndYear();
    }

    public BigDecimal getFractionalSecond() {
        return this.xmlGregorianCalendar.getFractionalSecond();
    }

    public int getHour() {
        return this.xmlGregorianCalendar.getHour();
    }

    public int getMinute() {
        return this.xmlGregorianCalendar.getMinute();
    }

    public int getMonth() {
        return this.xmlGregorianCalendar.getMonth();
    }

    public int getSecond() {
        return this.xmlGregorianCalendar.getSecond();
    }

    public TimeZone getTimeZone(int defaultTimeZone) {
        return this.xmlGregorianCalendar.getTimeZone(defaultTimeZone);
    }

    public int getTimezone() {
        return this.xmlGregorianCalendar.getTimezone();
    }

    public QName getXMLSchemaType() {
        return this.xmlGregorianCalendar.getXMLSchemaType();
    }

    public int getYear() {
        return this.xmlGregorianCalendar.getYear();
    }

    public boolean isValid() {
        return this.xmlGregorianCalendar.isValid();
    }

    public XMLGregorianCalendar normalize() {
        return this.xmlGregorianCalendar.normalize();
    }

    public void reset() {
        this.date = null;
        this.xmlGregorianCalendar.reset();
    }

    public void setDay(int day) {
        this.xmlGregorianCalendar.setDay(day);
    }

    public void setFractionalSecond(BigDecimal fractionalSecond) {
        this.xmlGregorianCalendar.setFractionalSecond(fractionalSecond);
    }

    public void setHour(int hour) {
        this.xmlGregorianCalendar.setHour(hour);
    }

    public void setMillisecond(int millisecond) {
        this.xmlGregorianCalendar.setMillisecond(millisecond);
    }

    public void setMinute(int minute) {
        this.xmlGregorianCalendar.setMinute(minute);
    }

    public void setMonth(int month) {
        this.xmlGregorianCalendar.setMonth(month);
    }

    public void setSecond(int second) {
        this.xmlGregorianCalendar.setSecond(second);
    }

    public void setTimezone(int offset) {
        this.xmlGregorianCalendar.setTimezone(offset);
    }

    public void setYear(BigInteger year) {
        this.xmlGregorianCalendar.setYear(year);
    }

    public void setYear(int year) {
        this.xmlGregorianCalendar.setYear(year);
    }

    public GregorianCalendar toGregorianCalendar() {
        return this.xmlGregorianCalendar.toGregorianCalendar();
    }

    public GregorianCalendar toGregorianCalendar(TimeZone timeZone, Locale locale, XMLGregorianCalendar defaults) {
        return this.xmlGregorianCalendar.toGregorianCalendar(timeZone, locale, defaults);
    }

    public String toXMLFormat() {
        if (this.dataType == 7 && FIX_GMONTH_PRINT) {
            String value = this.xmlGregorianCalendar.toXMLFormat();
            if (value.length() > 5 && value.charAt(4) == '-' && value.charAt(5) == '-') {
                StringBuilder v = new StringBuilder(value);
                v.delete(4, 6);
                value = v.toString();
            }
            return value;
        }
        return this.xmlGregorianCalendar.toXMLFormat();
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.writeShort(this.dataType);
        out.writeUTF(this.toString());
        out.writeObject(this.date);
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        this.dataType = in.readShort();
        this.xmlGregorianCalendar = datatypeFactory.newXMLGregorianCalendar(in.readUTF());
        this.date = (Date)in.readObject();
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
    }
}

