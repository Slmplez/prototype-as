/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.InputStream;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.plugin.AbbreviatedPluginHandler;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModel;

public class AbbreviatedPluginModel
extends WorkspacePluginModel {
    private static final long serialVersionUID = 1L;
    private String[] fExtensionPointIDs;

    public AbbreviatedPluginModel(IFile file, String[] extensionPointIDs) {
        super(file, true);
        this.fExtensionPointIDs = extensionPointIDs;
    }

    public AbbreviatedPluginModel(IFile file, String extensionPointID) {
        super(file, true);
        this.fExtensionPointIDs = new String[]{extensionPointID};
    }

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        this.load(stream, outOfSync, new AbbreviatedPluginHandler(this.fExtensionPointIDs));
    }
}

