/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IActionDelegate2;

public abstract class ActionDelegate
implements IActionDelegate2 {
    public void run(IAction action) {
    }

    public void selectionChanged(IAction action, ISelection selection) {
    }

    public void init(IAction action) {
    }

    public void dispose() {
    }

    public void runWithEvent(IAction action, Event event) {
        this.run(action);
    }
}

