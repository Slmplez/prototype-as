/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.importing;

import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.ScmUrlImportDescription;
import org.eclipse.team.core.importing.provisional.IBundleImporter;
import org.eclipse.team.core.importing.provisional.IBundleImporterDelegate;
import org.eclipse.team.internal.core.TeamPlugin;

public class BundleImporterExtension
implements IBundleImporter {
    private IBundleImporterDelegate delegate;
    private IConfigurationElement element;

    public BundleImporterExtension(IConfigurationElement element) {
        this.element = element;
    }

    public ScmUrlImportDescription[] validateImport(Map[] manifests) {
        try {
            return this.getDelegate().validateImport(manifests);
        }
        catch (CoreException e) {
            TeamPlugin.log(e);
            return null;
        }
    }

    private synchronized IBundleImporterDelegate getDelegate() throws CoreException {
        if (this.delegate == null) {
            this.delegate = (IBundleImporterDelegate)this.element.createExecutableExtension("class");
        }
        return this.delegate;
    }

    public IProject[] performImport(ScmUrlImportDescription[] descriptions, IProgressMonitor monitor) throws CoreException {
        return this.getDelegate().performImport(descriptions, monitor);
    }

    public String getId() {
        return this.element.getAttribute("id");
    }

    public String getDescription() {
        return this.element.getAttribute("description");
    }

    public String getName() {
        return this.element.getAttribute("name");
    }
}

