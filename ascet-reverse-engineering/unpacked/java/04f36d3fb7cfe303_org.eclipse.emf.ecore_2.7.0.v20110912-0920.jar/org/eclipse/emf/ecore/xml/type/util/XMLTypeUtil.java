/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.util;

import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.xml.type.internal.DataValue;
import org.eclipse.emf.ecore.xml.type.internal.QName;
import org.eclipse.emf.ecore.xml.type.internal.RegEx;

public final class XMLTypeUtil {
    public static final int EQUALS = 0;
    public static final int LESS_THAN = -1;
    public static final int GREATER_THAN = 1;
    public static final int INDETERMINATE = 2;
    private static final CharArrayThreadLocal VALUE = new CharArrayThreadLocal();

    public static int compareCalendar(Object calendar1, Object calendar2) {
        switch (((XMLGregorianCalendar)calendar1).compare((XMLGregorianCalendar)calendar2)) {
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

    public static int compareDuration(Object duration1, Object duration2) {
        switch (((Duration)duration1).compare((Duration)duration2)) {
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

    public static boolean isSpace(char value) {
        return DataValue.XMLChar.isSpace(value);
    }

    public static String normalize(String value, boolean collapse) {
        if (value == null) {
            return null;
        }
        int length = value.length();
        if (length == 0) {
            return "";
        }
        char[] valueArray = VALUE.get(length);
        value.getChars(0, length, valueArray, 0);
        StringBuffer buffer = null;
        boolean skipSpace = collapse;
        int i = 0;
        int offset = 0;
        while (i < length) {
            char c = valueArray[i];
            if (XMLTypeUtil.isSpace(c)) {
                if (skipSpace) {
                    if (buffer == null) {
                        buffer = new StringBuffer(value);
                    }
                    buffer.deleteCharAt(i - offset++);
                } else {
                    skipSpace = collapse;
                    if (c != ' ') {
                        if (buffer == null) {
                            buffer = new StringBuffer(value);
                        }
                        buffer.setCharAt(i - offset, ' ');
                    }
                }
            } else {
                skipSpace = false;
            }
            ++i;
        }
        if (skipSpace) {
            if (buffer == null) {
                return value.substring(0, length - 1);
            }
            length = buffer.length();
            if (length > 0) {
                return buffer.substring(0, length - 1);
            }
            return "";
        }
        if (buffer == null) {
            return value;
        }
        return buffer.toString();
    }

    public static EValidator.PatternMatcher createPatternMatcher(String pattern) {
        return new PatternMatcherImpl(pattern);
    }

    public static Object createQName(String namespaceUri, String localPart, String prefix) {
        return new QName(namespaceUri, localPart, prefix);
    }

    @Deprecated
    public static void setQNameValues(Object qName, String namespaceUri, String localPart, String prefix) {
        QName qn;
        if (!(qName instanceof QName)) {
            throw new UnsupportedOperationException("QNames are immutable, so this can't be supported");
        }
        if (namespaceUri == null) {
            namespaceUri = "";
        }
        if (!(qn = (QName)qName).getLocalPart().equals(localPart) || qn.getNamespaceURI().equals(namespaceUri)) {
            throw new UnsupportedOperationException("QNames are immutable, so this can't be supported");
        }
        qn.setPrefix(prefix);
    }

    public static javax.xml.namespace.QName setPrefix(javax.xml.namespace.QName qName, String prefix) {
        if (qName instanceof QName) {
            QName result = (QName)qName;
            result.setPrefix(prefix);
            return result;
        }
        return new QName(qName.getNamespaceURI(), qName.getLocalPart(), prefix);
    }

    public static String getQNameNamespaceURI(Object qName) {
        return ((javax.xml.namespace.QName)qName).getNamespaceURI();
    }

    public static String getQNameLocalPart(Object qName) {
        return ((javax.xml.namespace.QName)qName).getLocalPart();
    }

    public static String getQNamePrefix(Object qName) {
        return ((javax.xml.namespace.QName)qName).getPrefix();
    }

    public static boolean isNameStart(int codePoint) {
        return DataValue.XMLChar.isNameStart(codePoint);
    }

    public static boolean isNamePart(int codePoint) {
        return DataValue.XMLChar.isName(codePoint);
    }

    public static boolean isNCNameStart(int codePoint) {
        return DataValue.XMLChar.isNCNameStart(codePoint);
    }

    public static boolean isNCNamePart(int codePoint) {
        return DataValue.XMLChar.isNCName(codePoint);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class CharArrayThreadLocal
    extends ThreadLocal<char[]> {
        private static final int MAX_CACHE_CAPACITY;
        private long cachedThread = -1L;
        private char[] cachedResult;

        static {
            int result = 10000;
            try {
                String property = System.getProperty("org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil.CharArrayThreadLocal.MAX_CACHE_CAPACITY");
                if (property != null) {
                    result = Integer.valueOf(property);
                }
            }
            catch (Throwable throwable) {
                // empty catch block
            }
            MAX_CACHE_CAPACITY = result;
        }

        private CharArrayThreadLocal() {
        }

        public final char[] get(int capacity) {
            if (capacity > MAX_CACHE_CAPACITY) {
                return new char[capacity];
            }
            long currentThread = Thread.currentThread().getId();
            char[] result = this.cachedResult;
            if (this.cachedThread != currentThread) {
                this.cachedThread = currentThread;
                result = (char[])this.get();
            }
            if (result.length < capacity) {
                result = new char[capacity];
                this.set(result);
            }
            this.cachedResult = result;
            return result;
        }

        @Override
        protected char[] initialValue() {
            return new char[20];
        }
    }

    private static class PatternMatcherImpl
    implements EValidator.PatternMatcher {
        protected RegEx.RegularExpression regularExpression;

        public PatternMatcherImpl(String pattern) {
            this.regularExpression = new RegEx.RegularExpression(pattern, "X");
        }

        public boolean matches(String value) {
            return this.regularExpression.matches(value);
        }

        public String toString() {
            return this.regularExpression.getPattern();
        }
    }
}

