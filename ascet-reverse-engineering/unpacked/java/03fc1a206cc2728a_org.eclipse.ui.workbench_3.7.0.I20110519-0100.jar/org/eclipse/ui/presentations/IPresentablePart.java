/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.presentations;

import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.ISizeProvider;
import org.eclipse.ui.presentations.IPartMenu;

public interface IPresentablePart
extends ISizeProvider {
    public static final int PROP_DIRTY = 257;
    public static final int PROP_INPUT = 258;
    public static final int PROP_TITLE = 1;
    public static final int PROP_CONTENT_DESCRIPTION = 261;
    public static final int PROP_PART_NAME = 260;
    public static final int PROP_BUSY = 146;
    public static final int PROP_TOOLBAR = 147;
    public static final int PROP_HIGHLIGHT_IF_BACK = 148;
    public static final int PROP_PANE_MENU = 770;
    public static final int PROP_PREFERRED_SIZE = 771;

    public void setBounds(Rectangle var1);

    public void setVisible(boolean var1);

    public void setFocus();

    public void addPropertyListener(IPropertyListener var1);

    public void removePropertyListener(IPropertyListener var1);

    public String getName();

    public String getTitle();

    public String getTitleStatus();

    public Image getTitleImage();

    public String getTitleToolTip();

    public boolean isDirty();

    public boolean isBusy();

    public boolean isCloseable();

    public Control getToolBar();

    public IPartMenu getMenu();

    public Control getControl();

    public String getPartProperty(String var1);

    public void addPartPropertyListener(IPropertyChangeListener var1);

    public void removePartPropertyListener(IPropertyChangeListener var1);
}

