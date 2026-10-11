/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.compiler.CompilationParticipant
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.internal.launching.JREContainerInitializer;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;

public class EECompilationParticipant
extends CompilationParticipant {
    private Set fCleaned = new HashSet();

    public boolean isActive(IJavaProject project) {
        return true;
    }

    public void cleanStarting(IJavaProject project) {
        super.cleanStarting(project);
        this.fCleaned.add(project);
    }

    public void buildFinished(IJavaProject project) {
        super.buildFinished(project);
        if (this.fCleaned.remove(project)) {
            String eeId = null;
            IPath container = null;
            try {
                IClasspathEntry[] rawClasspath = project.getRawClasspath();
                int j = 0;
                while (j < rawClasspath.length) {
                    IPath path;
                    IClasspathEntry entry = rawClasspath[j];
                    if (entry.getEntryKind() == 5 && JavaRuntime.JRE_CONTAINER.equals((path = entry.getPath()).segment(0))) {
                        container = path;
                        eeId = JREContainerInitializer.getExecutionEnvironmentId(path);
                    }
                    ++j;
                }
            }
            catch (CoreException e) {
                LaunchingPlugin.log(e);
            }
            if (container != null && eeId != null) {
                IVMInstall vm = JREContainerInitializer.resolveVM(container);
                this.validateEnvironment(eeId, project, vm);
            }
        }
    }

    private void validateEnvironment(String id, IJavaProject project, IVMInstall vm) {
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        IExecutionEnvironment environment = manager.getEnvironment(id);
        if (environment != null) {
            if (vm == null) {
                String message = MessageFormat.format((String)LaunchingMessages.LaunchingPlugin_38, (Object[])new String[]{environment.getId()});
                this.createJREContainerProblem(project, message, 2);
            } else if (!environment.isStrictlyCompatible(vm)) {
                IVMInstall[] compatibleVMs = environment.getCompatibleVMs();
                int exact = 0;
                int i = 0;
                while (i < compatibleVMs.length) {
                    if (environment.isStrictlyCompatible(compatibleVMs[i])) {
                        ++exact;
                    }
                    ++i;
                }
                String message = null;
                message = exact == 0 ? MessageFormat.format((String)LaunchingMessages.LaunchingPlugin_35, (Object[])new String[]{environment.getId()}) : MessageFormat.format((String)LaunchingMessages.LaunchingPlugin_36, (Object[])new String[]{environment.getId()});
                int sev = this.getSeverityLevel(JavaRuntime.PREF_STRICTLY_COMPATIBLE_JRE_NOT_AVAILABLE, project.getProject());
                if (sev != -1) {
                    this.createJREContainerProblem(project, message, sev);
                }
            }
        }
    }

    private int getSeverityLevel(String prefkey, IProject project) {
        String value;
        IPreferencesService service = Platform.getPreferencesService();
        ArrayList<Object> scopes = new ArrayList<Object>();
        scopes.add(InstanceScope.INSTANCE);
        if (project != null) {
            scopes.add(new ProjectScope(project));
        }
        if ((value = service.getString("org.eclipse.jdt.launching", prefkey, null, scopes.toArray(new IScopeContext[scopes.size()]))) == null) {
            value = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.launching").get(prefkey, null);
        }
        if ("error".equals(value)) {
            return 2;
        }
        if ("warning".equals(value)) {
            return 1;
        }
        return -1;
    }

    private void createJREContainerProblem(IJavaProject javaProject, String message, int severity) {
        try {
            IMarker marker = javaProject.getProject().createMarker(JavaRuntime.JRE_CONTAINER_MARKER);
            marker.setAttributes(new String[]{"message", "severity", "location"}, new Object[]{message, new Integer(severity), LaunchingMessages.LaunchingPlugin_37});
        }
        catch (CoreException coreException) {
            return;
        }
    }
}

