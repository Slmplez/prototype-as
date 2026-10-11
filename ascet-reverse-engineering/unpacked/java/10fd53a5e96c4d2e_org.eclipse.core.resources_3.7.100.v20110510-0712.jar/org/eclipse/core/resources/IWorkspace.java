/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.resources;

import java.io.InputStream;
import java.net.URI;
import java.util.Map;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNatureDescriptor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.ISynchronizer;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.WorkspaceLock;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IWorkspace
extends IAdaptable {
    public static final int AVOID_UPDATE = 1;
    public static final Object VALIDATE_PROMPT = FileModificationValidationContext.VALIDATE_PROMPT;
    public static final String SERVICE_NAME = IWorkspace.class.getName();

    public void addResourceChangeListener(IResourceChangeListener var1);

    public void addResourceChangeListener(IResourceChangeListener var1, int var2);

    public ISavedState addSaveParticipant(Plugin var1, ISaveParticipant var2) throws CoreException;

    public ISavedState addSaveParticipant(String var1, ISaveParticipant var2) throws CoreException;

    public void build(int var1, IProgressMonitor var2) throws CoreException;

    public void build(IBuildConfiguration[] var1, int var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void checkpoint(boolean var1);

    public IProject[][] computePrerequisiteOrder(IProject[] var1);

    public ProjectOrder computeProjectOrder(IProject[] var1);

    public IStatus copy(IResource[] var1, IPath var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public IStatus copy(IResource[] var1, IPath var2, int var3, IProgressMonitor var4) throws CoreException;

    public IStatus delete(IResource[] var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IStatus delete(IResource[] var1, int var2, IProgressMonitor var3) throws CoreException;

    public void deleteMarkers(IMarker[] var1) throws CoreException;

    public void forgetSavedTree(String var1);

    public IFilterMatcherDescriptor[] getFilterMatcherDescriptors();

    public IFilterMatcherDescriptor getFilterMatcherDescriptor(String var1);

    public IProjectNatureDescriptor[] getNatureDescriptors();

    public IProjectNatureDescriptor getNatureDescriptor(String var1);

    public Map<IProject, IProject[]> getDanglingReferences();

    public IWorkspaceDescription getDescription();

    public IWorkspaceRoot getRoot();

    public IResourceRuleFactory getRuleFactory();

    public ISynchronizer getSynchronizer();

    public boolean isAutoBuilding();

    public boolean isTreeLocked();

    public IProjectDescription loadProjectDescription(IPath var1) throws CoreException;

    public IProjectDescription loadProjectDescription(InputStream var1) throws CoreException;

    public IStatus move(IResource[] var1, IPath var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public IStatus move(IResource[] var1, IPath var2, int var3, IProgressMonitor var4) throws CoreException;

    public IBuildConfiguration newBuildConfig(String var1, String var2);

    public IProjectDescription newProjectDescription(String var1);

    public void removeResourceChangeListener(IResourceChangeListener var1);

    public void removeSaveParticipant(Plugin var1);

    public void removeSaveParticipant(String var1);

    public void run(IWorkspaceRunnable var1, ISchedulingRule var2, int var3, IProgressMonitor var4) throws CoreException;

    public void run(IWorkspaceRunnable var1, IProgressMonitor var2) throws CoreException;

    public IStatus save(boolean var1, IProgressMonitor var2) throws CoreException;

    public void setDescription(IWorkspaceDescription var1) throws CoreException;

    public void setWorkspaceLock(WorkspaceLock var1);

    public String[] sortNatureSet(String[] var1);

    public IStatus validateEdit(IFile[] var1, Object var2);

    public IStatus validateFiltered(IResource var1);

    public IStatus validateLinkLocation(IResource var1, IPath var2);

    public IStatus validateLinkLocationURI(IResource var1, URI var2);

    public IStatus validateName(String var1, int var2);

    public IStatus validateNatureSet(String[] var1);

    public IStatus validatePath(String var1, int var2);

    public IStatus validateProjectLocation(IProject var1, IPath var2);

    public IStatus validateProjectLocationURI(IProject var1, URI var2);

    public IPathVariableManager getPathVariableManager();

    public static final class ProjectOrder {
        public IProject[] projects;
        public boolean hasCycles;
        public IProject[][] knots;

        public ProjectOrder(IProject[] projects, boolean hasCycles, IProject[][] knots) {
            this.projects = projects;
            this.hasCycles = hasCycles;
            this.knots = knots;
        }
    }
}

