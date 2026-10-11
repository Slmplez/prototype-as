/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.part;

import org.eclipse.jface.viewers.ISelection;

public class ShowInContext {
    private Object input;
    private ISelection selection;

    public ShowInContext(Object input, ISelection selection) {
        this.setInput(input);
        this.setSelection(selection);
    }

    public Object getInput() {
        return this.input;
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public void setInput(Object input) {
        this.input = input;
    }

    public void setSelection(ISelection selection) {
        this.selection = selection;
    }
}

