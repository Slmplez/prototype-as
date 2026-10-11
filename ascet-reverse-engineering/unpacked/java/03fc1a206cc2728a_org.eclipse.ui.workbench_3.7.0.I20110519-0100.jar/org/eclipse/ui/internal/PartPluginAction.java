/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.PluginAction;

public class PartPluginAction
extends PluginAction {
    public PartPluginAction(IConfigurationElement actionElement, String id, int style) {
        super(actionElement, id, style);
    }

    protected void registerSelectionListener(IWorkbenchPart aPart) {
        ISelectionProvider selectionProvider = aPart.getSite().getSelectionProvider();
        if (selectionProvider != null) {
            selectionProvider.addSelectionChangedListener((ISelectionChangedListener)this);
            this.selectionChanged(selectionProvider.getSelection());
        }
    }

    protected void unregisterSelectionListener(IWorkbenchPart aPart) {
        ISelectionProvider selectionProvider = aPart.getSite().getSelectionProvider();
        if (selectionProvider != null) {
            selectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this);
        }
    }
}

