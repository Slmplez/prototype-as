/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.TreePath;

public interface ITreeSelection
extends IStructuredSelection {
    public TreePath[] getPaths();

    public TreePath[] getPathsFor(Object var1);
}

