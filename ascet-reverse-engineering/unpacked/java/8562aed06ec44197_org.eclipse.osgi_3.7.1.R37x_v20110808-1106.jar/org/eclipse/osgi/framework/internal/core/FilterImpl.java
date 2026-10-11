/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.internal.serviceregistry.ServiceReferenceImpl;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FilterImpl
implements Filter {
    private final int op;
    private static final int EQUAL = 1;
    private static final int APPROX = 2;
    private static final int GREATER = 3;
    private static final int LESS = 4;
    private static final int PRESENT = 5;
    private static final int SUBSTRING = 6;
    private static final int AND = 7;
    private static final int OR = 8;
    private static final int NOT = 9;
    private final String attr;
    private final Object value;
    private volatile transient String filterString;
    private static final Class<?>[] constructorType;
    static /* synthetic */ Class class$0;

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

    public static FilterImpl newInstance(String filterString) throws InvalidSyntaxException {
        return new Parser(filterString).parse();
    }

    @Override
    public boolean match(ServiceReference<?> reference) {
        if (reference instanceof ServiceReferenceImpl) {
            return this.matchCase(((ServiceReferenceImpl)reference).getRegistration().getProperties());
        }
        return this.matchCase(new ServiceReferenceDictionary(reference));
    }

    @Override
    public boolean match(Dictionary<String, ?> dictionary) {
        if (dictionary != null) {
            dictionary = new Headers(dictionary);
        }
        return this.matchCase(dictionary);
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
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("PRESENT(").append(this.attr).append(")").toString());
                }
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
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("PRESENT(").append(this.attr).append(")").toString());
                }
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
            this.filterString = result = this.normalize();
        }
        return result;
    }

    private String normalize() {
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
        return sb.toString();
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

    FilterImpl(int operation, String attr, Object value) {
        this.op = operation;
        this.attr = attr;
        this.value = value;
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
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("compare(").append(value1).append(",").append(value2).append(")").toString());
            }
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
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("SUBSTRING(").append(string).append(",").append(value2).append(")").toString());
                }
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
                                int index;
                                if (Debug.DEBUG_FILTER) {
                                    Debug.println(new StringBuffer("indexOf(\"").append(substr2).append("\",").append(pos).append(")").toString());
                                }
                                if ((index = string.indexOf(substr2, pos)) == -1) {
                                    return false;
                                }
                                pos = index + substr2.length();
                                if (i + 2 < size) {
                                    ++i;
                                }
                            }
                        } else {
                            int len = substr.length();
                            if (Debug.DEBUG_FILTER) {
                                Debug.println(new StringBuffer("regionMatches(").append(pos).append(",\"").append(substr).append("\")").toString());
                            }
                            if (!string.regionMatches(pos, substr, 0, len)) return false;
                            pos += len;
                        }
                    } else {
                        if (substr == null) {
                            return true;
                        }
                        if (!Debug.DEBUG_FILTER) return string.endsWith(substr);
                        Debug.println(new StringBuffer("regionMatches(").append(pos).append(",").append(substr).append(")").toString());
                        return string.endsWith(substr);
                    }
                    ++i;
                }
                return true;
            }
            case 1: {
                if (!Debug.DEBUG_FILTER) return string.equals(value2);
                Debug.println(new StringBuffer("EQUAL(").append(string).append(",").append(value2).append(")").toString());
                return string.equals(value2);
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(string).append(",").append(value2).append(")").toString());
                }
                string = FilterImpl.approxString(string);
                String string2 = FilterImpl.approxString((String)value2);
                return string.equalsIgnoreCase(string2);
            }
            case 3: {
                if (!Debug.DEBUG_FILTER) return string.compareTo((String)value2) >= 0;
                Debug.println(new StringBuffer("GREATER(").append(string).append(",").append(value2).append(")").toString());
                return string.compareTo((String)value2) >= 0;
            }
            case 4: {
                if (!Debug.DEBUG_FILTER) return string.compareTo((String)value2) <= 0;
                Debug.println(new StringBuffer("LESS(").append(string).append(",").append(value2).append(")").toString());
                return string.compareTo((String)value2) <= 0;
            }
        }
        return false;
    }

    private boolean compare_Integer(int operation, int intval, Object value2) {
        int intval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(intval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            intval2 = Integer.parseInt(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(intval).append(",").append(value2).append(")").toString());
                }
                return intval == intval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(intval).append(",").append(value2).append(")").toString());
                }
                return intval == intval2;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(intval).append(",").append(value2).append(")").toString());
                }
                return intval >= intval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(intval).append(",").append(value2).append(")").toString());
                }
                return intval <= intval2;
            }
        }
        return false;
    }

    private boolean compare_Long(int operation, long longval, Object value2) {
        long longval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(longval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            longval2 = Long.parseLong(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(longval).append(",").append(value2).append(")").toString());
                }
                return longval == longval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(longval).append(",").append(value2).append(")").toString());
                }
                return longval == longval2;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(longval).append(",").append(value2).append(")").toString());
                }
                return longval >= longval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(longval).append(",").append(value2).append(")").toString());
                }
                return longval <= longval2;
            }
        }
        return false;
    }

    private boolean compare_Byte(int operation, byte byteval, Object value2) {
        byte byteval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(byteval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            byteval2 = Byte.parseByte(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(byteval).append(",").append(value2).append(")").toString());
                }
                return byteval == byteval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(byteval).append(",").append(value2).append(")").toString());
                }
                return byteval == byteval2;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(byteval).append(",").append(value2).append(")").toString());
                }
                return byteval >= byteval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(byteval).append(",").append(value2).append(")").toString());
                }
                return byteval <= byteval2;
            }
        }
        return false;
    }

    private boolean compare_Short(int operation, short shortval, Object value2) {
        short shortval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(shortval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            shortval2 = Short.parseShort(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(shortval).append(",").append(value2).append(")").toString());
                }
                return shortval == shortval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(shortval).append(",").append(value2).append(")").toString());
                }
                return shortval == shortval2;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(shortval).append(",").append(value2).append(")").toString());
                }
                return shortval >= shortval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(shortval).append(",").append(value2).append(")").toString());
                }
                return shortval <= shortval2;
            }
        }
        return false;
    }

    private boolean compare_Character(int operation, char charval, Object value2) {
        char charval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(charval).append(",").append(value2).append(")").toString());
            }
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
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(charval).append(",").append(value2).append(")").toString());
                }
                return charval == charval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(charval).append(",").append(value2).append(")").toString());
                }
                return charval == charval2 || Character.toUpperCase(charval) == Character.toUpperCase(charval2) || Character.toLowerCase(charval) == Character.toLowerCase(charval2);
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(charval).append(",").append(value2).append(")").toString());
                }
                return charval >= charval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(charval).append(",").append(value2).append(")").toString());
                }
                return charval <= charval2;
            }
        }
        return false;
    }

    private boolean compare_Boolean(int operation, boolean boolval, Object value2) {
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(boolval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        boolean boolval2 = Boolean.valueOf(((String)value2).trim());
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(boolval).append(",").append(value2).append(")").toString());
                }
                return boolval == boolval2;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(boolval).append(",").append(value2).append(")").toString());
                }
                return boolval == boolval2;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(boolval).append(",").append(value2).append(")").toString());
                }
                return boolval == boolval2;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(boolval).append(",").append(value2).append(")").toString());
                }
                return boolval == boolval2;
            }
        }
        return false;
    }

    private boolean compare_Float(int operation, float floatval, Object value2) {
        float floatval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(floatval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            floatval2 = Float.parseFloat(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(floatval).append(",").append(value2).append(")").toString());
                }
                return Float.compare(floatval, floatval2) == 0;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(floatval).append(",").append(value2).append(")").toString());
                }
                return Float.compare(floatval, floatval2) == 0;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(floatval).append(",").append(value2).append(")").toString());
                }
                return Float.compare(floatval, floatval2) >= 0;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(floatval).append(",").append(value2).append(")").toString());
                }
                return Float.compare(floatval, floatval2) <= 0;
            }
        }
        return false;
    }

    private boolean compare_Double(int operation, double doubleval, Object value2) {
        double doubleval2;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(doubleval).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            doubleval2 = Double.parseDouble(((String)value2).trim());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
        switch (operation) {
            case 1: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("EQUAL(").append(doubleval).append(",").append(value2).append(")").toString());
                }
                return Double.compare(doubleval, doubleval2) == 0;
            }
            case 2: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("APPROX(").append(doubleval).append(",").append(value2).append(")").toString());
                }
                return Double.compare(doubleval, doubleval2) == 0;
            }
            case 3: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("GREATER(").append(doubleval).append(",").append(value2).append(")").toString());
                }
                return Double.compare(doubleval, doubleval2) >= 0;
            }
            case 4: {
                if (Debug.DEBUG_FILTER) {
                    Debug.println(new StringBuffer("LESS(").append(doubleval).append(",").append(value2).append(")").toString());
                }
                return Double.compare(doubleval, doubleval2) <= 0;
            }
        }
        return false;
    }

    private boolean compare_Comparable(int operation, Comparable<Object> value1, Object value2) {
        Constructor<?> constructor;
        if (operation == 6) {
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(value1).append(",").append(value2).append(")").toString());
            }
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
                case 1: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("EQUAL(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.compareTo(value2) == 0;
                }
                case 2: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("APPROX(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.compareTo(value2) == 0;
                }
                case 3: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("GREATER(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.compareTo(value2) >= 0;
                }
                case 4: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("LESS(").append(value1).append(",").append(value2).append(")").toString());
                    }
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
            if (Debug.DEBUG_FILTER) {
                Debug.println(new StringBuffer("SUBSTRING(").append(value1).append(",").append(value2).append(")").toString());
            }
            return false;
        }
        try {
            constructor = value1.getClass().getConstructor(constructorType);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            if (Debug.DEBUG_FILTER) {
                Debug.println("Type not supported");
            }
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
                case 1: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("EQUAL(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.equals(value2);
                }
                case 2: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("APPROX(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.equals(value2);
                }
                case 3: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("GREATER(").append(value1).append(",").append(value2).append(")").toString());
                    }
                    return value1.equals(value2);
                }
                case 4: {
                    if (Debug.DEBUG_FILTER) {
                        Debug.println(new StringBuffer("LESS(").append(value1).append(",").append(value2).append(")").toString());
                    }
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

    public String getRequiredObjectClass() {
        return this.getPrimaryKeyValue("objectClass");
    }

    public String getPrimaryKeyValue(String primaryKey) {
        switch (this.op) {
            case 1: {
                if (!this.attr.equalsIgnoreCase(primaryKey) || !(this.value instanceof String)) break;
                return (String)this.value;
            }
            case 7: {
                FilterImpl[] clauses;
                FilterImpl[] filterImplArray = clauses = (FilterImpl[])this.value;
                int n = clauses.length;
                int n2 = 0;
                while (n2 < n) {
                    String result;
                    FilterImpl clause = filterImplArray[n2];
                    if (clause.op == 1 && (result = clause.getPrimaryKeyValue(primaryKey)) != null) {
                        return result;
                    }
                    ++n2;
                }
                break;
            }
        }
        return null;
    }

    public String[] getAttributes() {
        ArrayList<String> results = new ArrayList<String>();
        this.getAttributesInternal(results);
        return results.toArray(new String[results.size()]);
    }

    private void getAttributesInternal(List<String> results) {
        if (this.value instanceof FilterImpl[]) {
            FilterImpl[] children;
            FilterImpl[] filterImplArray = children = (FilterImpl[])this.value;
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                FilterImpl child = filterImplArray[n2];
                child.getAttributesInternal(results);
                ++n2;
            }
            return;
        }
        if (this.value instanceof FilterImpl) {
            FilterImpl child = (FilterImpl)this.value;
            child.getAttributesInternal(results);
            return;
        }
        if (this.attr != null) {
            results.add(this.attr);
        }
    }

    private static class Parser {
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
            catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                throw new InvalidSyntaxException(Msg.FILTER_TERMINATED_ABRUBTLY, this.filterstring);
            }
            if (this.pos != this.filterChars.length) {
                throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_TRAILING_CHARACTERS, this.filterstring.substring(this.pos)), this.filterstring);
            }
            return filter;
        }

        private FilterImpl parse_filter() throws InvalidSyntaxException {
            this.skipWhiteSpace();
            if (this.filterChars[this.pos] != '(') {
                throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_MISSING_LEFTPAREN, this.filterstring.substring(this.pos)), this.filterstring);
            }
            ++this.pos;
            FilterImpl filter = this.parse_filtercomp();
            this.skipWhiteSpace();
            if (this.filterChars[this.pos] != ')') {
                throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_MISSING_RIGHTPAREN, this.filterstring.substring(this.pos)), this.filterstring);
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
            throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_INVALID_OPERATOR, this.filterstring.substring(this.pos)), this.filterstring);
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
                throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_MISSING_ATTR, this.filterstring.substring(this.pos)), this.filterstring);
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
                        throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_INVALID_VALUE, this.filterstring.substring(this.pos)), this.filterstring);
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
                throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_MISSING_VALUE, this.filterstring.substring(this.pos)), this.filterstring);
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
                        throw new InvalidSyntaxException(NLS.bind(Msg.FILTER_INVALID_VALUE, this.filterstring.substring(this.pos)), this.filterstring);
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

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ServiceReferenceDictionary
    extends Dictionary<String, Object> {
        private final ServiceReference<?> reference;

        ServiceReferenceDictionary(ServiceReference<?> reference) {
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
        public boolean isEmpty() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Enumeration<String> keys() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Enumeration<Object> elements() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object put(String key, Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object remove(Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SetAccessibleAction
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

