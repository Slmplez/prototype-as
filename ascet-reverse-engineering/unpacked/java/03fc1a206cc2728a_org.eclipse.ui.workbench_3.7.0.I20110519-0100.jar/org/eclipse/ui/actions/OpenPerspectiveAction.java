/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.PerspectiveMenu;

public final class OpenPerspectiveAction
extends Action
implements IPluginContribution {
    private final PerspectiveMenu callback;
    private final IPerspectiveDescriptor descriptor;

    public OpenPerspectiveAction(IWorkbenchWindow window, IPerspectiveDescriptor descriptor, PerspectiveMenu callback) {
        super("");
        this.descriptor = descriptor;
        this.callback = callback;
        String label = descriptor.getLabel();
        this.setText(label);
        this.setToolTipText(label);
        this.setImageDescriptor(descriptor.getImageDescriptor());
        window.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.open_perspective_action_context");
    }

    public final void runWithEvent(Event event) {
        this.callback.run(this.descriptor, new SelectionEvent(event));
    }

    public String getLocalId() {
        return this.descriptor.getId();
    }

    public String getPluginId() {
        return this.descriptor instanceof IPluginContribution ? ((IPluginContribution)((Object)this.descriptor)).getPluginId() : null;
    }
}

