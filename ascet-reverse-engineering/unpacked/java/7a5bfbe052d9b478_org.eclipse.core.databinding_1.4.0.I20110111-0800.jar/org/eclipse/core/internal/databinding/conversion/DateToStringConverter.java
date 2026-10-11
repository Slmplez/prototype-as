/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import java.util.Date;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.internal.databinding.conversion.DateConversionSupport;

public class DateToStringConverter
extends DateConversionSupport
implements IConverter {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object convert(Object source) {
        if (source != null) {
            return this.format((Date)source);
        }
        return "";
    }

    public Object getFromType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.util.Date");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
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

