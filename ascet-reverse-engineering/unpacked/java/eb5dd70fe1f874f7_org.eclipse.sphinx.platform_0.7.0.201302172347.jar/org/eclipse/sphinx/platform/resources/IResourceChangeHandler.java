/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 */
package org.eclipse.sphinx.platform.resources;

import java.util.Collection;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResourceChangeHandler {
    public void handleProjectCreated(int var1, IProject var2);

    public void handleProjectOpened(int var1, IProject var2);

    public void handleProjectRenamed(int var1, IProject var2, IProject var3);

    public void handleProjectDescriptionChanged(int var1, IProject var2);

    public void handleProjectSettingsChanged(int var1, IProject var2, Collection<String> var3);

    public void handleProjectAboutToBeClosed(IProject var1);

    public void handleProjectAboutToBeDeleted(IProject var1);

    public void handleProjectClosed(int var1, IProject var2);

    public void handleProjectRemoved(int var1, IProject var2);

    public void handleFileAdded(int var1, IFile var2);

    public void handleFileChanged(int var1, IFile var2);

    public void handleFileMoved(int var1, IFile var2, IFile var3);

    public void handleFileRemoved(int var1, IFile var2);
}

