/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaModelStatus
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaConventions
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.team.core.RepositoryProvider
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.JavadocLocationManager;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.eclipse.team.core.RepositoryProvider;

public class ClasspathComputer {
    private static Map fSeverityTable = null;
    private static final int SEVERITY_ERROR = 3;
    private static final int SEVERITY_WARNING = 2;
    private static final int SEVERITY_IGNORE = 1;

    public static void setClasspath(IProject project, IPluginModelBase model) throws CoreException {
        IClasspathEntry[] entries = ClasspathComputer.getClasspath(project, model, null, false, true);
        JavaCore.create((IProject)project).setRawClasspath(entries, null);
    }

    public static IClasspathEntry[] getClasspath(IProject project, IPluginModelBase model, Map sourceLibraryMap, boolean clear, boolean overrideCompliance) throws CoreException {
        IJavaProject javaProject = JavaCore.create((IProject)project);
        ArrayList<IClasspathEntry> result = new ArrayList<IClasspathEntry>();
        IBuild build = ClasspathComputer.getBuild(project);
        String ee = ClasspathComputer.getExecutionEnvironment(model.getBundleDescription());
        result.add(ClasspathComputer.createEntryUsingPreviousEntry(javaProject, ee, PDECore.JRE_CONTAINER_PATH));
        ClasspathComputer.setComplianceOptions(JavaCore.create((IProject)project), ee, overrideCompliance);
        result.add(ClasspathComputer.createEntryUsingPreviousEntry(javaProject, ee, PDECore.REQUIRED_PLUGINS_CONTAINER_PATH));
        ClasspathComputer.addSourceAndLibraries(project, model, build, clear, sourceLibraryMap, result);
        IClasspathEntry[] entries = result.toArray(new IClasspathEntry[result.size()]);
        IJavaModelStatus validation = JavaConventions.validateClasspath((IJavaProject)javaProject, (IClasspathEntry[])entries, (IPath)javaProject.getOutputLocation());
        if (!validation.isOK()) {
            PDECore.logErrorMessage(validation.getMessage());
            throw new CoreException((IStatus)validation);
        }
        return result.toArray(new IClasspathEntry[result.size()]);
    }

    private static void addSourceAndLibraries(IProject project, IPluginModelBase model, IBuild build, boolean clear, Map sourceLibraryMap, ArrayList result) throws CoreException {
        HashSet<IPath> paths = new HashSet<IPath>();
        if (!clear) {
            IClasspathEntry[] entries = JavaCore.create((IProject)project).getRawClasspath();
            int i = 0;
            while (i < entries.length) {
                IClasspathEntry entry = entries[i];
                if (entry.getEntryKind() == 3 && paths.add(entry.getPath())) {
                    result.add(entry);
                }
                ++i;
            }
        }
        IClasspathAttribute[] attrs = ClasspathComputer.getClasspathAttributes(project, model);
        IPluginLibrary[] libraries = model.getPluginBase().getLibraries();
        int i = 0;
        while (i < libraries.length) {
            IBuildEntry buildEntry;
            IBuildEntry iBuildEntry = buildEntry = build == null ? null : build.getEntry("source." + libraries[i].getName());
            if (buildEntry != null) {
                ClasspathComputer.addSourceFolder(buildEntry, project, paths, result);
            } else {
                IPath sourceAttachment;
                IPath iPath = sourceAttachment = sourceLibraryMap != null ? (IPath)sourceLibraryMap.get(libraries[i].getName()) : null;
                if (libraries[i].getName().equals(".")) {
                    ClasspathComputer.addJARdPlugin(project, ClasspathUtilCore.getFilename(model), sourceAttachment, attrs, result);
                } else {
                    ClasspathComputer.addLibraryEntry(project, libraries[i], sourceAttachment, attrs, result);
                }
            }
            ++i;
        }
        if (libraries.length == 0) {
            if (build != null) {
                IBuildEntry buildEntry;
                IBuildEntry iBuildEntry = buildEntry = build == null ? null : build.getEntry("source..");
                if (buildEntry != null) {
                    ClasspathComputer.addSourceFolder(buildEntry, project, paths, result);
                }
            } else if (ClasspathUtilCore.hasBundleStructure(model)) {
                IPath sourceAttachment = sourceLibraryMap != null ? (IPath)sourceLibraryMap.get(".") : null;
                ClasspathComputer.addJARdPlugin(project, ClasspathUtilCore.getFilename(model), sourceAttachment, attrs, result);
            }
        }
    }

