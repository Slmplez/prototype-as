/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.internal.databinding.conversion.StringToBooleanPrimitiveConverter;

public class StringToBooleanConverter
extends StringToBooleanPrimitiveConverter {
    static /* synthetic */ Class class$0;

    public Object convert(Object source) {
        String sourceString = (String)source;
        if ("".equals(sourceString.trim())) {
            return null;
        }
        return super.convert(source);
    }

    public Object getToType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

