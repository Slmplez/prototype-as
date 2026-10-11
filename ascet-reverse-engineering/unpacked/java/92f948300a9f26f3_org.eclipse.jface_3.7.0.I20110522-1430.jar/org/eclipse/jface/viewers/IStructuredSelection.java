/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.viewers.ISelection;

public interface IStructuredSelection
extends ISelection {
    public Object getFirstElement();

    public Iterator iterator();

    public int size();

    public Object[] toArray();

    public List toList();
}

