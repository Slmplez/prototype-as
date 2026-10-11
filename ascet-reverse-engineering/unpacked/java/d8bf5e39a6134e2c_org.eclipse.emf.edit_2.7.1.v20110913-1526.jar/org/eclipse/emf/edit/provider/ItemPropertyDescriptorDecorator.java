/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ItemPropertyDescriptorDecorator
implements IItemPropertyDescriptor {
    protected Object object;
    protected IItemPropertyDescriptor itemPropertyDescriptor;

    public ItemPropertyDescriptorDecorator(Object object, IItemPropertyDescriptor itemPropertyDescriptor) {
        this.object = object;
        this.itemPropertyDescriptor = itemPropertyDescriptor;
    }

    @Override
    public String getCategory(Object thisObject) {
        return this.itemPropertyDescriptor.getCategory(this.object);
    }

    @Override
    public String getDescription(Object thisObject) {
        return this.itemPropertyDescriptor.getDescription(this.object);
    }

    @Override
    public String getDisplayName(Object thisObject) {
        return this.itemPropertyDescriptor.getDisplayName(this.object);
    }

    @Override
    public String[] getFilterFlags(Object thisObject) {
        return this.itemPropertyDescriptor.getFilterFlags(this.object);
    }

    @Override
    public String getId(Object thisObject) {
        return this.itemPropertyDescriptor.getId(this.object);
    }

    @Override
    public Object getHelpContextIds(Object thisObject) {
        return this.itemPropertyDescriptor.getHelpContextIds(this.object);
    }

    @Override
    public IItemLabelProvider getLabelProvider(Object thisObject) {
        return this.itemPropertyDescriptor.getLabelProvider(this.object);
    }

    @Override
    public boolean isCompatibleWith(Object object, Object anotherObject, IItemPropertyDescriptor anotherItemPropertyDescriptor) {
        return this.itemPropertyDescriptor.isCompatibleWith(object, anotherObject, anotherItemPropertyDescriptor);
    }

    @Override
    public Object getPropertyValue(Object thisObject) {
        return this.itemPropertyDescriptor.getPropertyValue(this.object);
    }

    @Override
    public boolean isPropertySet(Object thisObject) {
        return this.itemPropertyDescriptor.isPropertySet(this.object);
    }

    @Override
    public boolean canSetProperty(Object thisObject) {
        return this.itemPropertyDescriptor.canSetProperty(this.object);
    }

    @Override
    public void resetPropertyValue(Object thisObject) {
        this.itemPropertyDescriptor.resetPropertyValue(this.object);
    }

    @Override
    public void setPropertyValue(Object thisObject, Object value) {
        this.itemPropertyDescriptor.setPropertyValue(this.object, value);
    }

    @Override
    public Object getFeature(Object thisObject) {
        return this.itemPropertyDescriptor.getFeature(this.object);
    }

    @Override
    public Collection<?> getChoiceOfValues(Object thisObject) {
        return this.itemPropertyDescriptor.getChoiceOfValues(this.object);
    }

    @Override
    public boolean isMany(Object thisObject) {
        return this.itemPropertyDescriptor.isMany(thisObject);
    }

    @Override
    public boolean isMultiLine(Object object) {
        return this.itemPropertyDescriptor.isMultiLine(object);
    }

    @Override
    public boolean isSortChoices(Object object) {
        return this.itemPropertyDescriptor.isSortChoices(object);
    }
}

