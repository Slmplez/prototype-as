/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.INavigationLocation;
import org.eclipse.ui.IWorkbenchPage;

public abstract class NavigationLocation
implements INavigationLocation {
    private IWorkbenchPage page;
    private IEditorInput input;

    protected NavigationLocation(IEditorPart editorPart) {
        this.page = editorPart.getSite().getPage();
        this.input = editorPart.getEditorInput();
    }

    protected IEditorPart getEditorPart() {
        if (this.input == null) {
            return null;
        }
        return this.page.findEditor(this.input);
    }

    public Object getInput() {
        return this.input;
    }

    public String getText() {
        IEditorPart part = this.getEditorPart();
        if (part == null) {
            return new String();
        }
        return part.getTitle();
    }

    public void setInput(Object input) {
        this.input = (IEditorInput)input;
    }

    public void dispose() {
        this.releaseState();
    }

    public void releaseState() {
        this.input = null;
    }
}

