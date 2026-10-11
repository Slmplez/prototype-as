/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.themes;

import java.util.Map;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IThemeElementDefinition;

public interface IThemeDescriptor
extends IThemeElementDefinition {
    public static final String TAB_BORDER_STYLE = "TAB_BORDER_STYLE";

    public ColorDefinition[] getColors();

    public FontDefinition[] getFonts();

    public Map getData();
}

