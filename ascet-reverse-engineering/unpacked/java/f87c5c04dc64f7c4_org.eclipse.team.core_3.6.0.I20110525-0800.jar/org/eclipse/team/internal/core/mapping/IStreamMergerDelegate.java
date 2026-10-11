/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 */
package org.eclipse.team.internal.core.mapping;

import org.eclipse.core.resources.IStorage;
import org.eclipse.team.core.mapping.IStorageMerger;

public interface IStreamMergerDelegate {
    public IStorageMerger findMerger(IStorage var1);
}

