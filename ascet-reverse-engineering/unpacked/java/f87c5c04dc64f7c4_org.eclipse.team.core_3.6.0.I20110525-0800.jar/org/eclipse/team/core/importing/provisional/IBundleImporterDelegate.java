/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.importing.provisional;

import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.ScmUrlImportDescription;

public interface IBundleImporterDelegate {
    public ScmUrlImportDescription[] validateImport(Map[] var1);

    public IProject[] performImport(ScmUrlImportDescription[] var1, IProgressMonitor var2) throws CoreException;
}

