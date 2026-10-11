/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.ParameterValueConversionException;

public abstract class AbstractParameterValueConverter {
    public abstract Object convertToObject(String var1) throws ParameterValueConversionException;

    public abstract String convertToString(Object var1) throws ParameterValueConversionException;
}

