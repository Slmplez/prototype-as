/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.themes;

import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.themes.ITheme;

public interface IThemeManager {
    public static final String CHANGE_CURRENT_THEME = "CHANGE_CURRENT_THEME";
    public static final String DEFAULT_THEME = "org.eclipse.ui.defaultTheme";

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public ITheme getCurrentTheme();

    public ITheme getTheme(String var1);

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void setCurrentTheme(String var1);
}

