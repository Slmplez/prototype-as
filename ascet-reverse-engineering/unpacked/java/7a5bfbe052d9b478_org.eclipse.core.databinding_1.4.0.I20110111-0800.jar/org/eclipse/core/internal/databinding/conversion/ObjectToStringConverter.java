/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.databinding.conversion.IConverter;

public class ObjectToStringConverter
implements IConverter {
    private final Class fromClass;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ObjectToStringConverter() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this(clazz);
    }

    public ObjectToStringConverter(Class fromClass) {
        this.fromClass = fromClass;
    }

    public Object convert(Object source) {
        if (source == null) {
            return "";
        }
        return source.toString();
    }

    public Object getFromType() {
        return this.fromClass;
    }

    public Object getToType() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

