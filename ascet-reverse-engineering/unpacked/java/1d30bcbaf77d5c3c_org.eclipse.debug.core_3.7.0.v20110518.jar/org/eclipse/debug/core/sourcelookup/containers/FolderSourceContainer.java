/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 */
package org.eclipse.debug.core.sourcelookup.containers;

import org.eclipse.core.resources.IContainer;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.ContainerSourceContainer;

public class FolderSourceContainer
extends ContainerSourceContainer {
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.folder";

    public FolderSourceContainer(IContainer folder, boolean subfolders) {
        super(folder, subfolders);
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }
}

