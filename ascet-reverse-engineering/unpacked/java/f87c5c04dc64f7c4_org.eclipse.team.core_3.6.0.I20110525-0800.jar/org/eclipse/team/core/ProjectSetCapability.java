/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.IProjectSetSerializer;
import org.eclipse.team.core.ProjectSetSerializationContext;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.internal.core.Messages;

public abstract class ProjectSetCapability {
    public static final String SCHEME_SCM = "scm";
    private IProjectSetSerializer serializer;

    public static void ensureBackwardsCompatible(RepositoryProviderType type, ProjectSetCapability capability) {
        IProjectSetSerializer oldSerializer;
        if (capability != null && (oldSerializer = Team.getProjectSetSerializer(type.getID())) != null) {
            capability.setSerializer(oldSerializer);
        }
    }

    public void projectSetCreated(File file, Object context, IProgressMonitor monitor) {
    }

    public void projectSetCreated(File file, ProjectSetSerializationContext context, IProgressMonitor monitor) {
        this.projectSetCreated(file, context.getShell(), monitor);
    }

    public String[] asReference(IProject[] providerProjects, ProjectSetSerializationContext context, IProgressMonitor monitor) throws TeamException {
        if (this.serializer != null) {
            return this.serializer.asReference(providerProjects, context.getShell(), monitor);
        }
        throw new TeamException(Messages.ProjectSetCapability_0);
    }

    public IProject[] addToWorkspace(String[] referenceStrings, ProjectSetSerializationContext context, IProgressMonitor monitor) throws TeamException {
        if (this.serializer != null) {
            return this.serializer.addToWorkspace(referenceStrings, context.getFilename(), context.getShell(), monitor);
        }
        throw new TeamException(Messages.ProjectSetCapability_1);
    }

    protected IProject[] confirmOverwrite(ProjectSetSerializationContext context, IProject[] projects) throws TeamException {
        ArrayList<IProject> existingProjects = new ArrayList<IProject>();
        int i = 0;
        while (i < projects.length) {
            IProject eachProj = projects[i];
            if (eachProj.exists()) {
                existingProjects.add(eachProj);
            } else if (new File(eachProj.getParent().getLocation().toFile(), eachProj.getName()).exists()) {
                existingProjects.add(eachProj);
            }
            ++i;
        }
        if (existingProjects.size() == 0) {
            return projects;
        }
        IProject[] confirmed = context.confirmOverwrite(existingProjects.toArray(new IProject[existingProjects.size()]));
        if (confirmed == null) {
            return null;
        }
        if (existingProjects.size() == confirmed.length) {
            return projects;
        }
        ArrayList<IProject> result = new ArrayList<IProject>(projects.length);
        result.addAll(Arrays.asList(projects));
        result.removeAll(existingProjects);
        int i2 = 0;
        while (i2 < confirmed.length) {
            IProject eachProj = confirmed[i2];
            if (existingProjects.contains(eachProj)) {
                result.add(eachProj);
            }
            ++i2;
        }
        return result.toArray(new IProject[result.size()]);
    }

    void setSerializer(IProjectSetSerializer serializer) {
        this.serializer = serializer;
    }

    public URI getURI(String referenceString) {
        return null;
    }

    public String getProject(String referenceString) {
        return null;
    }

    public String asReference(URI uri, String projectName) {
        return null;
    }
}

