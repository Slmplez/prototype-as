/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchPartSite;

public interface IViewSite
extends IWorkbenchPartSite {
    public IActionBars getActionBars();

    public String getSecondaryId();
}

