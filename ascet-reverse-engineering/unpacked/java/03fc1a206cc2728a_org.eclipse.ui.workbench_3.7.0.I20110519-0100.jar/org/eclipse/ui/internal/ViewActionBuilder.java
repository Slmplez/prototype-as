/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.PluginActionBuilder;

public class ViewActionBuilder
extends PluginActionBuilder {
    public static final String TAG_CONTRIBUTION_TYPE = "viewContribution";
    private IViewPart targetPart;

    private void contributeToPart(IViewPart part) {
        IActionBars bars = part.getViewSite().getActionBars();
        this.contribute(bars.getMenuManager(), bars.getToolBarManager(), true);
    }

    protected ActionDescriptor createActionDescriptor(IConfigurationElement element) {
        return new ActionDescriptor(element, 2, this.targetPart);
    }

    public ActionDescriptor[] getExtendedActions() {
        if (this.cache == null) {
            return new ActionDescriptor[0];
        }
        ArrayList results = new ArrayList();
        int i = 0;
        while (i < this.cache.size()) {
            PluginActionBuilder.BasicContribution bc = (PluginActionBuilder.BasicContribution)this.cache.get(i);
            if (bc.actions != null) {
                results.addAll(bc.actions);
            }
            ++i;
        }
        return results.toArray(new ActionDescriptor[results.size()]);
    }

    public void readActionExtensions(IViewPart viewPart) {
        this.targetPart = viewPart;
        this.readContributions(viewPart.getSite().getId(), TAG_CONTRIBUTION_TYPE, "viewActions");
        this.contributeToPart(this.targetPart);
    }

    public void dispose() {
        if (this.cache != null) {
            int i = 0;
            while (i < this.cache.size()) {
                ((PluginActionBuilder.BasicContribution)this.cache.get(i)).disposeActions();
                ++i;
            }
        }
    }
}

