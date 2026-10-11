/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.TargetWeaver;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.project.PDEProject;

public class ClasspathHelper {
    private static final String DOT = ".";
    private static final String FRAGMENT_ANNOTATION = "@fragment@";

    /*
     * Loose catch block
     */
    public static String getDevEntriesProperties(String fileName, boolean checkExcluded) {
        File directory;
        File file = new File(fileName);
        if (!(file.exists() || (directory = file.getParentFile()) == null || directory.exists() && !directory.isFile())) {
            directory.mkdirs();
        }
        Properties properties = new Properties();
        TargetWeaver.weaveDevProperties(properties);
        IPluginModelBase[] models = PluginRegistry.getWorkspaceModels();
        int i = 0;
        while (i < models.length) {
            String currentValue;
            String entry;
            String id = models[i].getPluginBase().getId();
            if (id != null && (entry = ClasspathHelper.writeEntry(ClasspathHelper.getDevPaths(models[i], checkExcluded, null))).length() > 0 && !entry.equals(currentValue = (String)properties.get(id))) {
                if (currentValue != null) {
                    entry = currentValue.concat(",").concat(entry);
                }
                properties.put(id, entry);
            }
            ++i;
        }
        properties.put("@ignoredot@", "true");
        FileOutputStream stream = null;
        stream = new FileOutputStream(fileName);
        properties.store(stream, "");
        stream.flush();
        String string = new URL("file:" + fileName).toString();
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException iOException) {}
        return string;
        catch (IOException e) {
            try {
                PDECore.logException(e);
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
        return ClasspathHelper.getDevEntries(checkExcluded);
    }

    /*
     * Loose catch block
     */
    public static String getDevEntriesProperties(String fileName, Map map) {
        File directory;
        File file = new File(fileName);
        if (!(file.exists() || (directory = file.getParentFile()) == null || directory.exists() && !directory.isFile())) {
            directory.mkdirs();
        }
        Properties properties = new Properties();
        TargetWeaver.weaveDevProperties(properties);
        Iterator iter = map.values().iterator();
        while (iter.hasNext()) {
            String id;
            String currentValue;
            String entry;
            IPluginModelBase model = (IPluginModelBase)iter.next();
            if (model.getUnderlyingResource() == null || (entry = ClasspathHelper.writeEntry(ClasspathHelper.getDevPaths(model, true, map))).length() <= 0 || entry.equals(currentValue = (String)properties.get(id = model.getPluginBase().getId()))) continue;
            if (currentValue != null) {
                entry = currentValue.concat(",").concat(entry);
            }
            properties.put(id, entry);
        }
        properties.put("@ignoredot@", "true");
        FileOutputStream stream = null;
        stream = new FileOutputStream(fileName);
        properties.store(stream, "");
        stream.flush();
        String string = new URL("file:" + fileName).toString();
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException iOException) {}
        return string;
        catch (IOException e) {
            try {
                PDECore.logException(e);
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
        return ClasspathHelper.getDevEntries(true);
    }

    private static String getDevEntries(boolean checkExcluded) {
        IPluginModelBase[] models = PluginRegistry.getWorkspaceModels();
        ArrayList<IPath> list = new ArrayList<IPath>();
        int i = 0;
        while (i < models.length) {
            String id = models[i].getPluginBase().getId();
            if (id != null && id.trim().length() != 0) {
                IPath[] paths = ClasspathHelper.getDevPaths(models[i], checkExcluded, null);
                int j = 0;
                while (j < paths.length) {
                    list.add(paths[j]);
                    ++j;
                }
            }
            ++i;
        }
        String entry = ClasspathHelper.writeEntry(list.toArray(new IPath[list.size()]));
        return entry.length() > 0 ? entry : "bin";
    }

    private static String writeEntry(IPath[] paths) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < paths.length) {
            buffer.append(paths[i].toString());
            if (i < paths.length - 1) {
                buffer.append(",");
            }
            ++i;
        }
        return buffer.toString();
    }

    public static Dictionary getDevDictionary(IPluginModelBase model) {
        if (model.getUnderlyingResource() == null) {
            return null;
        }
        String id = model.getPluginBase().getId();
        if (id == null || id.trim().length() == 0) {
            return null;
        }
        IPath[] paths = ClasspathHelper.getDevPaths(model, false, null);
        String entry = ClasspathHelper.writeEntry(paths);
        Hashtable<String, String> map = new Hashtable<String, String>(2);
        map.put("@ignoredot@", "true");
        map.put(id, entry.length() > 0 ? entry : "bin");
        return map;
    }

