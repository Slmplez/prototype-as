/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.core;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ClasspathValidation;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.ExternalFolderChange;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ProjectReferenceChange;
import org.eclipse.jdt.internal.core.util.Util;

public class DeltaProcessingState
implements IResourceChangeListener {
    public IElementChangedListener[] elementChangedListeners = new IElementChangedListener[5];
    public int[] elementChangedListenerMasks = new int[5];
    public int elementChangedListenerCount = 0;
    public IResourceChangeListener[] preResourceChangeListeners = new IResourceChangeListener[1];
    public int[] preResourceChangeEventMasks = new int[1];
    public int preResourceChangeListenerCount = 0;
    private ThreadLocal deltaProcessors = new ThreadLocal();
    public HashMap roots = new HashMap();
    public HashMap otherRoots = new HashMap();
    public HashMap oldRoots = new HashMap();
    public HashMap oldOtherRoots = new HashMap();
    public HashMap sourceAttachments = new HashMap();
    public HashMap projectDependencies = new HashMap();
    public boolean rootsAreStale = true;
    private Set initializingThreads = Collections.synchronizedSet(new HashSet());
    public Hashtable externalTimeStamps;
    private HashMap classpathChanges = new HashMap();
    private HashMap classpathValidations = new HashMap();
    private HashMap projectReferenceChanges = new HashMap();
    private HashMap externalFolderChanges = new HashMap();
    private HashSet javaProjectNamesCache;
    private HashSet externalElementsToRefresh;

    public void doNotUse() {
        this.deltaProcessors.set(null);
    }

    public synchronized void addElementChangedListener(IElementChangedListener listener, int eventMask) {
        int i = 0;
        while (i < this.elementChangedListenerCount) {
            if (this.elementChangedListeners[i] == listener) {
                int cloneLength = this.elementChangedListenerMasks.length;
                this.elementChangedListenerMasks = new int[cloneLength];
                System.arraycopy(this.elementChangedListenerMasks, 0, this.elementChangedListenerMasks, 0, cloneLength);
                int n = i;
                this.elementChangedListenerMasks[n] = this.elementChangedListenerMasks[n] | eventMask;
                return;
            }
            ++i;
        }
        int length = this.elementChangedListeners.length;
        if (length == this.elementChangedListenerCount) {
            this.elementChangedListeners = new IElementChangedListener[length * 2];
            System.arraycopy(this.elementChangedListeners, 0, this.elementChangedListeners, 0, length);
            this.elementChangedListenerMasks = new int[length * 2];
            System.arraycopy(this.elementChangedListenerMasks, 0, this.elementChangedListenerMasks, 0, length);
        }
        this.elementChangedListeners[this.elementChangedListenerCount] = listener;
        this.elementChangedListenerMasks[this.elementChangedListenerCount] = eventMask;
        ++this.elementChangedListenerCount;
    }

    public synchronized void addForRefresh(IJavaElement externalElement) {
        if (this.externalElementsToRefresh == null) {
            this.externalElementsToRefresh = new HashSet();
        }
        this.externalElementsToRefresh.add(externalElement);
    }

    public synchronized void addPreResourceChangedListener(IResourceChangeListener listener, int eventMask) {
        int i = 0;
        while (i < this.preResourceChangeListenerCount) {
            if (this.preResourceChangeListeners[i] == listener) {
                int n = i;
                this.preResourceChangeEventMasks[n] = this.preResourceChangeEventMasks[n] | eventMask;
                return;
            }
            ++i;
        }
        int length = this.preResourceChangeListeners.length;
        if (length == this.preResourceChangeListenerCount) {
            this.preResourceChangeListeners = new IResourceChangeListener[length * 2];
            System.arraycopy(this.preResourceChangeListeners, 0, this.preResourceChangeListeners, 0, length);
            this.preResourceChangeEventMasks = new int[length * 2];
            System.arraycopy(this.preResourceChangeEventMasks, 0, this.preResourceChangeEventMasks, 0, length);
        }
        this.preResourceChangeListeners[this.preResourceChangeListenerCount] = listener;
        this.preResourceChangeEventMasks[this.preResourceChangeListenerCount] = eventMask;
        ++this.preResourceChangeListenerCount;
    }

    public DeltaProcessor getDeltaProcessor() {
        DeltaProcessor deltaProcessor = (DeltaProcessor)this.deltaProcessors.get();
        if (deltaProcessor != null) {
            return deltaProcessor;
        }
        deltaProcessor = new DeltaProcessor(this, JavaModelManager.getJavaModelManager());
        this.deltaProcessors.set(deltaProcessor);
        return deltaProcessor;
    }

    public synchronized ClasspathChange addClasspathChange(IProject project, IClasspathEntry[] oldRawClasspath, IPath oldOutputLocation, IClasspathEntry[] oldResolvedClasspath) {
        ClasspathChange change = (ClasspathChange)this.classpathChanges.get(project);
        if (change == null) {
            change = new ClasspathChange((JavaProject)JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject((IResource)project), oldRawClasspath, oldOutputLocation, oldResolvedClasspath);
            this.classpathChanges.put(project, change);
        } else {
            if (change.oldRawClasspath == null) {
                change.oldRawClasspath = oldRawClasspath;
            }
            if (change.oldOutputLocation == null) {
                change.oldOutputLocation = oldOutputLocation;
            }
            if (change.oldResolvedClasspath == null) {
                change.oldResolvedClasspath = oldResolvedClasspath;
            }
        }
        return change;
    }

    public synchronized ClasspathChange getClasspathChange(IProject project) {
        return (ClasspathChange)this.classpathChanges.get(project);
    }

    public synchronized HashMap removeAllClasspathChanges() {
        HashMap result = this.classpathChanges;
        this.classpathChanges = new HashMap(result.size());
        return result;
    }

    public synchronized ClasspathValidation addClasspathValidation(JavaProject project) {
        ClasspathValidation validation = (ClasspathValidation)this.classpathValidations.get(project);
        if (validation == null) {
            validation = new ClasspathValidation(project);
            this.classpathValidations.put(project, validation);
        }
        return validation;
    }

    public synchronized void addExternalFolderChange(JavaProject project, IClasspathEntry[] oldResolvedClasspath) {
        ExternalFolderChange change = (ExternalFolderChange)this.externalFolderChanges.get(project);
        if (change == null) {
            change = new ExternalFolderChange(project, oldResolvedClasspath);
            this.externalFolderChanges.put(project, change);
        }
    }

    public synchronized void addProjectReferenceChange(JavaProject project, IClasspathEntry[] oldResolvedClasspath) {
        ProjectReferenceChange change = (ProjectReferenceChange)this.projectReferenceChanges.get(project);
        if (change == null) {
            change = new ProjectReferenceChange(project, oldResolvedClasspath);
            this.projectReferenceChanges.put(project, change);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void initializeRoots(boolean initAfterLoad) {
        HashMap[] rootInfos = null;
        if (this.rootsAreStale) {
            Thread currentThread = Thread.currentThread();
            boolean addedCurrentThread = false;
            try {
                if (!this.initializingThreads.add(currentThread)) {
                    return;
                }
                addedCurrentThread = true;
                JavaModelManager.getJavaModelManager().forceBatchInitializations(initAfterLoad);
                rootInfos = this.getRootInfos(false);
            }
            finally {
                if (addedCurrentThread) {
                    this.initializingThreads.remove(currentThread);
                }
            }
        }
        DeltaProcessingState deltaProcessingState = this;
        synchronized (deltaProcessingState) {
            this.oldRoots = this.roots;
            this.oldOtherRoots = this.otherRoots;
            if (this.rootsAreStale && rootInfos != null) {
                this.roots = rootInfos[0];
                this.otherRoots = rootInfos[1];
                this.sourceAttachments = rootInfos[2];
                this.projectDependencies = rootInfos[3];
                this.rootsAreStale = false;
            }
        }
    }

    synchronized void initializeRootsWithPreviousSession() {
        HashMap[] rootInfos = this.getRootInfos(true);
        if (rootInfos != null) {
            this.roots = rootInfos[0];
            this.otherRoots = rootInfos[1];
            this.sourceAttachments = rootInfos[2];
            this.projectDependencies = rootInfos[3];
            this.rootsAreStale = false;
        }
    }

    private HashMap[] getRootInfos(boolean usePreviousSession) {
        IJavaProject[] projects;
        HashMap<IPath, DeltaProcessor.RootInfo> newRoots = new HashMap<IPath, DeltaProcessor.RootInfo>();
        HashMap<IPath, ArrayList<DeltaProcessor.RootInfo>> newOtherRoots = new HashMap<IPath, ArrayList<DeltaProcessor.RootInfo>>();
        HashMap<IPath, IPath> newSourceAttachments = new HashMap<IPath, IPath>();
        HashMap<IJavaProject, IJavaProject[]> newProjectDependencies = new HashMap<IJavaProject, IJavaProject[]>();
        JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
        try {
            projects = model.getJavaProjects();
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
        int i = 0;
        int length = projects.length;
        while (i < length) {
            block19: {
                IClasspathEntry[] classpath;
                JavaProject project = (JavaProject)projects[i];
                try {
                    if (usePreviousSession) {
                        JavaModelManager.PerProjectInfo perProjectInfo = project.getPerProjectInfo();
                        project.resolveClasspath(perProjectInfo, true, false);
                        classpath = perProjectInfo.resolvedClasspath;
                    } else {
                        classpath = project.getResolvedClasspath();
                    }
                }
                catch (JavaModelException javaModelException) {
                    break block19;
                }
                int j = 0;
                int classpathLength = classpath.length;
                while (j < classpathLength) {
                    IClasspathEntry entry = classpath[j];
                    if (entry.getEntryKind() == 2) {
                        IJavaProject key = model.getJavaProject(entry.getPath().segment(0));
                        IJavaProject[] dependents = (IJavaProject[])newProjectDependencies.get(key);
                        if (dependents == null) {
                            dependents = new IJavaProject[]{project};
                        } else {
                            int dependentsLength = dependents.length;
                            IJavaProject[] iJavaProjectArray = dependents;
                            dependents = new IJavaProject[dependentsLength + 1];
                            System.arraycopy(iJavaProjectArray, 0, dependents, 0, dependentsLength);
                            dependents[dependentsLength] = project;
                        }
                        newProjectDependencies.put(key, dependents);
                    } else {
                        IPath path = entry.getPath();
                        if (newRoots.get(path) == null) {
                            newRoots.put(path, new DeltaProcessor.RootInfo(project, path, ((ClasspathEntry)entry).fullInclusionPatternChars(), ((ClasspathEntry)entry).fullExclusionPatternChars(), entry.getEntryKind()));
                        } else {
                            ArrayList<DeltaProcessor.RootInfo> rootList = (ArrayList<DeltaProcessor.RootInfo>)newOtherRoots.get(path);
                            if (rootList == null) {
                                rootList = new ArrayList<DeltaProcessor.RootInfo>();
                                newOtherRoots.put(path, rootList);
                            }
                            rootList.add(new DeltaProcessor.RootInfo(project, path, ((ClasspathEntry)entry).fullInclusionPatternChars(), ((ClasspathEntry)entry).fullExclusionPatternChars(), entry.getEntryKind()));
                        }
                        if (entry.getEntryKind() == 1) {
                            int index;
                            String propertyString = null;
                            try {
                                propertyString = Util.getSourceAttachmentProperty(path);
                            }
                            catch (JavaModelException e) {
                                e.printStackTrace();
                            }
                            Object sourceAttachmentPath = propertyString != null ? ((index = propertyString.lastIndexOf(42)) < 0 ? new Path(propertyString) : new Path(propertyString.substring(0, index))) : entry.getSourceAttachmentPath();
                            if (sourceAttachmentPath != null) {
                                newSourceAttachments.put((IPath)sourceAttachmentPath, path);
                            }
                        }
                    }
                    ++j;
                }
            }
            ++i;
        }
        return new HashMap[]{newRoots, newOtherRoots, newSourceAttachments, newProjectDependencies};
    }

    public synchronized ClasspathValidation[] removeClasspathValidations() {
        int length = this.classpathValidations.size();
        if (length == 0) {
            return null;
        }
        ClasspathValidation[] validations = new ClasspathValidation[length];
        this.classpathValidations.values().toArray(validations);
        this.classpathValidations.clear();
        return validations;
    }

    public synchronized ExternalFolderChange[] removeExternalFolderChanges() {
        int length = this.externalFolderChanges.size();
        if (length == 0) {
            return null;
        }
        ExternalFolderChange[] updates = new ExternalFolderChange[length];
        this.externalFolderChanges.values().toArray(updates);
        this.externalFolderChanges.clear();
        return updates;
    }

    public synchronized ProjectReferenceChange[] removeProjectReferenceChanges() {
        int length = this.projectReferenceChanges.size();
        if (length == 0) {
            return null;
        }
        ProjectReferenceChange[] updates = new ProjectReferenceChange[length];
        this.projectReferenceChanges.values().toArray(updates);
        this.projectReferenceChanges.clear();
        return updates;
    }

    public synchronized HashSet removeExternalElementsToRefresh() {
        HashSet result = this.externalElementsToRefresh;
        this.externalElementsToRefresh = null;
        return result;
    }

    public synchronized void removeElementChangedListener(IElementChangedListener listener) {
        int i = 0;
        while (i < this.elementChangedListenerCount) {
            if (this.elementChangedListeners[i] == listener) {
                int length = this.elementChangedListeners.length;
                IElementChangedListener[] newListeners = new IElementChangedListener[length];
                System.arraycopy(this.elementChangedListeners, 0, newListeners, 0, i);
                int[] newMasks = new int[length];
                System.arraycopy(this.elementChangedListenerMasks, 0, newMasks, 0, i);
                int trailingLength = this.elementChangedListenerCount - i - 1;
                if (trailingLength > 0) {
                    System.arraycopy(this.elementChangedListeners, i + 1, newListeners, i, trailingLength);
                    System.arraycopy(this.elementChangedListenerMasks, i + 1, newMasks, i, trailingLength);
                }
                this.elementChangedListeners = newListeners;
                this.elementChangedListenerMasks = newMasks;
                --this.elementChangedListenerCount;
                return;
            }
            ++i;
        }
    }

    public synchronized void removePreResourceChangedListener(IResourceChangeListener listener) {
        int i = 0;
        while (i < this.preResourceChangeListenerCount) {
            if (this.preResourceChangeListeners[i] == listener) {
                int length = this.preResourceChangeListeners.length;
                IResourceChangeListener[] newListeners = new IResourceChangeListener[length];
                int[] newEventMasks = new int[length];
                System.arraycopy(this.preResourceChangeListeners, 0, newListeners, 0, i);
                System.arraycopy(this.preResourceChangeEventMasks, 0, newEventMasks, 0, i);
                int trailingLength = this.preResourceChangeListenerCount - i - 1;
                if (trailingLength > 0) {
                    System.arraycopy(this.preResourceChangeListeners, i + 1, newListeners, i, trailingLength);
                    System.arraycopy(this.preResourceChangeEventMasks, i + 1, newEventMasks, i, trailingLength);
                }
                this.preResourceChangeListeners = newListeners;
                this.preResourceChangeEventMasks = newEventMasks;
                --this.preResourceChangeListenerCount;
                return;
            }
            ++i;
        }
    }

    public void resourceChanged(final IResourceChangeEvent event) {
        int i = 0;
        while (i < this.preResourceChangeListenerCount) {
            final IResourceChangeListener listener = this.preResourceChangeListeners[i];
            if ((this.preResourceChangeEventMasks[i] & event.getType()) != 0) {
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                        Util.log(exception, "Exception occurred in listener of pre Java resource change notification");
                    }

                    public void run() throws Exception {
                        listener.resourceChanged(event);
                    }
                });
            }
            ++i;
        }
        try {
            this.getDeltaProcessor().resourceChanged(event);
        }
        finally {
            if (event.getType() == 1) {
                this.deltaProcessors.set(null);
            } else {
                this.getDeltaProcessor().overridenEventType = -1;
            }
        }
    }

    public Hashtable getExternalLibTimeStamps() {
        if (this.externalTimeStamps == null) {
            Hashtable<IPath, Long> timeStamps;
            block17: {
                timeStamps = new Hashtable<IPath, Long>();
                File timestampsFile = this.getTimeStampsFile();
                FilterInputStream in = null;
                try {
                    try {
                        in = new DataInputStream(new BufferedInputStream(new FileInputStream(timestampsFile)));
                        int size = ((DataInputStream)in).readInt();
                        while (size-- > 0) {
                            String key = ((DataInputStream)in).readUTF();
                            long timestamp = ((DataInputStream)in).readLong();
                            timeStamps.put(Path.fromPortableString((String)key), new Long(timestamp));
                        }
                    }
                    catch (IOException e) {
                        if (timestampsFile.exists()) {
                            Util.log(e, "Unable to read external time stamps");
                        }
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException iOException) {}
                        }
                        break block17;
                    }
                }
                catch (Throwable throwable) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (in != null) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                }
            }
            this.externalTimeStamps = timeStamps;
        }
        return this.externalTimeStamps;
    }

    public IJavaProject findJavaProject(String name) {
        if (this.getOldJavaProjecNames().contains(name)) {
            return JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject(name);
        }
        return null;
    }

    public synchronized HashSet getOldJavaProjecNames() {
        if (this.javaProjectNamesCache == null) {
            IJavaProject[] projects;
            HashSet<String> result = new HashSet<String>();
            try {
                projects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
            }
            catch (JavaModelException javaModelException) {
                return this.javaProjectNamesCache;
            }
            int i = 0;
            int length = projects.length;
            while (i < length) {
                IJavaProject project = projects[i];
                result.add(project.getElementName());
                ++i;
            }
            this.javaProjectNamesCache = result;
            return this.javaProjectNamesCache;
        }
        return this.javaProjectNamesCache;
    }

    public synchronized void resetOldJavaProjectNames() {
        this.javaProjectNamesCache = null;
    }

    private File getTimeStampsFile() {
        return JavaCore.getPlugin().getStateLocation().append("externalLibsTimeStamps").toFile();
    }

    public void saveExternalLibTimeStamps() throws CoreException {
        if (this.externalTimeStamps == null) {
            return;
        }
        HashSet toRemove = new HashSet();
        if (this.roots != null) {
            Enumeration keys = this.externalTimeStamps.keys();
            while (keys.hasMoreElements()) {
                Object key = keys.nextElement();
                if (this.roots.get(key) != null) continue;
                toRemove.add(key);
            }
        }
        File timestamps = this.getTimeStampsFile();
        FilterOutputStream out = null;
        try {
            try {
                out = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(timestamps)));
                ((DataOutputStream)out).writeInt(this.externalTimeStamps.size() - toRemove.size());
                Iterator entries = this.externalTimeStamps.entrySet().iterator();
                while (entries.hasNext()) {
                    Map.Entry entry = entries.next();
                    IPath key = (IPath)entry.getKey();
                    if (toRemove.contains(key)) continue;
                    ((DataOutputStream)out).writeUTF(key.toPortableString());
                    Long timestamp = (Long)entry.getValue();
                    ((DataOutputStream)out).writeLong(timestamp);
                }
            }
            catch (IOException e) {
                Status status = new Status(4, "org.eclipse.jdt.core", 4, "Problems while saving timestamps", (Throwable)e);
                throw new CoreException((IStatus)status);
            }
        }
        catch (Throwable throwable) {
            if (out != null) {
                try {
                    out.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (out != null) {
            try {
                out.close();
            }
            catch (IOException iOException) {}
        }
    }

    public synchronized void updateRoots(IPath containerPath, IResourceDelta containerDelta, DeltaProcessor deltaProcessor) {
        HashMap otherUpdatedRoots;
        HashMap updatedRoots;
        if (containerDelta.getKind() == 2) {
            updatedRoots = this.oldRoots;
            otherUpdatedRoots = this.oldOtherRoots;
        } else {
            updatedRoots = this.roots;
            otherUpdatedRoots = this.otherRoots;
        }
        int containerSegmentCount = containerPath.segmentCount();
        boolean containerIsProject = containerSegmentCount == 1;
        Iterator iterator = updatedRoots.entrySet().iterator();
        while (iterator.hasNext()) {
            ArrayList rootList;
            IResourceDelta rootDelta;
            Map.Entry entry = iterator.next();
            IPath path = (IPath)entry.getKey();
            if (!containerPath.isPrefixOf(path) || containerPath.equals((Object)path) || (rootDelta = containerDelta.findMember(path.removeFirstSegments(containerSegmentCount))) == null) continue;
            DeltaProcessor.RootInfo rootInfo = (DeltaProcessor.RootInfo)entry.getValue();
            if (!containerIsProject || !rootInfo.project.getPath().isPrefixOf(path)) {
                deltaProcessor.updateCurrentDeltaAndIndex(rootDelta, 3, rootInfo);
            }
            if ((rootList = (ArrayList)otherUpdatedRoots.get(path)) == null) continue;
            Iterator otherProjects = rootList.iterator();
            while (otherProjects.hasNext()) {
                rootInfo = (DeltaProcessor.RootInfo)otherProjects.next();
                if (containerIsProject && rootInfo.project.getPath().isPrefixOf(path)) continue;
                deltaProcessor.updateCurrentDeltaAndIndex(rootDelta, 3, rootInfo);
            }
        }
    }
}

