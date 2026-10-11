/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;

public class SelectionChangedEvent
extends EventObject {
    private static final long serialVersionUID = 3835149545519723574L;
    protected ISelection selection;

    public SelectionChangedEvent(ISelectionProvider source, ISelection selection) {
        super(source);
        Assert.isNotNull((Object)selection);
        this.selection = selection;
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public ISelectionProvider getSelectionProvider() {
        return (ISelectionProvider)this.getSource();
    }
}

