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
import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefaultResourceChangeHandler
implements IResourceChangeHandler {
    @Override
    public void handleProjectCreated(int eventType, IProject project) {
    }

    @Override
    public void handleProjectOpened(int eventType, IProject project) {
    }

    @Override
    public void handleProjectRenamed(int eventType, IProject oldProject, IProject newProject) {
    }

    @Override
    public void handleProjectDescriptionChanged(int eventType, IProject project) {
    }

    @Override
    public void handleProjectSettingsChanged(int eventType, IProject project, Collection<String> preferenceFileNames) {
    }

    @Override
    public void handleProjectAboutToBeClosed(IProject project) {
    }

    @Override
    public void handleProjectAboutToBeDeleted(IProject project) {
    }

    @Override
    public void handleProjectClosed(int eventType, IProject project) {
    }

    @Override
    public void handleProjectRemoved(int eventType, IProject project) {
    }

    @Override
    public void handleFileAdded(int eventType, IFile file) {
    }

    @Override
    public void handleFileChanged(int eventType, IFile file) {
    }

    @Override
    public void handleFileMoved(int eventType, IFile oldFile, IFile newFile) {
    }

    @Override
    public void handleFileRemoved(int eventType, IFile file) {
    }
}

