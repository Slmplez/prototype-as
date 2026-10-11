/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.ILaunchConfigurationType
 *  org.eclipse.debug.core.ILaunchConfigurationWorkingCopy
 *  org.eclipse.debug.core.model.IPersistableSourceLocator
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.debug.core.IJavaStackFrame
 */
package org.eclipse.jdt.launching.sourcelookup;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.model.IPersistableSourceLocator;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.sourcelookup.ArchiveSourceLocation;
import org.eclipse.jdt.launching.sourcelookup.DirectorySourceLocation;
import org.eclipse.jdt.launching.sourcelookup.IJavaSourceLocation;
import org.eclipse.jdt.launching.sourcelookup.JavaProjectSourceLocation;
import org.eclipse.jdt.launching.sourcelookup.PackageFragmentRootSourceLocation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class JavaSourceLocator
implements IPersistableSourceLocator {
    public static final String ID_JAVA_SOURCE_LOCATOR = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".javaSourceLocator";
    private IJavaSourceLocation[] fLocations;

    public JavaSourceLocator() {
        this.setSourceLocations(new IJavaSourceLocation[0]);
    }

    public JavaSourceLocator(IJavaProject[] projects, boolean includeRequired) throws CoreException {
        ArrayList<IJavaProject> requiredProjects = new ArrayList<IJavaProject>();
        int i = 0;
        while (i < projects.length) {
            if (includeRequired) {
                JavaSourceLocator.collectRequiredProjects(projects[i], requiredProjects);
            } else if (!requiredProjects.contains(projects[i])) {
                requiredProjects.add(projects[i]);
            }
            ++i;
        }
        HashMap<IPath, IPath> external = new HashMap<IPath, IPath>();
        ArrayList<PackageFragmentRootSourceLocation> list = new ArrayList<PackageFragmentRootSourceLocation>();
        Iterator iter = requiredProjects.iterator();
        while (iter.hasNext()) {
            IJavaProject p = (IJavaProject)iter.next();
            IPackageFragmentRoot[] roots = p.getPackageFragmentRoots();
            int i2 = 0;
            while (i2 < roots.length) {
                if (roots[i2].isExternal()) {
                    IPath location = roots[i2].getPath();
                    if (external.get(location) == null) {
                        external.put(location, location);
                        list.add(new PackageFragmentRootSourceLocation(roots[i2]));
                    }
                } else {
                    list.add(new PackageFragmentRootSourceLocation(roots[i2]));
                }
                ++i2;
            }
        }
        IJavaSourceLocation[] locations = list.toArray(new IJavaSourceLocation[list.size()]);
        this.setSourceLocations(locations);
    }

    public JavaSourceLocator(IJavaSourceLocation[] locations) {
        this.setSourceLocations(locations);
    }

    public JavaSourceLocator(IJavaProject project) throws CoreException {
        this.setSourceLocations(JavaSourceLocator.getDefaultSourceLocations(project));
    }

    public void setSourceLocations(IJavaSourceLocation[] locations) {
        this.fLocations = locations;
    }

    public IJavaSourceLocation[] getSourceLocations() {
        return this.fLocations;
    }

    public Object[] getSourceElements(IStackFrame stackFrame) {
        if (stackFrame instanceof IJavaStackFrame) {
            IJavaStackFrame frame = (IJavaStackFrame)stackFrame;
            String name = null;
            try {
                name = this.getFullyQualfiedName(frame);
                if (name == null) {
                    return null;
                }
            }
            catch (CoreException e) {
                if (e.getStatus().getCode() != 100) {
                    LaunchingPlugin.log(e);
                }
                return null;
            }
            ArrayList<Object> list = new ArrayList<Object>();
            IJavaSourceLocation[] locations = this.getSourceLocations();
            int i = 0;
            while (i < locations.length) {
                try {
                    Object sourceElement = locations[i].findSourceElement(name);
                    if (sourceElement != null) {
                        list.add(sourceElement);
                    }
                }
                catch (CoreException e) {
                    LaunchingPlugin.log(e);
                }
                ++i;
            }
            return list.toArray();
        }
        return null;
    }

    public Object getSourceElement(IStackFrame stackFrame) {
        if (stackFrame instanceof IJavaStackFrame) {
            IJavaStackFrame frame = (IJavaStackFrame)stackFrame;
            String name = null;
            try {
                name = this.getFullyQualfiedName(frame);
                if (name == null) {
                    return null;
                }
            }
            catch (CoreException e) {
                if (e.getStatus().getCode() != 100) {
                    LaunchingPlugin.log(e);
                }
                return null;
            }
            IJavaSourceLocation[] locations = this.getSourceLocations();
            int i = 0;
            while (i < locations.length) {
                try {
                    Object sourceElement = locations[i].findSourceElement(name);
                    if (sourceElement != null) {
                        return sourceElement;
                    }
                }
                catch (CoreException e) {
                    LaunchingPlugin.log(e);
                }
                ++i;
            }
        }
        return null;
    }

    private String getFullyQualfiedName(IJavaStackFrame frame) throws CoreException {
        String name = null;
        if (frame.isObsolete()) {
            return null;
        }
        String sourceName = frame.getSourceName();
        if (sourceName == null) {
            name = frame.getDeclaringTypeName();
        } else {
            String declName;
            int index = sourceName.lastIndexOf(92);
            if (index == -1) {
                index = sourceName.lastIndexOf(47);
            }
            if (index >= 0) {
                sourceName = sourceName.substring(index + 1);
            }
            name = (index = (declName = frame.getDeclaringTypeName()).lastIndexOf(46)) >= 0 ? declName.substring(0, index + 1) : "";
            index = sourceName.lastIndexOf(46);
            if (index >= 0) {
                name = String.valueOf(name) + sourceName.substring(0, index);
            }
        }
        return name;
    }

    protected static void collectRequiredProjects(IJavaProject proj, ArrayList res) throws JavaModelException {
        if (!res.contains(proj)) {
            res.add(proj);
            IJavaModel model = proj.getJavaModel();
            IClasspathEntry[] entries = proj.getRawClasspath();
            int i = 0;
            while (i < entries.length) {
                IJavaProject ref;
                IClasspathEntry curr = entries[i];
                if (curr.getEntryKind() == 2 && (ref = model.getJavaProject(curr.getPath().segment(0))).exists()) {
                    JavaSourceLocator.collectRequiredProjects(ref, res);
                }
                ++i;
            }
        }
    }

    public static IJavaSourceLocation[] getDefaultSourceLocations(IJavaProject project) throws CoreException {
        ILaunchConfigurationType type = DebugPlugin.getDefault().getLaunchManager().getLaunchConfigurationType(IJavaLaunchConfigurationConstants.ID_JAVA_APPLICATION);
        ILaunchConfigurationWorkingCopy config = type.newInstance(null, project.getElementName());
        config.setAttribute(IJavaLaunchConfigurationConstants.ATTR_PROJECT_NAME, project.getElementName());
        JavaSourceLocator locator = new JavaSourceLocator();
        locator.initializeDefaults((ILaunchConfiguration)config);
        return locator.getSourceLocations();
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("javaSourceLocator");
        doc.appendChild(node);
        IJavaSourceLocation[] locations = this.getSourceLocations();
        int i = 0;
        while (i < locations.length) {
            Element child = doc.createElement("javaSourceLocation");
            child.setAttribute("class", locations[i].getClass().getName());
            child.setAttribute("memento", locations[i].getMemento());
            node.appendChild(child);
            ++i;
        }
        return DebugPlugin.serializeDocument((Document)doc);
    }

    public void initializeDefaults(ILaunchConfiguration configuration) throws CoreException {
        IRuntimeClasspathEntry[] entries = JavaRuntime.computeUnresolvedSourceLookupPath(configuration);
        IRuntimeClasspathEntry[] resolved = JavaRuntime.resolveSourceLookupPath(entries, configuration);
        this.setSourceLocations(JavaSourceLocator.getSourceLocations(resolved));
    }

    public void initializeFromMemento(String memento) throws CoreException {
        Exception ex = null;
        try {
            Element root = null;
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            parser.setErrorHandler(new DefaultHandler());
            StringReader reader = new StringReader(memento);
            InputSource source = new InputSource(reader);
            root = parser.parse(source).getDocumentElement();
            if (!root.getNodeName().equalsIgnoreCase("javaSourceLocator")) {
                this.abort(LaunchingMessages.JavaSourceLocator_Unable_to_restore_Java_source_locator___invalid_format__6, null);
            }
            ArrayList<IJavaSourceLocation> sourceLocations = new ArrayList<IJavaSourceLocation>();
            ClassLoader classLoader = LaunchingPlugin.getDefault().getDescriptor().getPluginClassLoader();
            NodeList list = root.getChildNodes();
            int length = list.getLength();
            int i = 0;
            while (i < length) {
                Node node = list.item(i);
                short type = node.getNodeType();
                if (type == 1) {
                    Element entry = (Element)node;
                    if (entry.getNodeName().equalsIgnoreCase("javaSourceLocation")) {
                        String className = entry.getAttribute("class");
                        String data = entry.getAttribute("memento");
                        if (this.isEmpty(className)) {
                            this.abort(LaunchingMessages.JavaSourceLocator_Unable_to_restore_Java_source_locator___invalid_format__10, null);
                        }
                        Class<?> clazz = null;
                        try {
                            clazz = classLoader.loadClass(className);
                        }
                        catch (ClassNotFoundException e) {
                            this.abort(MessageFormat.format((String)LaunchingMessages.JavaSourceLocator_Unable_to_restore_source_location___class_not_found___0__11, (Object[])new String[]{className}), e);
                        }
                        IJavaSourceLocation location = null;
                        try {
                            location = (IJavaSourceLocation)clazz.newInstance();
                        }
                        catch (IllegalAccessException e) {
                            this.abort(LaunchingMessages.JavaSourceLocator_Unable_to_restore_source_location__12, e);
                        }
                        catch (InstantiationException e) {
                            this.abort(LaunchingMessages.JavaSourceLocator_Unable_to_restore_source_location__12, e);
                        }
                        location.initializeFrom(data);
                        sourceLocations.add(location);
                    } else {
                        this.abort(LaunchingMessages.JavaSourceLocator_Unable_to_restore_Java_source_locator___invalid_format__14, null);
                    }
                }
                ++i;
            }
            this.setSourceLocations(sourceLocations.toArray(new IJavaSourceLocation[sourceLocations.size()]));
            return;
        }
        catch (ParserConfigurationException e) {
            ex = e;
        }
        catch (SAXException e) {
            ex = e;
        }
        catch (IOException e) {
            ex = e;
        }
        this.abort(LaunchingMessages.JavaSourceLocator_Exception_occurred_initializing_source_locator__15, ex);
    }

    private static IJavaSourceLocation[] getSourceLocations(IRuntimeClasspathEntry[] entries) {
        ArrayList<IJavaSourceLocation> locations = new ArrayList<IJavaSourceLocation>(entries.length);
        int i = 0;
        while (i < entries.length) {
            IRuntimeClasspathEntry entry = entries[i];
            IJavaSourceLocation location = null;
            switch (entry.getType()) {
                case 1: {
                    IProject project = (IProject)entry.getResource();
                    if (project == null || !project.exists() || !project.isOpen()) break;
                    location = new JavaProjectSourceLocation(JavaCore.create((IProject)project));
                    break;
                }
                case 2: {
                    File file;
                    location = JavaSourceLocator.getArchiveSourceLocation(entry);
                    if (location != null) break;
                    String path = entry.getSourceAttachmentLocation();
                    if (path == null) {
                        path = entry.getLocation();
                    }
                    if (path == null || !(file = new File(path)).exists()) break;
                    if (file.isDirectory()) {
                        location = new DirectorySourceLocation(file);
                        break;
                    }
                    location = new ArchiveSourceLocation(path, entry.getSourceAttachmentRootLocation());
                    break;
                }
                case 3: {
                    String source = entry.getSourceAttachmentLocation();
                    if (source == null) break;
                    location = new ArchiveSourceLocation(source, entry.getSourceAttachmentRootLocation());
                    break;
                }
                case 4: {
                    throw new IllegalArgumentException(LaunchingMessages.JavaSourceLocator_Illegal_to_have_a_container_resolved_to_a_container_1);
                }
            }
            if (location != null) {
                locations.add(location);
            }
            ++i;
        }
        return locations.toArray(new IJavaSourceLocation[locations.size()]);
    }

    private boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    private void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }

    private static boolean equalOrNull(Object a, Object b) {
        if (a == null) {
            return b == null;
        }
        if (b == null) {
            return false;
        }
        return a.equals(b);
    }

    private static boolean isSourceAttachmentEqual(IPackageFragmentRoot root, IRuntimeClasspathEntry entry) throws JavaModelException {
        return JavaSourceLocator.equalOrNull(root.getSourceAttachmentPath(), entry.getSourceAttachmentPath());
    }

    private static IJavaSourceLocation getArchiveSourceLocation(IRuntimeClasspathEntry entry) {
        IResource resource = entry.getResource();
        if (resource == null) {
            IJavaModel model = JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot());
            try {
                IJavaProject[] jps = model.getJavaProjects();
                int i = 0;
                while (i < jps.length) {
                    IPackageFragmentRoot[] allRoots = jps[i].getPackageFragmentRoots();
                    int j = 0;
                    while (j < allRoots.length) {
                        IPackageFragmentRoot root = allRoots[j];
                        if (root.isExternal() && root.getPath().equals((Object)new Path(entry.getLocation())) && JavaSourceLocator.isSourceAttachmentEqual(root, entry)) {
                            return new PackageFragmentRootSourceLocation(root);
                        }
                        ++j;
                    }
                    ++i;
                }
            }
            catch (JavaModelException e) {
                LaunchingPlugin.log(e);
            }
        } else {
            IProject project = resource.getProject();
            IJavaProject jp = JavaCore.create((IProject)project);
            try {
                if (jp != null && jp.exists()) {
                    IPackageFragmentRoot root = jp.getPackageFragmentRoot(resource);
                    IPackageFragmentRoot[] allRoots = jp.getPackageFragmentRoots();
                    int j = 0;
                    while (j < allRoots.length) {
                        if (allRoots[j].equals(root) && JavaSourceLocator.isSourceAttachmentEqual(root, entry)) {
                            return new PackageFragmentRootSourceLocation(root);
                        }
                        ++j;
                    }
                }
                IJavaModel model = JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot());
                IJavaProject[] jps = model.getJavaProjects();
                int i = 0;
                while (i < jps.length) {
                    IPackageFragmentRoot[] allRoots = jps[i].getPackageFragmentRoots();
                    int j = 0;
                    while (j < allRoots.length) {
                        IPackageFragmentRoot root = allRoots[j];
                        if (!root.isExternal() && root.getPath().equals((Object)entry.getPath()) && JavaSourceLocator.isSourceAttachmentEqual(root, entry)) {
                            return new PackageFragmentRootSourceLocation(root);
                        }
                        ++j;
                    }
                    ++i;
                }
            }
            catch (JavaModelException e) {
                LaunchingPlugin.log(e);
            }
        }
        return null;
    }
}

