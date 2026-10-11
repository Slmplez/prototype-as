/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ToolBar;

public interface IToolBarManager2
extends IToolBarManager {
    public static final String PROP_LAYOUT = "PROP_LAYOUT";

    public ToolBar createControl(Composite var1);

    public Control createControl2(Composite var1);

    public ToolBar getControl();

    public Control getControl2();

    public void dispose();

    public int getItemCount();

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void setOverrides(IContributionManagerOverrides var1);
}

