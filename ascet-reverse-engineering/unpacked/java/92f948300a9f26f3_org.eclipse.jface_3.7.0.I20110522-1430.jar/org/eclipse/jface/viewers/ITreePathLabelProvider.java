/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerLabel;

public interface ITreePathLabelProvider
extends IBaseLabelProvider {
    public void updateLabel(ViewerLabel var1, TreePath var2);
}