    private static IClasspathAttribute[] getClasspathAttributes(IProject project, IPluginModelBase model) {
        JavadocLocationManager manager;
        String javadoc;
        IClasspathAttribute[] attributes = new IClasspathAttribute[]{};
        if (!RepositoryProvider.isShared((IProject)project) && (javadoc = (manager = PDECore.getDefault().getJavadocLocationManager()).getJavadocLocation(model)) != null) {
            attributes = new IClasspathAttribute[]{JavaCore.newClasspathAttribute((String)"javadoc_location", (String)javadoc)};
        }
        return attributes;
    }

    /*
     * Unable to fully structure code
     */
    private static void addSourceFolder(IBuildEntry buildEntry, IProject project, HashSet paths, ArrayList result) throws CoreException {
        folders = buildEntry.getTokens();
        j = 0;
        while (j < folders.length) {
            block3: {
                block4: {
                    folder = folders[j];
                    path = project.getFullPath().append(folder);
                    if (!paths.add(path)) break block3;
                    if (project.findMember(folder) != null) break block4;
                    CoreUtility.createFolder(project.getFolder(folder));
                    ** GOTO lbl-1000
                }
                root = JavaCore.create((IProject)project).getPackageFragmentRoot(path.toString());
                if (root.exists() && root.getKind() == 2) {
                    result.add(root.getRawClasspathEntry());
                } else lbl-1000:
                // 2 sources

                {
                    result.add(JavaCore.newSourceEntry((IPath)path));
                }
            }
            ++j;
        }
    }

    protected static IBuild getBuild(IProject project) throws CoreException {
        IFile buildFile = PDEProject.getBuildProperties(project);
        IBuildModel buildModel = null;
        if (buildFile.exists()) {
            buildModel = new WorkspaceBuildModel(buildFile);
            buildModel.load();
        }
        return buildModel != null ? buildModel.getBuild() : null;
    }

    private static void addLibraryEntry(IProject project, IPluginLibrary library, IPath sourceAttachment, IClasspathAttribute[] attrs, ArrayList result) throws JavaModelException {
        IClasspathEntry entry;
        String name = ClasspathUtilCore.expandLibraryName(library.getName());
        IResource jarFile = project.findMember(name);
        if (jarFile == null) {
            return;
        }
        IPackageFragmentRoot root = JavaCore.create((IProject)project).getPackageFragmentRoot(jarFile);
        if (root.exists() && root.getKind() == 2) {
            IClasspathEntry oldEntry = root.getRawClasspathEntry();
            if ((sourceAttachment == null && oldEntry.getSourceAttachmentPath() != null || sourceAttachment != null && sourceAttachment.equals((Object)oldEntry.getSourceAttachmentPath())) && !result.contains(oldEntry)) {
                result.add(oldEntry);
                return;
            }
        }
        if (!result.contains(entry = ClasspathComputer.createClasspathEntry(project, jarFile, name, sourceAttachment, attrs, library.isExported()))) {
            result.add(entry);
        }
    }

    private static void addJARdPlugin(IProject project, String filename, IPath sourceAttachment, IClasspathAttribute[] attrs, ArrayList result) {
        IClasspathEntry entry;
        String name = ClasspathUtilCore.expandLibraryName(filename);
        IResource jarFile = project.findMember(name);
        if (jarFile != null && !result.contains(entry = ClasspathComputer.createClasspathEntry(project, jarFile, filename, sourceAttachment, attrs, true))) {
            result.add(entry);
        }
    }

    private static IClasspathEntry createClasspathEntry(IProject project, IResource library, String fileName, IPath sourceAttachment, IClasspathAttribute[] attrs, boolean isExported) {
        IResource resource = sourceAttachment != null ? project.findMember(sourceAttachment) : project.findMember(ClasspathUtilCore.getSourceZipName(fileName));
        return JavaCore.newLibraryEntry((IPath)library.getFullPath(), (IPath)(resource == null ? null : resource.getFullPath()), null, (IAccessRule[])new IAccessRule[0], (IClasspathAttribute[])attrs, (boolean)isExported);
    }

    private static String getExecutionEnvironment(BundleDescription bundleDescription) {
        String[] envs;
        if (bundleDescription != null && (envs = bundleDescription.getExecutionEnvironments()).length > 0) {
            return envs[0];
        }
        return null;
    }

