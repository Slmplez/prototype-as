/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IContributionManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;

public interface IContributionItem {
    public void dispose();

    public void fill(Composite var1);

    public void fill(Menu var1, int var2);

    public void fill(ToolBar var1, int var2);

    public void fill(CoolBar var1, int var2);

    public String getId();

    public boolean isEnabled();

    public boolean isDirty();

    public boolean isDynamic();

    public boolean isGroupMarker();

    public boolean isSeparator();

    public boolean isVisible();

    public void saveWidgetState();

    public void setParent(IContributionManager var1);

    public void setVisible(boolean var1);

    public void update();

    public void update(String var1);
}

