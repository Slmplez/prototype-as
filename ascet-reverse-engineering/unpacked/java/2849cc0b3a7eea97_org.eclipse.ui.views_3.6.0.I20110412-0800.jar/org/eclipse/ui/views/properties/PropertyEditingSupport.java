/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ColumnViewer
 *  org.eclipse.jface.viewers.EditingSupport
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.IPropertyDescriptor;
import org.eclipse.ui.views.properties.IPropertySource;
import org.eclipse.ui.views.properties.IPropertySourceProvider;

public class PropertyEditingSupport
extends EditingSupport {
    protected IPropertySourceProvider propertySourceProvider;
    protected Object propertyID;

    public PropertyEditingSupport(ColumnViewer viewer, IPropertySourceProvider propertySourceProvider, Object propertyID) {
        super(viewer);
        this.propertySourceProvider = propertySourceProvider;
        this.propertyID = propertyID;
    }

    protected boolean canEdit(Object object) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        IPropertyDescriptor[] propertyDescriptors = propertySource.getPropertyDescriptors();
        int i = 0;
        while (i < propertyDescriptors.length) {
            IPropertyDescriptor propertyDescriptor = propertyDescriptors[i];
            if (this.propertyID.equals(propertyDescriptor.getId())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected CellEditor getCellEditor(Object object) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        IPropertyDescriptor[] propertyDescriptors = propertySource.getPropertyDescriptors();
        int i = 0;
        while (i < propertyDescriptors.length) {
            IPropertyDescriptor propertyDescriptor = propertyDescriptors[i];
            if (this.propertyID.equals(propertyDescriptor.getId())) {
                return propertyDescriptor.createPropertyEditor((Composite)this.getViewer().getControl());
            }
            ++i;
        }
        return null;
    }

    protected Object getValue(Object object) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        Object value = propertySource.getPropertyValue(this.propertyID);
        IPropertySource valuePropertySource = this.propertySourceProvider.getPropertySource(value);
        if (valuePropertySource != null) {
            value = valuePropertySource.getEditableValue();
        }
        return value;
    }

    protected void setValue(Object object, Object value) {
        IPropertySource propertySource = this.propertySourceProvider.getPropertySource(object);
        propertySource.setPropertyValue(this.propertyID, value);
    }
}

