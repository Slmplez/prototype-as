/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IViewActionDelegate;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.PartPluginAction;

public final class ViewPluginAction
extends PartPluginAction {
    private IViewPart viewPart;

    public ViewPluginAction(IConfigurationElement actionElement, IViewPart viewPart, String id, int style) {
        super(actionElement, id, style);
        this.viewPart = viewPart;
        this.registerSelectionListener(viewPart);
    }

    protected IActionDelegate validateDelegate(Object obj) throws WorkbenchException {
        if (obj instanceof IViewActionDelegate) {
            return (IViewActionDelegate)obj;
        }
        throw new WorkbenchException("Action must implement IViewActionDelegate");
    }

    protected void initDelegate() {
        super.initDelegate();
        ((IViewActionDelegate)this.getDelegate()).init(this.viewPart);
    }

    public boolean isOkToCreateDelegate() {
        return super.isOkToCreateDelegate() && this.viewPart != null;
    }

    public void dispose() {
        this.unregisterSelectionListener(this.viewPart);
        super.dispose();
    }
}

