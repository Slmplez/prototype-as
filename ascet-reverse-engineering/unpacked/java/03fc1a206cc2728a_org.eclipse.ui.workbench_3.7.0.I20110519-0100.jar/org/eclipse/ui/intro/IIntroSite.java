/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.intro;

import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IWorkbenchSite;

public interface IIntroSite
extends IWorkbenchSite {
    public String getId();

    public String getPluginId();

    public IKeyBindingService getKeyBindingService();

    public IActionBars getActionBars();
}

