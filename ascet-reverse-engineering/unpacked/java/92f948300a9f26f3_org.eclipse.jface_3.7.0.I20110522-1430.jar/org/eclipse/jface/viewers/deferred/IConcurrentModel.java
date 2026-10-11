/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers.deferred;

import org.eclipse.jface.viewers.deferred.IConcurrentModelListener;

public interface IConcurrentModel {
    public void requestUpdate(IConcurrentModelListener var1);

    public void addListener(IConcurrentModelListener var1);

    public void removeListener(IConcurrentModelListener var1);
}

