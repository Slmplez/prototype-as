/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import java.util.Set;

public interface IPropertyMap {
    public Set keySet();

    public Object getValue(String var1, Class var2);

    public boolean isCommonProperty(String var1);

    public boolean propertyExists(String var1);

    public void setValue(String var1, Object var2);
}

