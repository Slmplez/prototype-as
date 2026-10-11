/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 */
package org.eclipse.ui.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AbstractTreeViewer;

public class ExpandAllHandler
extends AbstractHandler {
    public static final String COMMAND_ID = "org.eclipse.ui.navigate.expandAll";
    private AbstractTreeViewer treeViewer;

    public ExpandAllHandler(AbstractTreeViewer viewer) {
        Assert.isNotNull((Object)viewer);
        this.treeViewer = viewer;
    }

    public Object execute(ExecutionEvent event) {
        this.treeViewer.expandAll();
        return null;
    }

    public void dispose() {
        this.treeViewer = null;
    }
}

