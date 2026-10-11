/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.themes;

import java.util.Set;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.util.IPropertyChangeListener;

public interface ITheme {
    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public void dispose();

    public boolean getBoolean(String var1);

    public ColorRegistry getColorRegistry();

    public FontRegistry getFontRegistry();

    public String getId();

    public int getInt(String var1);

    public String getLabel();

    public String getString(String var1);

    public Set keySet();

    public void removePropertyChangeListener(IPropertyChangeListener var1);
}

