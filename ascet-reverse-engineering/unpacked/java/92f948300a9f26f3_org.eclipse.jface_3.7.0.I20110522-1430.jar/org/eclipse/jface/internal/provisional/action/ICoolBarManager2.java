/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public interface ICoolBarManager2
extends ICoolBarManager {
    public Control createControl2(Composite var1);

    public Control getControl2();

    public void refresh();

    public void dispose();

    public void resetItemOrder();

    public void setItems(IContributionItem[] var1);

    public void setOverrides(IContributionManagerOverrides var1);
}

