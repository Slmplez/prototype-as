/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleReference;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkUtil {
    static /* synthetic */ Class class$0;

    private FrameworkUtil() {
    }

    public static Filter createFilter(String filter) throws InvalidSyntaxException {
        return FilterImpl.newInstance(filter);
    }

    public static boolean matchDistinguishedNameChain(String matchPattern, List<String> dnChain) {
        return DNChainMatching.match(matchPattern, dnChain);
    }

    public static Bundle getBundle(final Class<?> classFromBundle) {
        Object cl = AccessController.doPrivileged(new PrivilegedAction<Object>(){

            @Override
            public Object run() {
                return classFromBundle.getClassLoader();
            }
        });
        if (cl instanceof BundleReference) {
            return ((BundleReference)cl).getBundle();
        }
        return null;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class CaseInsensitiveMap
    extends AbstractMap<String, Object>
    implements Map<String, Object> {
        private final Dictionary<String, ?> dictionary;
        private final String[] keys;

        CaseInsensitiveMap(Dictionary<String, ?> dictionary) {
            if (dictionary == null) {
                this.dictionary = null;
                this.keys = new String[0];
                return;
            }
            this.dictionary = dictionary;
            ArrayList<String> keyList = new ArrayList<String>(dictionary.size());
            Enumeration<String> e = dictionary.keys();
            while (e.hasMoreElements()) {
                String k = e.nextElement();
                if (!(k instanceof String)) continue;
                String key = k;
                for (String i : keyList) {
                    if (!key.equalsIgnoreCase(i)) continue;
                    throw new IllegalArgumentException();
                }
                keyList.add(key);
            }
            this.keys = keyList.toArray(new String[keyList.size()]);
        }

        @Override
        public Object get(Object o) {
            String k = (String)o;
            String[] stringArray = this.keys;
            int n = this.keys.length;
            int n2 = 0;
            while (n2 < n) {
                String key = stringArray[n2];
                if (key.equalsIgnoreCase(k)) {
                    return this.dictionary.get(key);
                }
                ++n2;
            }
            return null;
        }

        @Override
        public Set<Map.Entry<String, Object>> entrySet() {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class DNChainMatching {
        private static final String MINUS_WILDCARD = "-";
        private static final String STAR_WILDCARD = "*";

        private DNChainMatching() {
        }

        private static boolean rdnmatch(List<?> rdn, List<?> rdnPattern) {
            if (rdn.size() != rdnPattern.size()) {
                return false;
            }
            int i = 0;
            while (i < rdn.size()) {
                int patNameEnd;
                String rdnNameValue = (String)rdn.get(i);
                String patNameValue = (String)rdnPattern.get(i);
                int rdnNameEnd = rdnNameValue.indexOf(61);
                if (rdnNameEnd != (patNameEnd = patNameValue.indexOf(61)) || !rdnNameValue.regionMatches(0, patNameValue, 0, rdnNameEnd)) {
                    return false;
                }
                String patValue = patNameValue.substring(patNameEnd);
                String rdnValue = rdnNameValue.substring(rdnNameEnd);
                if (!(rdnValue.equals(patValue) || patValue.equals("=*") || patValue.equals("=#16012a"))) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        private static boolean dnmatch(List<?> dn, List<?> dnPattern) {
            int dnStart = 0;
            int patStart = 0;
            int patLen = dnPattern.size();
            if (patLen == 0) {
                return false;
            }
            if (dnPattern.get(0).equals(STAR_WILDCARD)) {
                patStart = 1;
                --patLen;
            }
            if (dn.size() < patLen) {
                return false;
            }
            if (dn.size() > patLen) {
                if (!dnPattern.get(0).equals(STAR_WILDCARD)) {
                    return false;
                }
                dnStart = dn.size() - patLen;
            }
            int i = 0;
            while (i < patLen) {
                if (!DNChainMatching.rdnmatch((List)dn.get(i + dnStart), (List)dnPattern.get(i + patStart))) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        /*
         * Enabled aggressive block sorting
         */
        private static List<Object> parseDNchainPattern(String dnChain) {
            if (dnChain == null) {
                throw new IllegalArgumentException("The DN chain must not be null.");
            }
            ArrayList<Object> parsed = new ArrayList<Object>();
            int startIndex = 0;
            startIndex = DNChainMatching.skipSpaces(dnChain, startIndex);
            while (startIndex < dnChain.length()) {
                int endIndex = startIndex;
                boolean inQuote = false;
                block6: while (endIndex < dnChain.length()) {
                    char c = dnChain.charAt(endIndex);
                    switch (c) {
                        case '\"': {
                            inQuote = !inQuote;
                            break;
                        }
                        case '\\': {
                            ++endIndex;
                            break;
                        }
                        case ';': {
                            if (!inQuote) break block6;
                        }
                    }
                    ++endIndex;
                }
                if (endIndex > dnChain.length()) {
                    throw new IllegalArgumentException("unterminated escape");
                }
                parsed.add(dnChain.substring(startIndex, endIndex));
                startIndex = endIndex + 1;
                startIndex = DNChainMatching.skipSpaces(dnChain, startIndex);
            }
            int i = 0;
            while (i < parsed.size()) {
                String dn = (String)parsed.get(i);
                if (!dn.equals(STAR_WILDCARD) && !dn.equals(MINUS_WILDCARD)) {
                    ArrayList<Object> rdns = new ArrayList<Object>();
                    if (dn.charAt(0) == '*') {
                        if (dn.charAt(1) != ',') {
                            throw new IllegalArgumentException("invalid wildcard prefix");
                        }
                        rdns.add(STAR_WILDCARD);
                        dn = new X500Principal(dn.substring(2)).getName("CANONICAL");
                    } else {
                        dn = new X500Principal(dn).getName("CANONICAL");
                    }
                    DNChainMatching.parseDN(dn, rdns);
                    parsed.set(i, rdns);
                }
                ++i;
            }
            if (parsed.size() == 0) {
                throw new IllegalArgumentException("empty DN chain");
            }
            return parsed;
        }

        private static List<Object> parseDNchain(List<String> chain) {
            if (chain == null) {
                throw new IllegalArgumentException("DN chain must not be null.");
            }
            ArrayList<Object> result = new ArrayList<Object>(chain.size());
            for (String dn : chain) {
                dn = new X500Principal(dn).getName("CANONICAL");
                ArrayList<Object> rdns = new ArrayList<Object>();
                DNChainMatching.parseDN(dn, rdns);
                result.add(rdns);
            }
            if (result.size() == 0) {
                throw new IllegalArgumentException("empty DN chain");
            }
            return result;
        }

        private static int skipSpaces(String dnChain, int startIndex) {
            while (startIndex < dnChain.length() && dnChain.charAt(startIndex) == ' ') {
                ++startIndex;
            }
            return startIndex;
        }

        private static void parseDN(String dn, List<Object> rdn) {
            int startIndex = 0;
            char c = '\u0000';
            ArrayList<String> nameValues = new ArrayList<String>();
            while (startIndex < dn.length()) {
                int endIndex = startIndex;
                while (endIndex < dn.length()) {
                    c = dn.charAt(endIndex);
                    if (c == ',' || c == '+') break;
                    if (c == '\\') {
                        ++endIndex;
                    }
                    ++endIndex;
                }
                if (endIndex > dn.length()) {
                    throw new IllegalArgumentException(new StringBuffer("unterminated escape ").append(dn).toString());
                }
                nameValues.add(dn.substring(startIndex, endIndex));
                if (c != '+') {
                    rdn.add(nameValues);
                    nameValues = endIndex != dn.length() ? new ArrayList() : null;
                }
                startIndex = endIndex + 1;
            }
            if (nameValues != null) {
                throw new IllegalArgumentException(new StringBuffer("improperly terminated DN ").append(dn).toString());
            }
        }

        private static int skipWildCards(List<Object> dnChainPattern, int dnChainPatternIndex) {
            int i = dnChainPatternIndex;
            while (i < dnChainPattern.size()) {
                Object dnPattern = dnChainPattern.get(i);
                if (dnPattern instanceof String) {
                    if (!dnPattern.equals(STAR_WILDCARD) && !dnPattern.equals(MINUS_WILDCARD)) {
                        throw new IllegalArgumentException("expected wildcard in DN pattern");
                    }
                } else {
                    if (dnPattern instanceof List) break;
                    throw new IllegalArgumentException("expected String or List in DN Pattern");
                }
                ++i;
            }
            return i;
        }

        private static boolean dnChainMatch(List<Object> dnChain, int dnChainIndex, List<Object> dnChainPattern, int dnChainPatternIndex) throws IllegalArgumentException {
            if (dnChainIndex >= dnChain.size()) {
                return false;
            }
            if (dnChainPatternIndex >= dnChainPattern.size()) {
                return false;
            }
            Object dnPattern = dnChainPattern.get(dnChainPatternIndex);
            if (dnPattern instanceof String) {
                if (!dnPattern.equals(STAR_WILDCARD) && !dnPattern.equals(MINUS_WILDCARD)) {
                    throw new IllegalArgumentException("expected wildcard in DN pattern");
                }
                dnChainPatternIndex = dnPattern.equals(MINUS_WILDCARD) ? DNChainMatching.skipWildCards(dnChainPattern, dnChainPatternIndex) : ++dnChainPatternIndex;
                if (dnChainPatternIndex >= dnChainPattern.size()) {
                    return dnPattern.equals(MINUS_WILDCARD) ? true : dnChain.size() - 1 == dnChainIndex;
                }
                if (dnPattern.equals(STAR_WILDCARD)) {
                    return DNChainMatching.dnChainMatch(dnChain, dnChainIndex, dnChainPattern, dnChainPatternIndex) || DNChainMatching.dnChainMatch(dnChain, dnChainIndex + 1, dnChainPattern, dnChainPatternIndex);
                }
                int i = dnChainIndex;
                while (i < dnChain.size()) {
                    if (DNChainMatching.dnChainMatch(dnChain, i, dnChainPattern, dnChainPatternIndex)) {
                        return true;
                    }
                    ++i;
                }
            } else {
                if (dnPattern instanceof List) {
                    do {
                        if (!DNChainMatching.dnmatch((List)dnChain.get(dnChainIndex), (List)dnPattern)) {
                            return false;
                        }
                        if (++dnChainIndex >= dnChain.size() && ++dnChainPatternIndex >= dnChainPattern.size()) {
                            return true;
                        }
                        if (dnChainIndex >= dnChain.size()) {
                            return (dnChainPatternIndex = DNChainMatching.skipWildCards(dnChainPattern, dnChainPatternIndex)) >= dnChainPattern.size();
                        }
                        if (dnChainPatternIndex >= dnChainPattern.size()) {
                            return false;
                        }
                        dnPattern = dnChainPattern.get(dnChainPatternIndex);
                        if (!(dnPattern instanceof String)) continue;
                        if (!dnPattern.equals(STAR_WILDCARD) && !dnPattern.equals(MINUS_WILDCARD)) {
                            throw new IllegalArgumentException("expected wildcard in DN pattern");
                        }
                        return DNChainMatching.dnChainMatch(dnChain, dnChainIndex, dnChainPattern, dnChainPatternIndex);
                    } while (dnPattern instanceof List);
                    throw new IllegalArgumentException("expected String or List in DN Pattern");
                }
                throw new IllegalArgumentException("expected String or List in DN Pattern");
            }
            return false;
        }

        static boolean match(String pattern, List<String> dnChain) {
            List<Object> parsedDNPattern;
            List<Object> parsedDNChain;
            try {
                parsedDNChain = DNChainMatching.parseDNchain(dnChain);
            }
            catch (RuntimeException e) {
                IllegalArgumentException iae = new IllegalArgumentException(new StringBuffer("Invalid DN chain: ").append(DNChainMatching.toString(dnChain)).toString());
                iae.initCause(e);
                throw iae;
            }
            try {
                parsedDNPattern = DNChainMatching.parseDNchainPattern(pattern);
            }
            catch (RuntimeException e) {
                IllegalArgumentException iae = new IllegalArgumentException(new StringBuffer("Invalid match pattern: ").append(pattern).toString());
                iae.initCause(e);
                throw iae;
            }
            return DNChainMatching.dnChainMatch(parsedDNChain, 0, parsedDNPattern, 0);
        }

        private static String toString(List<?> dnChain) {
            if (dnChain == null) {
                return null;
            }
            StringBuffer sb = new StringBuffer();
            Iterator<?> iChain = dnChain.iterator();
            while (iChain.hasNext()) {
                sb.append(iChain.next());
                if (!iChain.hasNext()) continue;
                sb.append("; ");
            }
            return sb.toString();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class FilterImpl
    implements Filter {
        private static final int EQUAL = 1;
        private static final int APPROX = 2;
        private static final int GREATER = 3;
        private static final int LESS = 4;
        private static final int PRESENT = 5;
        private static final int SUBSTRING = 6;
        private static final int AND = 7;
        private static final int OR = 8;
        private static final int NOT = 9;
        private final int op;
        private final String attr;
        private final Object value;
        private transient String filterString;
        private static final Class<?>[] constructorType;

        static {
            Class[] classArray = new Class[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            constructorType = classArray;
        }

        static FilterImpl newInstance(String filterString) throws InvalidSyntaxException {
            return new Parser(filterString).parse();
        }

        FilterImpl(int operation, String attr, Object value) {
            this.op = operation;
            this.attr = attr;
            this.value = value;
            this.filterString = null;
        }

        @Override
        public boolean match(ServiceReference<?> reference) {
            return this.matches(new ServiceReferenceMap(reference));
        }

        @Override
        public boolean match(Dictionary<String, ?> dictionary) {
            return this.matches(new CaseInsensitiveMap(dictionary));
        }

        @Override
        public boolean matchCase(Dictionary<String, ?> dictionary) {
            switch (this.op) {
                case 7: {
                    FilterImpl[] filters;
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n2 = 0;
                    while (n2 < n) {
                        FilterImpl f = filterImplArray[n2];
                        if (!f.matchCase(dictionary)) {
                            return false;
                        }
                        ++n2;
                    }
                    return true;
                }
                case 8: {
                    FilterImpl[] filters;
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n3 = 0;
                    while (n3 < n) {
                        FilterImpl f = filterImplArray[n3];
                        if (f.matchCase(dictionary)) {
                            return true;
                        }
                        ++n3;
                    }
                    return false;
                }
                case 9: {
                    FilterImpl filter = (FilterImpl)this.value;
                    return !filter.matchCase(dictionary);
                }
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 6: {
                    Object prop = dictionary == null ? null : dictionary.get(this.attr);
                    return this.compare(this.op, prop, this.value);
                }
                case 5: {
                    Object prop;
                    Object v0 = prop = dictionary == null ? null : dictionary.get(this.attr);
                    return prop != null;
                }
            }
            return false;
        }

        @Override
        public boolean matches(Map<String, ?> map) {
            switch (this.op) {
                case 7: {
                    FilterImpl[] filters;
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n2 = 0;
                    while (n2 < n) {
                        FilterImpl f = filterImplArray[n2];
                        if (!f.matches(map)) {
                            return false;
                        }
                        ++n2;
                    }
                    return true;
                }
                case 8: {
                    FilterImpl[] filters;
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n3 = 0;
                    while (n3 < n) {
                        FilterImpl f = filterImplArray[n3];
                        if (f.matches(map)) {
                            return true;
                        }
                        ++n3;
                    }
                    return false;
                }
                case 9: {
                    FilterImpl filter = (FilterImpl)this.value;
                    return !filter.matches(map);
                }
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 6: {
                    Object prop = map == null ? null : map.get(this.attr);
                    return this.compare(this.op, prop, this.value);
                }
                case 5: {
                    Object prop;
                    Object v0 = prop = map == null ? null : map.get(this.attr);
                    return prop != null;
                }
            }
            return false;
        }

        @Override
        public String toString() {
            String result = this.filterString;
            if (result == null) {
                this.filterString = result = this.normalize().toString();
            }
            return result;
        }

        private StringBuffer normalize() {
            StringBuffer sb = new StringBuffer();
            sb.append('(');
            switch (this.op) {
                case 7: {
                    FilterImpl[] filters;
                    sb.append('&');
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n2 = 0;
                    while (n2 < n) {
                        FilterImpl f = filterImplArray[n2];
                        sb.append(f.normalize());
                        ++n2;
                    }
                    break;
                }
                case 8: {
                    FilterImpl[] filters;
                    sb.append('|');
                    FilterImpl[] filterImplArray = filters = (FilterImpl[])this.value;
                    int n = filters.length;
                    int n3 = 0;
                    while (n3 < n) {
                        FilterImpl f = filterImplArray[n3];
                        sb.append(f.normalize());
                        ++n3;
                    }
                    break;
                }
                case 9: {
                    sb.append('!');
                    FilterImpl filter = (FilterImpl)this.value;
                    sb.append(filter.normalize());
                    break;
                }
                case 6: {
                    String[] substrings;
                    sb.append(this.attr);
                    sb.append('=');
                    String[] stringArray = substrings = (String[])this.value;
                    int n = substrings.length;
                    int n4 = 0;
                    while (n4 < n) {
                        String substr = stringArray[n4];
                        if (substr == null) {
                            sb.append('*');
                        } else {
                            sb.append(FilterImpl.encodeValue(substr));
                        }
                        ++n4;
                    }
                    break;
                }
                case 1: {
                    sb.append(this.attr);
                    sb.append('=');
                    sb.append(FilterImpl.encodeValue((String)this.value));
                    break;
                }
                case 3: {
                    sb.append(this.attr);
                    sb.append(">=");
                    sb.append(FilterImpl.encodeValue((String)this.value));
                    break;
                }
                case 4: {
                    sb.append(this.attr);
                    sb.append("<=");
                    sb.append(FilterImpl.encodeValue((String)this.value));
                    break;
                }
                case 2: {
                    sb.append(this.attr);
                    sb.append("~=");
                    sb.append(FilterImpl.encodeValue(FilterImpl.approxString((String)this.value)));
                    break;
                }
                case 5: {
                    sb.append(this.attr);
                    sb.append("=*");
                }
            }
            sb.append(')');
            return sb;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Filter)) {
                return false;
            }
            return this.toString().equals(obj.toString());
        }

        @Override
        public int hashCode() {
            return this.toString().hashCode();
        }

        private static String encodeValue(String value) {
            boolean encoded = false;
            int inlen = value.length();
            int outlen = inlen << 1;
            char[] output = new char[outlen];
            value.getChars(0, inlen, output, inlen);
            int cursor = 0;
            int i = inlen;
            while (i < outlen) {
                char c = output[i];
                switch (c) {
                    case '(': 
                    case ')': 
                    case '*': 
                    case '\\': {
                        output[cursor] = 92;
                        ++cursor;
                        encoded = true;
                    }
                }
                output[cursor] = c;
                ++cursor;
                ++i;
            }
            return encoded ? new String(output, 0, cursor) : value;
        }

        private boolean compare(int operation, Object value1, Object value2) {
            if (value1 == null) {
                return false;
            }
            if (value1 instanceof String) {
                return this.compare_String(operation, (String)value1, value2);
            }
            Class<?> clazz = value1.getClass();
            if (clazz.isArray()) {
                Class<?> type = clazz.getComponentType();
                if (type.isPrimitive()) {
                    return this.compare_PrimitiveArray(operation, type, value1, value2);
                }
                return this.compare_ObjectArray(operation, (Object[])value1, value2);
            }
            if (value1 instanceof Collection) {
                return this.compare_Collection(operation, (Collection)value1, value2);
            }
            if (value1 instanceof Integer) {
                return this.compare_Integer(operation, (Integer)value1, value2);
            }
            if (value1 instanceof Long) {
                return this.compare_Long(operation, (Long)value1, value2);
            }
            if (value1 instanceof Byte) {
                return this.compare_Byte(operation, (Byte)value1, value2);
            }
            if (value1 instanceof Short) {
                return this.compare_Short(operation, (Short)value1, value2);
            }
            if (value1 instanceof Character) {
                return this.compare_Character(operation, ((Character)value1).charValue(), value2);
            }
            if (value1 instanceof Float) {
                return this.compare_Float(operation, ((Float)value1).floatValue(), value2);
            }
            if (value1 instanceof Double) {
                return this.compare_Double(operation, (Double)value1, value2);
            }
            if (value1 instanceof Boolean) {
                return this.compare_Boolean(operation, (Boolean)value1, value2);
            }
            if (value1 instanceof Comparable) {
                Comparable comparable = (Comparable)value1;
                return this.compare_Comparable(operation, comparable, value2);
            }
            return this.compare_Unknown(operation, value1, value2);
        }

        private boolean compare_Collection(int operation, Collection<?> collection, Object value2) {
            for (Object value1 : collection) {
                if (!this.compare(operation, value1, value2)) continue;
                return true;
            }
            return false;
        }

        private boolean compare_ObjectArray(int operation, Object[] array, Object value2) {
            Object[] objectArray = array;
            int n = array.length;
            int n2 = 0;
            while (n2 < n) {
                Object value1 = objectArray[n2];
                if (this.compare(operation, value1, value2)) {
                    return true;
                }
                ++n2;
            }
            return false;
        }

        private boolean compare_PrimitiveArray(int operation, Class<?> type, Object primarray, Object value2) {
            if (Integer.TYPE.isAssignableFrom(type)) {
                int[] array;
                int[] nArray = array = (int[])primarray;
                int n = array.length;
                int n2 = 0;
                while (n2 < n) {
                    int value1 = nArray[n2];
                    if (this.compare_Integer(operation, value1, value2)) {
                        return true;
                    }
                    ++n2;
                }
                return false;
            }
            if (Long.TYPE.isAssignableFrom(type)) {
                long[] array;
                long[] lArray = array = (long[])primarray;
                int n = array.length;
                int n3 = 0;
                while (n3 < n) {
                    long value1 = lArray[n3];
                    if (this.compare_Long(operation, value1, value2)) {
                        return true;
                    }
                    ++n3;
                }
                return false;
            }
            if (Byte.TYPE.isAssignableFrom(type)) {
                byte[] array;
                byte[] byArray = array = (byte[])primarray;
                int n = array.length;
                int n4 = 0;
                while (n4 < n) {
                    byte value1 = byArray[n4];
                    if (this.compare_Byte(operation, value1, value2)) {
                        return true;
                    }
                    ++n4;
                }
                return false;
            }
            if (Short.TYPE.isAssignableFrom(type)) {
                short[] array;
                short[] sArray = array = (short[])primarray;
                int n = array.length;
                int n5 = 0;
                while (n5 < n) {
                    short value1 = sArray[n5];
                    if (this.compare_Short(operation, value1, value2)) {
                        return true;
                    }
                    ++n5;
                }
                return false;
            }
            if (Character.TYPE.isAssignableFrom(type)) {
                char[] array;
                char[] cArray = array = (char[])primarray;
                int n = array.length;
                int n6 = 0;
                while (n6 < n) {
                    char value1 = cArray[n6];
                    if (this.compare_Character(operation, value1, value2)) {
                        return true;
                    }
                    ++n6;
                }
                return false;
            }
            if (Float.TYPE.isAssignableFrom(type)) {
                float[] array;
                float[] fArray = array = (float[])primarray;
                int n = array.length;
                int n7 = 0;
                while (n7 < n) {
                    float value1 = fArray[n7];
                    if (this.compare_Float(operation, value1, value2)) {
                        return true;
                    }
                    ++n7;
                }
                return false;
            }
            if (Double.TYPE.isAssignableFrom(type)) {
                double[] array;
                double[] dArray = array = (double[])primarray;
                int n = array.length;
                int n8 = 0;
                while (n8 < n) {
                    double value1 = dArray[n8];
                    if (this.compare_Double(operation, value1, value2)) {
                        return true;
                    }
                    ++n8;
                }
                return false;
            }
            if (Boolean.TYPE.isAssignableFrom(type)) {
                boolean[] array;
                boolean[] blArray = array = (boolean[])primarray;
                int n = array.length;
                int n9 = 0;
                while (n9 < n) {
                    boolean value1 = blArray[n9];
                    if (this.compare_Boolean(operation, value1, value2)) {
                        return true;
                    }
                    ++n9;
                }
                return false;
            }
            return false;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private boolean compare_String(int operation, String string, Object value2) {
            switch (operation) {
                case 6: {
                    String[] substrings = (String[])value2;
                    int pos = 0;
                    int i = 0;
                    int size = substrings.length;
                    while (i < size) {
                        String substr = substrings[i];
                        if (i + 1 < size) {
                            if (substr == null) {
                                String substr2 = substrings[i + 1];
                                if (substr2 != null) {
                                    int index = string.indexOf(substr2, pos);
                                    if (index == -1) {
                                        return false;
                                    }
                                    pos = index + substr2.length();
                                    if (i + 2 < size) {
                                        ++i;
                                    }
                                }
                            } else {
                                int len = substr.length();
                                if (!string.regionMatches(pos, substr, 0, len)) return false;
                                pos += len;
                            }
                        } else {
                            if (substr != null) return string.endsWith(substr);
                            return true;
                        }
                        ++i;
                    }
                    return true;
                }
                case 1: {
                    return string.equals(value2);
                }
                case 2: {
                    string = FilterImpl.approxString(string);
                    String string2 = FilterImpl.approxString((String)value2);
                    return string.equalsIgnoreCase(string2);
                }
                case 3: {
                    return string.compareTo((String)value2) >= 0;
                }
                case 4: {
                    return string.compareTo((String)value2) <= 0;
                }
            }
            return false;
        }

        private boolean compare_Integer(int operation, int intval, Object value2) {
            int intval2;
            if (operation == 6) {
                return false;
            }
            try {
                intval2 = Integer.parseInt(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return intval == intval2;
                }
                case 3: {
                    return intval >= intval2;
                }
                case 4: {
                    return intval <= intval2;
                }
            }
            return false;
        }

        private boolean compare_Long(int operation, long longval, Object value2) {
            long longval2;
            if (operation == 6) {
                return false;
            }
            try {
                longval2 = Long.parseLong(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return longval == longval2;
                }
                case 3: {
                    return longval >= longval2;
                }
                case 4: {
                    return longval <= longval2;
                }
            }
            return false;
        }

        private boolean compare_Byte(int operation, byte byteval, Object value2) {
            byte byteval2;
            if (operation == 6) {
                return false;
            }
            try {
                byteval2 = Byte.parseByte(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return byteval == byteval2;
                }
                case 3: {
                    return byteval >= byteval2;
                }
                case 4: {
                    return byteval <= byteval2;
                }
            }
            return false;
        }

        private boolean compare_Short(int operation, short shortval, Object value2) {
            short shortval2;
            if (operation == 6) {
                return false;
            }
            try {
                shortval2 = Short.parseShort(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return shortval == shortval2;
                }
                case 3: {
                    return shortval >= shortval2;
                }
                case 4: {
                    return shortval <= shortval2;
                }
            }
            return false;
        }

        private boolean compare_Character(int operation, char charval, Object value2) {
            char charval2;
            if (operation == 6) {
                return false;
            }
            try {
                charval2 = ((String)value2).charAt(0);
            }
            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                return false;
            }
            switch (operation) {
                case 1: {
                    return charval == charval2;
                }
                case 2: {
                    return charval == charval2 || Character.toUpperCase(charval) == Character.toUpperCase(charval2) || Character.toLowerCase(charval) == Character.toLowerCase(charval2);
                }
                case 3: {
                    return charval >= charval2;
                }
                case 4: {
                    return charval <= charval2;
                }
            }
            return false;
        }

        private boolean compare_Boolean(int operation, boolean boolval, Object value2) {
            if (operation == 6) {
                return false;
            }
            boolean boolval2 = Boolean.valueOf(((String)value2).trim());
            switch (operation) {
                case 1: 
                case 2: 
                case 3: 
                case 4: {
                    return boolval == boolval2;
                }
            }
            return false;
        }

        private boolean compare_Float(int operation, float floatval, Object value2) {
            float floatval2;
            if (operation == 6) {
                return false;
            }
            try {
                floatval2 = Float.parseFloat(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return Float.compare(floatval, floatval2) == 0;
                }
                case 3: {
                    return Float.compare(floatval, floatval2) >= 0;
                }
                case 4: {
                    return Float.compare(floatval, floatval2) <= 0;
                }
            }
            return false;
        }

        private boolean compare_Double(int operation, double doubleval, Object value2) {
            double doubleval2;
            if (operation == 6) {
                return false;
            }
            try {
                doubleval2 = Double.parseDouble(((String)value2).trim());
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return false;
            }
            switch (operation) {
                case 1: 
                case 2: {
                    return Double.compare(doubleval, doubleval2) == 0;
                }
                case 3: {
                    return Double.compare(doubleval, doubleval2) >= 0;
                }
                case 4: {
                    return Double.compare(doubleval, doubleval2) <= 0;
                }
            }
            return false;
        }

        private boolean compare_Comparable(int operation, Comparable<Object> value1, Object value2) {
            Constructor<?> constructor;
            if (operation == 6) {
                return false;
            }
            try {
                constructor = value1.getClass().getConstructor(constructorType);
            }
            catch (NoSuchMethodException noSuchMethodException) {
                return false;
            }
            try {
                if (!constructor.isAccessible()) {
                    AccessController.doPrivileged(new SetAccessibleAction(constructor));
                }
                value2 = constructor.newInstance(((String)value2).trim());
            }
            catch (IllegalAccessException illegalAccessException) {
                return false;
            }
            catch (InvocationTargetException invocationTargetException) {
                return false;
            }
            catch (InstantiationException instantiationException) {
                return false;
            }
            try {
                switch (operation) {
                    case 1: 
                    case 2: {
                        return value1.compareTo(value2) == 0;
                    }
                    case 3: {
                        return value1.compareTo(value2) >= 0;
                    }
                    case 4: {
                        return value1.compareTo(value2) <= 0;
                    }
                }
            }
            catch (Exception exception) {
                return false;
            }
            return false;
        }

        private boolean compare_Unknown(int operation, Object value1, Object value2) {
            Constructor<?> constructor;
            if (operation == 6) {
                return false;
            }
            try {
                constructor = value1.getClass().getConstructor(constructorType);
            }
            catch (NoSuchMethodException noSuchMethodException) {
                return false;
            }
            try {
                if (!constructor.isAccessible()) {
                    AccessController.doPrivileged(new SetAccessibleAction(constructor));
                }
                value2 = constructor.newInstance(((String)value2).trim());
            }
            catch (IllegalAccessException illegalAccessException) {
                return false;
            }
            catch (InvocationTargetException invocationTargetException) {
                return false;
            }
            catch (InstantiationException instantiationException) {
                return false;
            }
            try {
                switch (operation) {
                    case 1: 
                    case 2: 
                    case 3: 
                    case 4: {
                        return value1.equals(value2);
                    }
                }
            }
            catch (Exception exception) {
                return false;
            }
            return false;
        }

        private static String approxString(String input) {
            boolean changed = false;
            char[] output = input.toCharArray();
            int cursor = 0;
            char[] cArray = output;
            int n = output.length;
            int n2 = 0;
            while (n2 < n) {
                char c = cArray[n2];
                if (Character.isWhitespace(c)) {
                    changed = true;
                } else {
                    output[cursor] = c;
                    ++cursor;
                }
                ++n2;
            }
            return changed ? new String(output, 0, cursor) : input;
        }

        private static final class Parser {
            private final String filterstring;
            private final char[] filterChars;
            private int pos;

            Parser(String filterstring) {
                this.filterstring = filterstring;
                this.filterChars = filterstring.toCharArray();
                this.pos = 0;
            }

            FilterImpl parse() throws InvalidSyntaxException {
                FilterImpl filter;
                try {
                    filter = this.parse_filter();
                }
                catch (ArrayIndexOutOfBoundsException e) {
                    throw new InvalidSyntaxException("Filter ended abruptly", this.filterstring, e);
                }
                if (this.pos != this.filterChars.length) {
                    throw new InvalidSyntaxException("Extraneous trailing characters: " + this.filterstring.substring(this.pos), this.filterstring);
                }
                return filter;
            }

            private FilterImpl parse_filter() throws InvalidSyntaxException {
                this.skipWhiteSpace();
                if (this.filterChars[this.pos] != '(') {
                    throw new InvalidSyntaxException("Missing '(': " + this.filterstring.substring(this.pos), this.filterstring);
                }
                ++this.pos;
                FilterImpl filter = this.parse_filtercomp();
                this.skipWhiteSpace();
                if (this.filterChars[this.pos] != ')') {
                    throw new InvalidSyntaxException("Missing ')': " + this.filterstring.substring(this.pos), this.filterstring);
                }
                ++this.pos;
                this.skipWhiteSpace();
                return filter;
            }

            private FilterImpl parse_filtercomp() throws InvalidSyntaxException {
                this.skipWhiteSpace();
                char c = this.filterChars[this.pos];
                switch (c) {
                    case '&': {
                        ++this.pos;
                        return this.parse_and();
                    }
                    case '|': {
                        ++this.pos;
                        return this.parse_or();
                    }
                    case '!': {
                        ++this.pos;
                        return this.parse_not();
                    }
                }
                return this.parse_item();
            }

            private FilterImpl parse_and() throws InvalidSyntaxException {
                int lookahead = this.pos;
                this.skipWhiteSpace();
                if (this.filterChars[this.pos] != '(') {
                    this.pos = lookahead - 1;
                    return this.parse_item();
                }
                ArrayList<FilterImpl> operands = new ArrayList<FilterImpl>(10);
                while (this.filterChars[this.pos] == '(') {
                    FilterImpl child = this.parse_filter();
                    operands.add(child);
                }
                return new FilterImpl(7, null, operands.toArray(new FilterImpl[operands.size()]));
            }

            private FilterImpl parse_or() throws InvalidSyntaxException {
                int lookahead = this.pos;
                this.skipWhiteSpace();
                if (this.filterChars[this.pos] != '(') {
                    this.pos = lookahead - 1;
                    return this.parse_item();
                }
                ArrayList<FilterImpl> operands = new ArrayList<FilterImpl>(10);
                while (this.filterChars[this.pos] == '(') {
                    FilterImpl child = this.parse_filter();
                    operands.add(child);
                }
                return new FilterImpl(8, null, operands.toArray(new FilterImpl[operands.size()]));
            }

            private FilterImpl parse_not() throws InvalidSyntaxException {
                int lookahead = this.pos;
                this.skipWhiteSpace();
                if (this.filterChars[this.pos] != '(') {
                    this.pos = lookahead - 1;
                    return this.parse_item();
                }
                FilterImpl child = this.parse_filter();
                return new FilterImpl(9, null, child);
            }

            private FilterImpl parse_item() throws InvalidSyntaxException {
                String attr = this.parse_attr();
                this.skipWhiteSpace();
                switch (this.filterChars[this.pos]) {
                    case '~': {
                        if (this.filterChars[this.pos + 1] != '=') break;
                        this.pos += 2;
                        return new FilterImpl(2, attr, this.parse_value());
                    }
                    case '>': {
                        if (this.filterChars[this.pos + 1] != '=') break;
                        this.pos += 2;
                        return new FilterImpl(3, attr, this.parse_value());
                    }
                    case '<': {
                        if (this.filterChars[this.pos + 1] != '=') break;
                        this.pos += 2;
                        return new FilterImpl(4, attr, this.parse_value());
                    }
                    case '=': {
                        if (this.filterChars[this.pos + 1] == '*') {
                            int oldpos = this.pos;
                            this.pos += 2;
                            this.skipWhiteSpace();
                            if (this.filterChars[this.pos] == ')') {
                                return new FilterImpl(5, attr, null);
                            }
                            this.pos = oldpos;
                        }
                        ++this.pos;
                        Object string = this.parse_substring();
                        if (string instanceof String) {
                            return new FilterImpl(1, attr, string);
                        }
                        return new FilterImpl(6, attr, string);
                    }
                }
                throw new InvalidSyntaxException("Invalid operator: " + this.filterstring.substring(this.pos), this.filterstring);
            }

            private String parse_attr() throws InvalidSyntaxException {
                this.skipWhiteSpace();
                int begin = this.pos;
                int end = this.pos;
                char c = this.filterChars[this.pos];
                while (c != '~' && c != '<' && c != '>' && c != '=' && c != '(' && c != ')') {
                    ++this.pos;
                    if (!Character.isWhitespace(c)) {
                        end = this.pos;
                    }
                    c = this.filterChars[this.pos];
                }
                int length = end - begin;
                if (length == 0) {
                    throw new InvalidSyntaxException("Missing attr: " + this.filterstring.substring(this.pos), this.filterstring);
                }
                return new String(this.filterChars, begin, length);
            }

            private String parse_value() throws InvalidSyntaxException {
                StringBuffer sb = new StringBuffer(this.filterChars.length - this.pos);
                block5: while (true) {
                    char c = this.filterChars[this.pos];
                    switch (c) {
                        case ')': {
                            break block5;
                        }
                        case '(': {
                            throw new InvalidSyntaxException("Invalid value: " + this.filterstring.substring(this.pos), this.filterstring);
                        }
                        case '\\': {
                            ++this.pos;
                            c = this.filterChars[this.pos];
                        }
                        default: {
                            sb.append(c);
                            ++this.pos;
                            continue block5;
                        }
                    }
                    break;
                }
                if (sb.length() == 0) {
                    throw new InvalidSyntaxException("Missing value: " + this.filterstring.substring(this.pos), this.filterstring);
                }
                return sb.toString();
            }

            private Object parse_substring() throws InvalidSyntaxException {
                Object single;
                int size;
                StringBuffer sb = new StringBuffer(this.filterChars.length - this.pos);
                ArrayList<String> operands = new ArrayList<String>(10);
                block6: while (true) {
                    char c = this.filterChars[this.pos];
                    switch (c) {
                        case ')': {
                            if (sb.length() <= 0) break block6;
                            operands.add(sb.toString());
                            break block6;
                        }
                        case '(': {
                            throw new InvalidSyntaxException("Invalid value: " + this.filterstring.substring(this.pos), this.filterstring);
                        }
                        case '*': {
                            if (sb.length() > 0) {
                                operands.add(sb.toString());
                            }
                            sb.setLength(0);
                            operands.add(null);
                            ++this.pos;
                            continue block6;
                        }
                        case '\\': {
                            ++this.pos;
                            c = this.filterChars[this.pos];
                        }
                        default: {
                            sb.append(c);
                            ++this.pos;
                            continue block6;
                        }
                    }
                    break;
                }
                if ((size = operands.size()) == 0) {
                    return "";
                }
                if (size == 1 && (single = operands.get(0)) != null) {
                    return single;
                }
                return operands.toArray(new String[size]);
            }

            private void skipWhiteSpace() {
                int length = this.filterChars.length;
                while (this.pos < length && Character.isWhitespace(this.filterChars[this.pos])) {
                    ++this.pos;
                }
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class ServiceReferenceMap
    extends AbstractMap<String, Object>
    implements Map<String, Object> {
        private final ServiceReference<?> reference;

        ServiceReferenceMap(ServiceReference<?> reference) {
            this.reference = reference;
        }

        @Override
        public Object get(Object key) {
            if (this.reference == null) {
                return null;
            }
            return this.reference.getProperty((String)key);
        }

        @Override
        public Set<Map.Entry<String, Object>> entrySet() {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class SetAccessibleAction
    implements PrivilegedAction<Object> {
        private final AccessibleObject accessible;

        SetAccessibleAction(AccessibleObject accessible) {
            this.accessible = accessible;
        }

        @Override
        public Object run() {
            this.accessible.setAccessible(true);
            return null;
        }
    }
}

