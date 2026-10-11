/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.SearchablePluginsManager;

public class ExternalJavaSearchClasspathContainer
implements IClasspathContainer {
    private IClasspathEntry[] fEntries;

    public IClasspathEntry[] getClasspathEntries() {
        if (this.fEntries == null) {
            try {
                SearchablePluginsManager manager = PDECore.getDefault().getSearchablePluginsManager();
                this.fEntries = manager.computeContainerClasspathEntries();
            }
            catch (CoreException e) {
                PDECore.logException(e);
            }
        }
        return this.fEntries;
    }

    public String getDescription() {
        return PDECoreMessages.ExternalJavaSearchClasspathContainer_description;
    }

    public int getKind() {
        return 1;
    }

    public IPath getPath() {
        return PDECore.JAVA_SEARCH_CONTAINER_PATH;
    }
}

