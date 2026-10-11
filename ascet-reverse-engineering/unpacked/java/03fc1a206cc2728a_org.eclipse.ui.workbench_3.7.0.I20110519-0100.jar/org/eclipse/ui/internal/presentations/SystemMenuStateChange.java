/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuStateChange
extends Action
implements ISelfUpdatingAction {
    private IStackPresentationSite site;
    private int state;

    public SystemMenuStateChange(IStackPresentationSite site, String name, int state) {
        this.site = site;
        this.state = state;
        this.setText(name);
        this.update();
    }

    public void dispose() {
        this.site = null;
    }

    public void run() {
        this.site.setState(this.state);
    }

    public void update() {
        this.setEnabled(this.site.getState() != this.state && this.site.supportsState(this.state));
    }

    public boolean shouldBeVisible() {
        return this.site.supportsState(this.state);
    }
}

