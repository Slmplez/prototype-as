/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;

public interface ISynchronizerChangeListener {
    public void syncStateChanged(IResource[] var1);
}

