/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.filebuffers;

import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.internal.filebuffers.ResourceTextFileBufferManager;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.osgi.framework.Bundle;

public class FileBuffersPlugin
extends Plugin {
    public static final String PLUGIN_ID = "org.eclipse.core.filebuffers";
    private static FileBuffersPlugin fgPlugin;
    private ITextFileBufferManager fTextFileBufferManager;

    public FileBuffersPlugin() {
        Assert.isTrue((fgPlugin == null ? 1 : 0) != 0);
        fgPlugin = this;
    }

    public static FileBuffersPlugin getDefault() {
        return fgPlugin;
    }

    public synchronized ITextFileBufferManager getFileBufferManager() {
        if (this.fTextFileBufferManager == null) {
            Bundle resourcesBundle = Platform.getBundle((String)"org.eclipse.core.resources");
            this.fTextFileBufferManager = resourcesBundle != null ? new ResourceTextFileBufferManager() : new TextFileBufferManager();
        }
        return this.fTextFileBufferManager;
    }
}

