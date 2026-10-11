/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.IAction;

public interface ISelfUpdatingAction
extends IAction {
    public void update();

    public boolean shouldBeVisible();
}

