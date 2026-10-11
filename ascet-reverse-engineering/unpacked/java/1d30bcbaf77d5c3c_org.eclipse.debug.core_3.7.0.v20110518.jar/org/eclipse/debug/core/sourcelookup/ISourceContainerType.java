/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.sourcelookup;

import org.eclipse.debug.core.sourcelookup.ISourceContainerTypeDelegate;

public interface ISourceContainerType
extends ISourceContainerTypeDelegate {
    public String getName();

    public String getId();

    public String getDescription();
}

