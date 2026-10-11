/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.jface.viewers.Viewer;

public interface IViewerObservable
extends IObservable {
    public Viewer getViewer();
}