    private static Map getClasspathMap(IProject project, boolean checkExcluded, boolean onlyJarsIfLinked, boolean absolutePaths) throws JavaModelException {
        List excluded = ClasspathHelper.getFoldersToExclude(project, checkExcluded);
        IJavaProject jProject = JavaCore.create((IProject)project);
        HashMap<IPath, ArrayList<IPath>> map = new HashMap<IPath, ArrayList<IPath>>();
        IClasspathEntry[] entries = jProject.getRawClasspath();
        int i = 0;
        while (i < entries.length) {
            IResource file;
            IPath output = null;
            IPath source = null;
            if (entries[i].getEntryKind() == 3) {
                source = entries[i].getPath();
                output = entries[i].getOutputLocation();
                if (output == null) {
                    output = jProject.getOutputLocation();
                }
            } else if (entries[i].getEntryKind() == 1) {
                source = entries[i].getPath();
                output = entries[i].getPath();
                if (source.segmentCount() == 1) {
                    source = new Path(DOT);
                }
            }
            if (output != null && !excluded.contains(output) && (file = project.findMember(output.removeFirstSegments(1))) != null) {
                boolean isLinked = file.isLinked(512);
                if (entries[i].getEntryKind() == 3 || isLinked || !onlyJarsIfLinked) {
                    output = isLinked || absolutePaths ? file.getLocation().makeAbsolute() : output.makeRelative();
                    ArrayList<IPath> list = (ArrayList<IPath>)map.get(source);
                    if (list == null) {
                        list = new ArrayList<IPath>();
                    }
                    list.add(output);
                    map.put(source, list);
                }
            }
            ++i;
        }
        return map;
    }

    private static IPath[] findLibrary(String libName, IProject project, Map classpathMap, IBuild build) {
        IBuildEntry entry;
        ArrayList paths = new ArrayList();
        IBuildEntry iBuildEntry = entry = build != null ? build.getEntry("source." + libName) : null;
        if (entry != null) {
            String[] resources = entry.getTokens();
            int j = 0;
            while (j < resources.length) {
                ArrayList list;
                IResource res = project.findMember(resources[j]);
                if (res != null && (list = (ArrayList)classpathMap.get(res.getFullPath())) != null) {
                    ListIterator li = list.listIterator();
                    while (li.hasNext()) {
                        paths.add(li.next());
                    }
                }
                ++j;
            }
        }
        Path path = null;
        if (libName.equals(DOT)) {
            path = new Path(DOT);
        } else {
            IResource res = project.findMember(libName);
            if (res != null) {
                path = res.getFullPath();
            }
        }
        ArrayList list = (ArrayList)classpathMap.get(path);
        if (list != null) {
            ListIterator li = list.listIterator();
            while (li.hasNext()) {
                paths.add(li.next());
            }
        }
        return paths.toArray(new IPath[paths.size()]);
    }

