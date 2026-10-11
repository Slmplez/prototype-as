/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IEditorActionDelegate;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.PartPluginAction;

public final class EditorPluginAction
extends PartPluginAction {
    private IEditorPart currentEditor;

    public EditorPluginAction(IConfigurationElement actionElement, IEditorPart part, String id, int style) {
        super(actionElement, id, style);
        if (part != null) {
            this.editorChanged(part);
        }
    }

    protected IActionDelegate validateDelegate(Object obj) throws WorkbenchException {
        if (obj instanceof IEditorActionDelegate) {
            return (IEditorActionDelegate)obj;
        }
        throw new WorkbenchException("Action must implement IEditorActionDelegate");
    }

    protected void initDelegate() {
        super.initDelegate();
        ((IEditorActionDelegate)this.getDelegate()).setActiveEditor((IAction)this, this.currentEditor);
    }

    public void editorChanged(IEditorPart part) {
        if (this.currentEditor != null) {
            this.unregisterSelectionListener(this.currentEditor);
        }
        this.currentEditor = part;
        if (this.getDelegate() == null && this.isOkToCreateDelegate()) {
            this.createDelegate();
        }
        if (this.getDelegate() != null) {
            ((IEditorActionDelegate)this.getDelegate()).setActiveEditor((IAction)this, part);
        }
        if (part != null) {
            this.registerSelectionListener(part);
        }
    }

    public void dispose() {
        if (this.currentEditor != null) {
            this.unregisterSelectionListener(this.currentEditor);
            this.currentEditor = null;
        }
        super.dispose();
    }
}

