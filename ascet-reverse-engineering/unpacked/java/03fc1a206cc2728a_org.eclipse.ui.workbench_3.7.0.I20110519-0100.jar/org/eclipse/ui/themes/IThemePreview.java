/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.themes;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.themes.ITheme;

public interface IThemePreview {
    public void createControl(Composite var1, ITheme var2);

    public void dispose();
}

