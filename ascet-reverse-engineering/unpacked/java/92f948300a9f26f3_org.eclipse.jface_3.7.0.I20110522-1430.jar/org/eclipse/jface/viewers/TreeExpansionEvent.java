/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;
import org.eclipse.jface.viewers.AbstractTreeViewer;

public class TreeExpansionEvent
extends EventObject {
    private static final long serialVersionUID = 3618414930227835185L;
    private Object element;

    public TreeExpansionEvent(AbstractTreeViewer source, Object element) {
        super(source);
        this.element = element;
    }

    public Object getElement() {
        return this.element;
    }

    public AbstractTreeViewer getTreeViewer() {
        return (AbstractTreeViewer)this.source;
    }
}

