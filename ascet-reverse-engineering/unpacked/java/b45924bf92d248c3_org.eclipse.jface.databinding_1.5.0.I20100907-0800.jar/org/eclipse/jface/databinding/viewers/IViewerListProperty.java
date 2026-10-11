/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.jface.databinding.viewers.IViewerObservableList;
import org.eclipse.jface.viewers.Viewer;

public interface IViewerListProperty
extends IListProperty {
    public IViewerObservableList observe(Viewer var1);
}

