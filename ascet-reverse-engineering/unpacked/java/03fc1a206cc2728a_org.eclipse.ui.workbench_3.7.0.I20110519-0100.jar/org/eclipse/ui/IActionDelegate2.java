/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IActionDelegate;

public interface IActionDelegate2
extends IActionDelegate {
    public void init(IAction var1);

    public void dispose();

    public void runWithEvent(IAction var1, Event var2);
}

