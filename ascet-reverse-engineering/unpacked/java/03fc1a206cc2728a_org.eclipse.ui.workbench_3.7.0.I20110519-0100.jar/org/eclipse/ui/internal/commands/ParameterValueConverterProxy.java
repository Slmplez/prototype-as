/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractParameterValueConverter
 *  org.eclipse.core.commands.ParameterValueConversionException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.core.commands.AbstractParameterValueConverter;
import org.eclipse.core.commands.ParameterValueConversionException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;

public final class ParameterValueConverterProxy
extends AbstractParameterValueConverter {
    private final IConfigurationElement converterConfigurationElement;
    private AbstractParameterValueConverter parameterValueConverter;

    public ParameterValueConverterProxy(IConfigurationElement converterConfigurationElement) {
        if (converterConfigurationElement == null) {
            throw new NullPointerException("converterConfigurationElement must not be null");
        }
        this.converterConfigurationElement = converterConfigurationElement;
    }

    public final Object convertToObject(String parameterValue) throws ParameterValueConversionException {
        return this.getConverter().convertToObject(parameterValue);
    }

    public final String convertToString(Object parameterValue) throws ParameterValueConversionException {
        return this.getConverter().convertToString(parameterValue);
    }

    private AbstractParameterValueConverter getConverter() throws ParameterValueConversionException {
        if (this.parameterValueConverter == null) {
            try {
                this.parameterValueConverter = (AbstractParameterValueConverter)this.converterConfigurationElement.createExecutableExtension("converter");
            }
            catch (CoreException e) {
                throw new ParameterValueConversionException("Problem creating parameter value converter", (Throwable)e);
            }
            catch (ClassCastException e) {
                throw new ParameterValueConversionException("Parameter value converter was not a subclass of AbstractParameterValueConverter", (Throwable)e);
            }
        }
        return this.parameterValueConverter;
    }
}

