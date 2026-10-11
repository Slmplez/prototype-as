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
import org.eclipse.jface.viewers.Viewer;

public class OpenEvent
extends EventObject {
    private static final long serialVersionUID = 3761972652973176117L;
    protected ISelection selection;

    public OpenEvent(Viewer source, ISelection selection) {
        super(source);
        Assert.isNotNull((Object)selection);
        this.selection = selection;
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public Viewer getViewer() {
        return (Viewer)this.getSource();
    }
}

