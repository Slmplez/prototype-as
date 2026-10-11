/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.StringTokenizer;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.internal.databinding.BindingMessages;

public class StringToBooleanPrimitiveConverter
implements IConverter {
    private static final String[] trueValues;
    private static final String[] falseValues;
    static /* synthetic */ Class class$0;

    static {
        String delimiter = BindingMessages.getString("ValueDelimiter");
        String values = BindingMessages.getString("TrueStringValues");
        trueValues = StringToBooleanPrimitiveConverter.valuesToSortedArray(delimiter, values);
        values = BindingMessages.getString("FalseStringValues");
        falseValues = StringToBooleanPrimitiveConverter.valuesToSortedArray(delimiter, values);
    }

    private static String[] valuesToSortedArray(String delimiter, String values) {
        LinkedList<String> list = new LinkedList<String>();
        StringTokenizer tokenizer = new StringTokenizer(values, delimiter);
        while (tokenizer.hasMoreTokens()) {
            list.add(tokenizer.nextToken().toUpperCase());
        }
        Object[] array = list.toArray(new String[list.size()]);
        Arrays.sort(array);
        return array;
    }

    public Object convert(Object source) {
        String s = (String)source;
        if (Arrays.binarySearch(trueValues, s = s.toUpperCase()) > -1) {
            return Boolean.TRUE;
        }
        if (Arrays.binarySearch(falseValues, s) > -1) {
            return Boolean.FALSE;
        }
        throw new IllegalArgumentException(String.valueOf(s) + " is not a legal boolean value");
    }

    public Object getFromType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    public Object getToType() {
        return Boolean.TYPE;
    }
}

