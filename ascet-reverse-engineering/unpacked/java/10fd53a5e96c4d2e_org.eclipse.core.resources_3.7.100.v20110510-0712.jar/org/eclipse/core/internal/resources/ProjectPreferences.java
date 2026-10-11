/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.EclipsePreferences
 *  org.eclipse.core.internal.preferences.ExportedPreferences
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IExportedPreferences
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.resources;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.ExportedPreferences;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IExportedPreferences;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class ProjectPreferences
extends EclipsePreferences {
    static final String PREFS_REGULAR_QUALIFIER = "org.eclipse.core.resources";
    static final String PREFS_DERIVED_QUALIFIER = "org.eclipse.core.resources.derived";
    protected static Set<String> loadedNodes = Collections.synchronizedSet(new HashSet());
    private IFile file;
    private boolean initialized = false;
    private boolean isReading;
    private boolean isWriting;
    private IEclipsePreferences loadLevel;
    private IProject project;
    private String qualifier;
    private int segmentCount;

    static void deleted(IFile file) throws CoreException {
        IPath path = file.getFullPath();
        int count = path.segmentCount();
        if (count != 3) {
            return;
        }
        if (!".settings".equals(path.segment(1))) {
            return;
        }
        IEclipsePreferences root = Platform.getPreferencesService().getRootNode();
        String project = path.segment(0);
        String qualifier = path.removeFileExtension().lastSegment();
        ProjectPreferences projectNode = (ProjectPreferences)root.node("project").node(project);
        try {
            if (!projectNode.nodeExists(qualifier)) {
                return;
            }
        }
        catch (BackingStoreException backingStoreException) {}
        ProjectPreferences.clearNode(projectNode.node(qualifier));
        if (qualifier.equals(PREFS_REGULAR_QUALIFIER) || qualifier.equals(PREFS_DERIVED_QUALIFIER)) {
            ProjectPreferences.preferencesChanged(file.getProject());
        }
    }

    static void deleted(IFolder folder) throws CoreException {
        IPath path = folder.getFullPath();
        int count = path.segmentCount();
        if (count != 2) {
            return;
        }
        if (!".settings".equals(path.segment(1))) {
            return;
        }
        IEclipsePreferences root = Platform.getPreferencesService().getRootNode();
        String project = path.segment(0);
        Preferences projectNode = root.node("project").node(project);
        boolean hasResourcesSettings = ProjectPreferences.getFile(folder, PREFS_REGULAR_QUALIFIER).exists() || ProjectPreferences.getFile(folder, PREFS_DERIVED_QUALIFIER).exists();
        ProjectPreferences.removeNode(projectNode);
        if (hasResourcesSettings) {
            ProjectPreferences.preferencesChanged(folder.getProject());
        }
    }

    static void deleted(IProject project) throws CoreException {
        IEclipsePreferences root = Platform.getPreferencesService().getRootNode();
        Preferences projectNode = root.node("project").node(project.getName());
        boolean hasResourcesSettings = ProjectPreferences.getFile(project, PREFS_REGULAR_QUALIFIER).exists() || ProjectPreferences.getFile(project, PREFS_DERIVED_QUALIFIER).exists();
        ProjectPreferences.removeNode(projectNode);
        if (hasResourcesSettings) {
            ProjectPreferences.preferencesChanged(project);
        }
    }

    static void deleted(IResource resource) throws CoreException {
        switch (resource.getType()) {
            case 1: {
                ProjectPreferences.deleted((IFile)resource);
                return;
            }
            case 2: {
                ProjectPreferences.deleted((IFolder)resource);
                return;
            }
            case 4: {
                ProjectPreferences.deleted((IProject)resource);
                return;
            }
        }
    }

    static IFile getFile(IFolder folder, String qualifier) {
        Assert.isLegal((boolean)folder.getName().equals(".settings"));
        return folder.getFile(new Path(qualifier).addFileExtension("prefs"));
    }

    static IFile getFile(IProject project, String qualifier) {
        return project.getFile(new Path(".settings").append(qualifier).addFileExtension("prefs"));
    }

    private static Properties loadProperties(IFile file) throws BackingStoreException {
        if (Policy.DEBUG_PREFERENCES) {
            Policy.debug("Loading preferences from file: " + file.getFullPath());
        }
        Properties result = new Properties();
        BufferedInputStream input = null;
        try {
            try {
                input = new BufferedInputStream(file.getContents(true));
                result.load(input);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.preferences_loadException, (Object)file.getFullPath());
                ProjectPreferences.log((IStatus)new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e));
                throw new BackingStoreException(message);
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.preferences_loadException, (Object)file.getFullPath());
                ProjectPreferences.log((IStatus)new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e));
                throw new BackingStoreException(message);
            }
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(input);
            throw throwable;
        }
        FileUtil.safeClose(input);
        return result;
    }

    private static void preferencesChanged(IProject project) {
        Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();
        workspace.getCharsetManager().projectPreferencesChanged(project);
        workspace.getContentDescriptionManager().projectPreferencesChanged(project);
    }

    private static void read(ProjectPreferences node, IFile file) throws BackingStoreException, CoreException {
        if (file == null || !file.exists()) {
            if (Policy.DEBUG_PREFERENCES) {
                Policy.debug("Unable to determine preference file or file does not exist for node: " + node.absolutePath());
            }
            return;
        }
        Properties fromDisk = ProjectPreferences.loadProperties(file);
        if (fromDisk.isEmpty()) {
            return;
        }
        IExportedPreferences myNode = (IExportedPreferences)ExportedPreferences.newRoot().node(node.absolutePath());
        ProjectPreferences.convertFromProperties((EclipsePreferences)((EclipsePreferences)myNode), (Properties)fromDisk, (boolean)false);
        boolean oldIsReading = node.isReading;
        node.isReading = true;
        try {
            Platform.getPreferencesService().applyPreferences(myNode);
        }
        finally {
            node.isReading = oldIsReading;
        }
    }

    static void removeNode(Preferences node) throws CoreException {
        String message = NLS.bind((String)Messages.preferences_removeNodeException, (Object)node.absolutePath());
        try {
            node.removeNode();
        }
        catch (BackingStoreException e) {
            Status status = new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e);
            throw new CoreException((IStatus)status);
        }
        ProjectPreferences.removeLoadedNodes(node);
    }

    static void clearNode(Preferences node) throws CoreException {
        try {
            ProjectPreferences.clearAll(node);
        }
        catch (BackingStoreException e) {
            String message = NLS.bind((String)Messages.preferences_clearNodeException, (Object)node.absolutePath());
            Status status = new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e);
            throw new CoreException((IStatus)status);
        }
        ProjectPreferences.removeLoadedNodes(node);
    }

    private static void clearAll(Preferences node) throws BackingStoreException {
        node.clear();
        String[] names = node.childrenNames();
        int i = 0;
        while (i < names.length) {
            ProjectPreferences.clearAll(node.node(names[i]));
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void removeLoadedNodes(Preferences node) {
        String path = node.absolutePath();
        Set<String> set = loadedNodes;
        synchronized (set) {
            Iterator<String> i = loadedNodes.iterator();
            while (i.hasNext()) {
                String key = i.next();
                if (!key.startsWith(path)) continue;
                i.remove();
            }
        }
    }

    public static void updatePreferences(IFile file) throws CoreException {
        IPath path = file.getFullPath();
        if (!"prefs".equals(path.getFileExtension())) {
            return;
        }
        String project = path.segment(0);
        String qualifier = path.removeFileExtension().lastSegment();
        IEclipsePreferences root = Platform.getPreferencesService().getRootNode();
        Preferences node = root.node("project").node(project).node(qualifier);
        String message = null;
        try {
            message = NLS.bind((String)Messages.preferences_syncException, (Object)node.absolutePath());
            if (!(node instanceof ProjectPreferences)) {
                return;
            }
            ProjectPreferences projectPrefs = (ProjectPreferences)node;
            if (projectPrefs.isWriting) {
                return;
            }
            ProjectPreferences.read(projectPrefs, file);
            projectPrefs.dirty = false;
            if (PREFS_REGULAR_QUALIFIER.equals(qualifier) || PREFS_DERIVED_QUALIFIER.equals(qualifier)) {
                ProjectPreferences.preferencesChanged(file.getProject());
            }
        }
        catch (BackingStoreException e) {
            Status status = new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e);
            throw new CoreException((IStatus)status);
        }
    }

    public ProjectPreferences() {
        super(null, null);
    }

    private ProjectPreferences(EclipsePreferences parent, String name) {
        super(parent, name);
        String path = this.absolutePath();
        this.segmentCount = ProjectPreferences.getSegmentCount((String)path);
        if (this.segmentCount == 1) {
            return;
        }
        String projectName = ProjectPreferences.getSegment((String)path, (int)1);
        if (projectName != null) {
            this.project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
        }
        if (this.segmentCount > 2) {
            this.qualifier = ProjectPreferences.getSegment((String)path, (int)2);
        }
        this.initialize();
    }

    private String[] computeChildren() {
        if (this.project == null) {
            return EMPTY_STRING_ARRAY;
        }
        IFolder folder = this.project.getFolder(".settings");
        if (!folder.exists()) {
            return EMPTY_STRING_ARRAY;
        }
        IResource[] members = null;
        try {
            members = folder.members();
        }
        catch (CoreException coreException) {
            return EMPTY_STRING_ARRAY;
        }
        ArrayList<String> result = new ArrayList<String>();
        int i = 0;
        while (i < members.length) {
            IResource resource = members[i];
            if (resource.getType() == 1 && "prefs".equals(resource.getFullPath().getFileExtension())) {
                result.add(resource.getFullPath().removeFileExtension().lastSegment());
            }
            ++i;
        }
        return result.toArray(EMPTY_STRING_ARRAY);
    }

    public void flush() throws BackingStoreException {
        if (this.isReading) {
            return;
        }
        this.isWriting = true;
        try {
            super.flush();
        }
        finally {
            this.isWriting = false;
        }
    }

    private IFile getFile() {
        if (this.file == null) {
            if (this.project == null || this.qualifier == null) {
                return null;
            }
            this.file = ProjectPreferences.getFile(this.project, this.qualifier);
        }
        return this.file;
    }

    protected IEclipsePreferences getLoadLevel() {
        if (this.loadLevel == null) {
            if (this.project == null || this.qualifier == null) {
                return null;
            }
            ProjectPreferences node = this;
            int i = 3;
            while (i < this.segmentCount) {
                node = (EclipsePreferences)node.parent();
                ++i;
            }
            this.loadLevel = node;
        }
        return this.loadLevel;
    }

    protected IPath getLocation() {
        if (this.project == null || this.qualifier == null) {
            return null;
        }
        IPath path = this.project.getLocation();
        return this.computeLocation(path, this.qualifier);
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new ProjectPreferences(nodeParent, nodeName);
    }

    protected String internalPut(String key, String newValue) {
        if (this.segmentCount == 3 && PREFS_REGULAR_QUALIFIER.equals(this.qualifier) && this.project != null && "separateDerivedEncodings".equals(key)) {
            Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();
            if (Boolean.parseBoolean(newValue)) {
                workspace.getCharsetManager().splitEncodingPreferences(this.project);
            } else {
                workspace.getCharsetManager().mergeEncodingPreferences(this.project);
            }
        }
        return super.internalPut(key, newValue);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void initialize() {
        if (this.segmentCount != 2) {
            return;
        }
        if (this.initialized) {
            return;
        }
        if (this.project.isOpen()) {
            try {
                ProjectPreferences projectPreferences = this;
                synchronized (projectPreferences) {
                    String[] names = this.computeChildren();
                    int i = 0;
                    while (i < names.length) {
                        this.addChild(names[i], null);
                        ++i;
                    }
                }
            }
            finally {
                this.initialized = true;
            }
        }
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.absolutePath());
    }

    protected boolean isAlreadyLoaded(String path) {
        return loadedNodes.contains(path);
    }

    protected void load() throws BackingStoreException {
        IFile localFile = this.getFile();
        if (localFile == null || !localFile.exists()) {
            if (Policy.DEBUG_PREFERENCES) {
                Policy.debug("Unable to determine preference file or file does not exist for node: " + this.absolutePath());
            }
            return;
        }
        ((ProjectPreferences)this.parent).initialize();
        if (Policy.DEBUG_PREFERENCES) {
            Policy.debug("Loading preferences from file: " + localFile.getFullPath());
        }
        Properties fromDisk = new Properties();
        BufferedInputStream input = null;
        try {
            try {
                input = new BufferedInputStream(localFile.getContents(true));
                fromDisk.load(input);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.preferences_loadException, (Object)localFile.getFullPath());
                ProjectPreferences.log((IStatus)new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e));
                throw new BackingStoreException(message);
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.preferences_loadException, (Object)localFile.getFullPath());
                ProjectPreferences.log((IStatus)new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e));
                throw new BackingStoreException(message);
            }
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(input);
            throw throwable;
        }
        FileUtil.safeClose(input);
        ProjectPreferences.convertFromProperties((EclipsePreferences)this, (Properties)fromDisk, (boolean)true);
        loadedNodes.add(this.absolutePath());
    }

    public boolean nodeExists(String path) throws BackingStoreException {
        if (this.segmentCount != 1) {
            return super.nodeExists(path);
        }
        if (path.length() == 0) {
            return super.nodeExists(path);
        }
        if (path.charAt(0) == '/') {
            return super.nodeExists(path);
        }
        if (path.indexOf(47) != -1) {
            return super.nodeExists(path);
        }
        return ResourcesPlugin.getWorkspace().getRoot().getProject(path).exists() || super.nodeExists(path);
    }

    public void remove(String key) {
        super.remove(key);
        if (this.segmentCount == 3 && PREFS_REGULAR_QUALIFIER.equals(this.qualifier) && this.project != null && "separateDerivedEncodings".equals(key)) {
            Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();
            workspace.getCharsetManager().mergeEncodingPreferences(this.project);
        }
    }

    protected void save() throws BackingStoreException {
        final IFile fileInWorkspace = this.getFile();
        if (fileInWorkspace == null) {
            if (Policy.DEBUG_PREFERENCES) {
                Policy.debug("Not saving preferences since there is no file for node: " + this.absolutePath());
            }
            return;
        }
        Properties table = this.convertToProperties(new SortedProperties(), "");
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IResourceRuleFactory factory = workspace.getRuleFactory();
        try {
            if (table.isEmpty()) {
                IWorkspaceRunnable operation = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        if (fileInWorkspace.exists()) {
                            IStatus status;
                            if (Policy.DEBUG_PREFERENCES) {
                                Policy.debug("Deleting preference file: " + fileInWorkspace.getFullPath());
                            }
                            if (fileInWorkspace.isReadOnly() && !(status = fileInWorkspace.getWorkspace().validateEdit(new IFile[]{fileInWorkspace}, IWorkspace.VALIDATE_PROMPT)).isOK()) {
                                throw new CoreException(status);
                            }
                            try {
                                fileInWorkspace.delete(true, null);
                            }
                            catch (CoreException coreException) {
                                String message = NLS.bind((String)Messages.preferences_deleteException, (Object)fileInWorkspace.getFullPath());
                                ProjectPreferences.log((IStatus)new Status(2, ProjectPreferences.PREFS_REGULAR_QUALIFIER, 2, message, null));
                            }
                        }
                    }
                };
                ISchedulingRule rule = factory.deleteRule(fileInWorkspace);
                try {
                    ResourcesPlugin.getWorkspace().run(operation, rule, 0, null);
                }
                catch (OperationCanceledException operationCanceledException) {
                    throw new BackingStoreException(Messages.preferences_operationCanceled);
                }
                return;
            }
            table.put("eclipse.preferences.version", "1");
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            try {
                try {
                    table.store(output, null);
                    output.close();
                }
                catch (IOException e) {
                    String message = NLS.bind((String)Messages.preferences_saveProblems, (Object)this.absolutePath());
                    ProjectPreferences.log((IStatus)new Status(4, "org.eclipse.core.runtime", 4, message, (Throwable)e));
                    throw new BackingStoreException(message);
                }
            }
            finally {
                FileUtil.safeClose(output);
            }
            final BufferedInputStream input = new BufferedInputStream(new ByteArrayInputStream(output.toByteArray()));
            final String finalQualifier = this.qualifier;
            IWorkspaceRunnable operation = new IWorkspaceRunnable(){

                public void run(IProgressMonitor monitor) throws CoreException {
                    if (fileInWorkspace.exists()) {
                        IStatus status;
                        if (Policy.DEBUG_PREFERENCES) {
                            Policy.debug("Setting preference file contents for: " + fileInWorkspace.getFullPath());
                        }
                        if (fileInWorkspace.isReadOnly() && !(status = fileInWorkspace.getWorkspace().validateEdit(new IFile[]{fileInWorkspace}, IWorkspace.VALIDATE_PROMPT)).isOK()) {
                            throw new CoreException(status);
                        }
                        fileInWorkspace.setContents(input, 2, null);
                    } else {
                        IFolder folder = (IFolder)fileInWorkspace.getParent();
                        if (!folder.exists()) {
                            if (Policy.DEBUG_PREFERENCES) {
                                Policy.debug("Creating parent preference directory: " + folder.getFullPath());
                            }
                            folder.create(0, true, null);
                        }
                        if (Policy.DEBUG_PREFERENCES) {
                            Policy.debug("Creating preference file: " + fileInWorkspace.getLocation());
                        }
                        fileInWorkspace.create(input, 0, null);
                    }
                    if (ProjectPreferences.PREFS_DERIVED_QUALIFIER.equals(finalQualifier)) {
                        fileInWorkspace.setDerived(true, null);
                    }
                }
            };
            try {
                if (((Workspace)workspace).getWorkManager().isLockAlreadyAcquired()) {
                    operation.run(null);
                } else {
                    ISchedulingRule rule = MultiRule.combine((ISchedulingRule[])new ISchedulingRule[]{factory.createRule(fileInWorkspace.getParent()), factory.modifyRule(fileInWorkspace), factory.derivedRule(fileInWorkspace)});
                    workspace.run(operation, rule, 0, null);
                }
            }
            catch (OperationCanceledException operationCanceledException) {
                throw new BackingStoreException(Messages.preferences_operationCanceled);
            }
        }
        catch (CoreException e) {
            String message = NLS.bind((String)Messages.preferences_saveProblems, (Object)fileInWorkspace.getFullPath());
            ProjectPreferences.log((IStatus)new Status(4, PREFS_REGULAR_QUALIFIER, 4, message, (Throwable)e));
            throw new BackingStoreException(message);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class SortedProperties
    extends Properties {
        private static final long serialVersionUID = 1L;

        SortedProperties() {
        }

        @Override
        public synchronized Enumeration<Object> keys() {
            TreeSet set = new TreeSet();
            Enumeration e = super.keys();
            while (e.hasMoreElements()) {
                set.add(e.nextElement());
            }
            return Collections.enumeration(set);
        }

        @Override
        public Set<Map.Entry<Object, Object>> entrySet() {
            TreeSet<Map.Entry<Object, Object>> set = new TreeSet<Map.Entry<Object, Object>>(new Comparator<Map.Entry<Object, Object>>(){

                @Override
                public int compare(Map.Entry<Object, Object> e1, Map.Entry<Object, Object> e2) {
                    String s1 = (String)e1.getKey();
                    String s2 = (String)e2.getKey();
                    return s1.compareTo(s2);
                }
            });
            Iterator i = super.entrySet().iterator();
            while (i.hasNext()) {
                set.add(i.next());
            }
            return set;
        }
    }
}

