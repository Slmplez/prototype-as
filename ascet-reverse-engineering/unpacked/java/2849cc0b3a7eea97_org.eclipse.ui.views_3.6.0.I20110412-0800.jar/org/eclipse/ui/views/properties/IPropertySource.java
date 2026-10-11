/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.views.properties;

import org.eclipse.ui.views.properties.IPropertyDescriptor;

public interface IPropertySource {
    public Object getEditableValue();

    public IPropertyDescriptor[] getPropertyDescriptors();

    public Object getPropertyValue(Object var1);

    public boolean isPropertySet(Object var1);

    public void resetPropertyValue(Object var1);

    public void setPropertyValue(Object var1, Object var2);
}

