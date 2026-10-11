/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.viewers.StructuredViewer;

public abstract class AbstractProgressViewer
extends StructuredViewer {
    public abstract void add(Object[] var1);

    public abstract void remove(Object[] var1);
}

