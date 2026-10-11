/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import org.eclipse.emf.edit.provider.IItemLabelProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IItemPropertyDescriptor {
    public Object getPropertyValue(Object var1);

    public boolean isPropertySet(Object var1);

    public boolean canSetProperty(Object var1);

    public void resetPropertyValue(Object var1);

    public void setPropertyValue(Object var1, Object var2);

    public String getCategory(Object var1);

    public String getDescription(Object var1);

    public String getDisplayName(Object var1);

    public String[] getFilterFlags(Object var1);

    public Object getHelpContextIds(Object var1);

    public String getId(Object var1);

    public IItemLabelProvider getLabelProvider(Object var1);

    public boolean isCompatibleWith(Object var1, Object var2, IItemPropertyDescriptor var3);

    public Object getFeature(Object var1);

    public boolean isMany(Object var1);

    public Collection<?> getChoiceOfValues(Object var1);

    public boolean isMultiLine(Object var1);

    public boolean isSortChoices(Object var1);

    public static interface OverrideableCommandOwner {
        public void setCommandOwner(Object var1);

        public Object getCommandOwner();
    }
}