    private static IPath[] getDevPaths(IPluginModelBase model, boolean checkExcluded, Map pluginsMap) {
        ArrayList result;
        block17: {
            result = new ArrayList();
            IProject project = model.getUnderlyingResource().getProject();
            IPluginBase base = model.getPluginBase();
            IPluginLibrary[] libraries = base.getLibraries();
            try {
                boolean searchBuild;
                if (!project.hasNature("org.eclipse.jdt.core.javanature")) break block17;
                Map classpathMap = ClasspathHelper.getClasspathMap(project, checkExcluded, !base.getId().equals(PDECore.getDefault().getModelManager().getSystemBundleId()), false);
                IFile file = PDEProject.getBuildProperties(project);
                IPath filePath = file.getLocation();
                boolean bl = searchBuild = filePath != null && filePath.toFile().exists();
                if (searchBuild) {
                    WorkspaceBuildModel bModel = new WorkspaceBuildModel(file);
                    IBuild build = bModel.getBuild();
                    IBuildEntry entry = build.getEntry("custom");
                    if (entry != null) {
                        searchBuild = false;
                    } else if (libraries.length == 0) {
                        IPath[] paths = ClasspathHelper.findLibrary(DOT, project, classpathMap, build);
                        if (paths.length == 0 && !classpathMap.isEmpty()) {
                            Iterator iterator = classpathMap.values().iterator();
                            ArrayList collect = new ArrayList();
                            while (iterator.hasNext()) {
                                ArrayList list = (ArrayList)iterator.next();
                                collect.addAll(list);
                            }
                            paths = collect.toArray(new IPath[collect.size()]);
                        }
                        int j = 0;
                        while (j < paths.length) {
                            ClasspathHelper.addPath(result, project, paths[j]);
                            ++j;
                        }
                    } else {
                        int i = 0;
                        while (i < libraries.length) {
                            IPath[] paths = ClasspathHelper.findLibrary(libraries[i].getName(), project, classpathMap, build);
                            if (paths.length == 0 && !libraries[i].getName().equals(DOT)) {
                                paths = ClasspathHelper.findLibraryFromFragments(libraries[i].getName(), model, checkExcluded, pluginsMap);
                            }
                            int j = 0;
                            while (j < paths.length) {
                                ClasspathHelper.addPath(result, project, paths[j]);
                                ++j;
                            }
                            ++i;
                        }
                    }
                }
                if (!searchBuild) {
                    Iterator it = classpathMap.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = it.next();
                        ArrayList list = (ArrayList)entry.getValue();
                        ListIterator li = list.listIterator();
                        while (li.hasNext()) {
                            ClasspathHelper.addPath(result, project, (IPath)li.next());
                        }
                    }
                }
            }
            catch (JavaModelException javaModelException) {
            }
            catch (CoreException coreException) {}
        }
        return result.toArray(new IPath[result.size()]);
    }

    private static IPath[] findLibraryFromFragments(String libName, IPluginModelBase model, boolean checkExcluded, Map plugins) {
        IFragmentModel[] frags = PDEManager.findFragmentsFor(model);
        int i = 0;
        while (i < frags.length) {
            if (plugins == null || plugins.containsKey(frags[i].getBundleDescription().getSymbolicName())) {
                if (frags[i].getUnderlyingResource() != null) {
                    try {
                        IPath[] paths;
                        IProject project = frags[i].getUnderlyingResource().getProject();
                        Map classpathMap = ClasspathHelper.getClasspathMap(project, checkExcluded, false, true);
                        IFile file = PDEProject.getBuildProperties(project);
                        IBuild build = null;
                        if (file.exists()) {
                            WorkspaceBuildModel bModel = new WorkspaceBuildModel(file);
                            build = bModel.getBuild();
                        }
                        if ((paths = ClasspathHelper.findLibrary(libName, project, classpathMap, build)).length > 0) {
                            return ClasspathHelper.postfixFragmentAnnotation(paths);
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                } else {
                    File file = new File(frags[i].getInstallLocation());
                    if (file.isDirectory() && (file = new File(file, libName)).exists()) {
                        return new IPath[]{new Path(String.valueOf(file.getPath()) + FRAGMENT_ANNOTATION)};
                    }
                }
            }
            ++i;
        }
        return new IPath[0];
    }

    private static IPath[] postfixFragmentAnnotation(IPath[] paths) {
        int i = 0;
        while (i < paths.length) {
            paths[i] = new Path(String.valueOf(paths[i].toString()) + FRAGMENT_ANNOTATION);
            ++i;
        }
        return paths;
    }

    private static void addPath(ArrayList result, IProject project, IPath path) {
        IPath resultPath = null;
        if (path.isAbsolute()) {
            resultPath = path;
        } else if (path.segmentCount() > 0 && path.segment(0).equals(project.getName())) {
            IContainer bundleRoot = PDEProject.getBundleRoot(project);
            IPath rootPath = bundleRoot.getFullPath();
            if ((path = path.makeRelativeTo(rootPath)).segmentCount() == 0) {
                resultPath = new Path(DOT);
            } else {
                IResource resource = bundleRoot.findMember(path);
                if (resource != null) {
                    resultPath = path;
                }
            }
        }
        if (resultPath != null && !result.contains(resultPath)) {
            result.add(resultPath);
        }
    }

    private static List getFoldersToExclude(IProject project, boolean checkExcluded) {
        IEclipsePreferences pref;
        ArrayList<Path> list = new ArrayList<Path>();
        if (checkExcluded && (pref = new ProjectScope(project).getNode("org.eclipse.pde.core")) != null) {
            String binExcludes = pref.get("selfhosting.binExcludes", "");
            StringTokenizer tokenizer = new StringTokenizer(binExcludes, ",");
            while (tokenizer.hasMoreTokens()) {
                list.add(new Path(tokenizer.nextToken().trim()));
            }
        }
        return list;
    }
}