    public static void setComplianceOptions(IJavaProject project, String eeId) {
        ClasspathComputer.setComplianceOptions(project, eeId, true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void setComplianceOptions(IJavaProject project, String eeId, boolean overrideExisting) {
        Map projectMap = project.getOptions(false);
        IExecutionEnvironment ee = null;
        Map options = null;
        if (eeId != null && (ee = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(eeId)) != null) {
            options = ee.getComplianceOptions();
        }
        if (options == null) {
            if (!overrideExisting || projectMap.size() <= 0) return;
            projectMap.remove("org.eclipse.jdt.core.compiler.compliance");
            projectMap.remove("org.eclipse.jdt.core.compiler.source");
            projectMap.remove("org.eclipse.jdt.core.compiler.codegen.targetPlatform");
            projectMap.remove("org.eclipse.jdt.core.compiler.problem.assertIdentifier");
            projectMap.remove("org.eclipse.jdt.core.compiler.problem.enumIdentifier");
        } else {
            String compliance = (String)options.get("org.eclipse.jdt.core.compiler.compliance");
            Iterator iterator = options.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                String option = (String)entry.getKey();
                String value = (String)entry.getValue();
                if ("1.3".equals(compliance) || "1.4".equals(compliance)) {
                    if ("org.eclipse.jdt.core.compiler.problem.assertIdentifier".equals(option) || "org.eclipse.jdt.core.compiler.problem.enumIdentifier".equals(option)) {
                        ClasspathComputer.setMinimumCompliance(projectMap, option, value, overrideExisting);
                        continue;
                    }
                    ClasspathComputer.setCompliance(projectMap, option, value, overrideExisting);
                    continue;
                }
                ClasspathComputer.setCompliance(projectMap, option, value, overrideExisting);
            }
        }
        project.setOptions(projectMap);
    }

    private static void setCompliance(Map map, String key, String value, boolean override) {
        if (value != null && (override || !map.containsKey(key))) {
            map.put(key, value);
        }
    }

    private static void setMinimumCompliance(Map map, String key, String minimumValue, boolean override) {
        if (minimumValue != null && (override || !map.containsKey(key))) {
            int minimum;
            String currentValue;
            if (fSeverityTable == null) {
                fSeverityTable = new HashMap(3);
                fSeverityTable.put("ignore", new Integer(1));
                fSeverityTable.put("warning", new Integer(2));
                fSeverityTable.put("error", new Integer(3));
            }
            int current = (currentValue = (String)map.get(key)) != null && fSeverityTable.containsKey(currentValue) ? (Integer)fSeverityTable.get(currentValue) : 0;
            int n = minimum = minimumValue != null && fSeverityTable.containsKey(minimumValue) ? (Integer)fSeverityTable.get(minimumValue) : 0;
            if (current < minimum) {
                map.put(key, minimumValue);
            }
        }
    }

    public static IClasspathEntry createEntryUsingPreviousEntry(IJavaProject javaProject, String ee, IPath path) throws CoreException {
        IClasspathEntry[] entries = javaProject.getRawClasspath();
        int i = 0;
        while (i < entries.length) {
            if (entries[i].getPath().equals((Object)path)) {
                if (path.equals((Object)PDECore.JRE_CONTAINER_PATH)) {
                    return JavaCore.newContainerEntry((IPath)ClasspathComputer.getEEPath(ee), (IAccessRule[])entries[i].getAccessRules(), (IClasspathAttribute[])entries[i].getExtraAttributes(), (boolean)entries[i].isExported());
                }
                return JavaCore.newContainerEntry((IPath)path, (IAccessRule[])entries[i].getAccessRules(), (IClasspathAttribute[])entries[i].getExtraAttributes(), (boolean)entries[i].isExported());
            }
            ++i;
        }
        if (path.equals((Object)PDECore.JRE_CONTAINER_PATH)) {
            return ClasspathComputer.createJREEntry(ee);
        }
        return JavaCore.newContainerEntry((IPath)path);
    }

    public static IClasspathEntry createJREEntry(String ee) {
        return JavaCore.newContainerEntry((IPath)ClasspathComputer.getEEPath(ee));
    }

    private static IPath getEEPath(String ee) {
        IExecutionEnvironmentsManager manager;
        IExecutionEnvironment env;
        IPath path = null;
        if (ee != null && (env = (manager = JavaRuntime.getExecutionEnvironmentsManager()).getEnvironment(ee)) != null) {
            path = JavaRuntime.newJREContainerPath((IExecutionEnvironment)env);
        }
        if (path == null) {
            path = JavaRuntime.newDefaultJREContainerPath();
        }
        return path;
    }

    public static IClasspathEntry createContainerEntry() {
        return JavaCore.newContainerEntry((IPath)PDECore.REQUIRED_PLUGINS_CONTAINER_PATH);
    }
}

