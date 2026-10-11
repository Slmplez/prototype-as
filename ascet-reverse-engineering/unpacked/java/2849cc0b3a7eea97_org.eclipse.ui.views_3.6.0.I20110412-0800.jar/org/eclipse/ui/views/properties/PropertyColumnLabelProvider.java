/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ColumnLabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.views.properties.IPropertyDescriptor;
import org.eclipse.ui.views.properties.IPropertySource;
import org.eclipse.ui.views.properties.IPropertySourceProvider;

public class PropertyColumnLabelProvider
extends ColumnLabelProvider {
    protected IPropertySourceProvider propertySourceProvider;
    protected Object propertyID;

    public PropertyColumnLabelProvider(IPropertySourceProvider propertySourceProvider, Object propertyID) {
        this.propertySourceProvider = propertySourceProvider;
        this.propertyID = propertyID;
    }

    public String getText(Object object) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        IPropertyDescriptor[] propertyDescriptors = propertySource.getPropertyDescriptors();
        int i = 0;
        while (i < propertyDescriptors.length) {
            IPropertyDescriptor propertyDescriptor = propertyDescriptors[i];
            if (this.propertyID.equals(propertyDescriptor.getId())) {
                return propertyDescriptor.getLabelProvider().getText(propertySource.getPropertyValue(this.propertyID));
            }
            ++i;
        }
        return "";
    }

    public Image getImage(Object object) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        IPropertyDescriptor[] propertyDescriptors = propertySource.getPropertyDescriptors();
        int i = 0;
        while (i < propertyDescriptors.length) {
            IPropertyDescriptor propertyDescriptor = propertyDescriptors[i];
            if (this.propertyID.equals(propertyDescriptor.getId())) {
                return propertyDescriptor.getLabelProvider().getImage(propertySource.getPropertyValue(this.propertyID));
            }
            ++i;
        }
        return null;
    }
}

