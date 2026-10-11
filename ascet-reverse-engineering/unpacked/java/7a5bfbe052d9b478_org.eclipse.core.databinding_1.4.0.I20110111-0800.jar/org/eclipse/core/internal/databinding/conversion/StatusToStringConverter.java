/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.databinding.conversion.Converter;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.runtime.IStatus;

public class StatusToStringConverter
extends Converter
implements IConverter {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public StatusToStringConverter() {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.runtime.IStatus");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz2, clazz);
    }

    public Object convert(Object fromObject) {
        if (fromObject == null) {
            throw new IllegalArgumentException("Parameter 'fromObject' was null.");
        }
        IStatus status = (IStatus)fromObject;
        return status.getMessage();
    }
}

