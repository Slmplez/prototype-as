/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.Properties
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.core.databinding.property.value.IValueProperty
 */
package org.eclipse.core.databinding;

import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.property.Properties;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.BindingModelProperty;
import org.eclipse.core.internal.databinding.BindingTargetProperty;
import org.eclipse.core.internal.databinding.ConverterValueProperty;
import org.eclipse.core.internal.databinding.DataBindingContextBindingsProperty;
import org.eclipse.core.internal.databinding.DataBindingContextValidationStatusProvidersProperty;
import org.eclipse.core.internal.databinding.ValidationStatusProviderModelsProperty;
import org.eclipse.core.internal.databinding.ValidationStatusProviderTargetsProperty;
import org.eclipse.core.internal.databinding.ValidationStatusProviderValidationStatusProperty;

public class BindingProperties {
    static /* synthetic */ Class class$0;

    public static IListProperty bindings() {
        return new DataBindingContextBindingsProperty();
    }

    public static IValueProperty model() {
        return new BindingModelProperty();
    }

    public static IListProperty models() {
        return new ValidationStatusProviderModelsProperty();
    }

    public static IValueProperty target() {
        return new BindingTargetProperty();
    }

    public static IListProperty targets() {
        return new ValidationStatusProviderTargetsProperty();
    }

    public static IValueProperty validationStatus() {
        ValidationStatusProviderValidationStatusProperty validationStatusProviderValidationStatusProperty = new ValidationStatusProviderValidationStatusProperty();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IStatus");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return validationStatusProviderValidationStatusProperty.value(Properties.observableValue((Object)clazz));
    }

    public static IListProperty validationStatusProviders() {
        return new DataBindingContextValidationStatusProvidersProperty();
    }

    public static IValueProperty convertedValue(IConverter converter) {
        return new ConverterValueProperty(converter);
    }
}

