/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.viewers.ISelection;

public class ActionContext {
    private ISelection selection;
    private Object input;

    public ActionContext(ISelection selection) {
        this.setSelection(selection);
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public void setSelection(ISelection selection) {
        this.selection = selection;
    }

    public Object getInput() {
        return this.input;
    }

    public void setInput(Object input) {
        this.input = input;
    }
}

