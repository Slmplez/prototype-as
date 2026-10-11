/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ICellEditorValidator
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ICellEditorValidator;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.views.properties.IPropertyDescriptor;

public class PropertyDescriptor
implements IPropertyDescriptor {
    private Object id;
    private String display;
    private String category = null;
    private String description = null;
    private Object helpIds;
    private String[] filterFlags;
    private ILabelProvider labelProvider = null;
    private ICellEditorValidator validator;
    private boolean incompatible = false;

    public PropertyDescriptor(Object id, String displayName) {
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)displayName);
        this.id = id;
        this.display = displayName;
    }

    public CellEditor createPropertyEditor(Composite parent) {
        return null;
    }

    protected boolean getAlwaysIncompatible() {
        return this.incompatible;
    }

    public String getCategory() {
        return this.category;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDisplayName() {
        return this.display;
    }

    public String[] getFilterFlags() {
        return this.filterFlags;
    }

    public Object getHelpContextIds() {
        return this.helpIds;
    }

    public Object getId() {
        return this.id;
    }

    public ILabelProvider getLabelProvider() {
        if (this.labelProvider != null) {
            return this.labelProvider;
        }
        return new LabelProvider();
    }

    protected ICellEditorValidator getValidator() {
        return this.validator;
    }

    public boolean isLabelProviderSet() {
        return this.labelProvider != null;
    }

    public boolean isCompatibleWith(IPropertyDescriptor anotherProperty) {
        Object id2;
        if (this.getAlwaysIncompatible()) {
            return false;
        }
        Object id1 = this.getId();
        if (!id1.equals(id2 = anotherProperty.getId())) {
            return false;
        }
        return !(this.getCategory() == null ? anotherProperty.getCategory() != null : !this.getCategory().equals(anotherProperty.getCategory()));
    }

    public void setAlwaysIncompatible(boolean flag) {
        this.incompatible = flag;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setFilterFlags(String[] value) {
        this.filterFlags = value;
    }

    public void setHelpContextIds(Object contextIds) {
        this.helpIds = contextIds;
    }

    public void setLabelProvider(ILabelProvider provider) {
        this.labelProvider = provider;
    }

    public void setValidator(ICellEditorValidator validator) {
        this.validator = validator;
    }
}

