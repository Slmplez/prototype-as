/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.events.BuilderPersistentInfo;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.events.ResourceStats;
import org.eclipse.core.internal.localstore.SafeChunkyInputStream;
import org.eclipse.core.internal.localstore.SafeChunkyOutputStream;
import org.eclipse.core.internal.localstore.SafeFileInputStream;
import org.eclipse.core.internal.localstore.SafeFileOutputStream;
import org.eclipse.core.internal.resources.DelayedSnapshotJob;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.SaveContext;
import org.eclipse.core.internal.resources.SavedState;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceTreeReader;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.internal.utils.WrappedRuntimeException;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.ElementTreeWriter;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IElementInfoFlattener;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SaveManager
implements IElementInfoFlattener,
IManager,
IStringPoolParticipant {
    protected static final String ROOT_SEQUENCE_NUMBER_KEY = String.valueOf(Path.ROOT.toString()) + ".tree";
    protected static final String CLEAR_DELTA_PREFIX = "clearDelta_";
    protected static final String DELTA_EXPIRATION_PREFIX = "deltaExpiration_";
    protected static final int DONE_SAVING = 3;
    private static final long MIN_SNAPSHOT_DELAY = 30000L;
    protected static final int NO_OP_THRESHOLD = 20;
    protected static final int PREPARE_TO_SAVE = 1;
    protected static final int ROLLBACK = 4;
    protected static final String SAVE_NUMBER_PREFIX = "saveNumber_";
    protected static final int SAVING = 2;
    protected ElementTree lastSnap;
    protected MasterTable masterTable;
    private boolean isSaving = false;
    protected int noopCount = 0;
    protected int operationCount = 0;
    protected long persistMarkers = 0L;
    protected long persistSyncInfo = 0L;
    protected Map<String, SavedState> savedStates;
    protected Map<String, ISaveParticipant> saveParticipants;
    protected final DelayedSnapshotJob snapshotJob;
    protected boolean snapshotRequested;
    protected Workspace workspace;
    private static final String DEBUG_START = " starting...";
    private static final String DEBUG_FULL_SAVE = "Full save on workspace: ";
    private static final String DEBUG_PROJECT_SAVE = "Save on project ";
    private static final String DEBUG_SNAPSHOT = "Snapshot: ";
    private static final int TREE_BUFFER_SIZE = 65536;

    public SaveManager(Workspace workspace) {
        this.workspace = workspace;
        this.snapshotJob = new DelayedSnapshotJob(this);
        this.snapshotRequested = false;
        this.saveParticipants = Collections.synchronizedMap(new HashMap(10));
    }

    public ISavedState addParticipant(String pluginId, ISaveParticipant participant) throws CoreException {
        if (this.saveParticipants.put(pluginId, participant) != null) {
            return null;
        }
        SavedState state = this.savedStates.get(pluginId);
        if (state != null) {
            if (this.isDeltaCleared(pluginId)) {
                state.forgetTrees();
                this.removeClearDeltaMarks(pluginId);
            } else {
                try {
                    this.workspace.prepareOperation(null, null);
                    this.workspace.beginOperation(true);
                    state.newTree = this.workspace.getElementTree();
                }
                finally {
                    this.workspace.endOperation(null, false, null);
                }
                return state;
            }
        }
        if (this.getSaveNumber(pluginId) > 0) {
            return new SavedState(this.workspace, pluginId, null, null);
        }
        return null;
    }

    protected void broadcastLifecycle(final int lifecycle, Map<String, SaveContext> contexts, final MultiStatus warnings, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", contexts.size());
            final Iterator<Map.Entry<String, SaveContext>> it = contexts.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, SaveContext> entry = it.next();
                String pluginId = entry.getKey();
                final ISaveParticipant participant = this.saveParticipants.get(pluginId);
                if (participant == null) {
                    monitor.worked(1);
                    continue;
                }
                final SaveContext context = entry.getValue();
                ISafeRunnable code = new ISafeRunnable(){

                    public void handleException(Throwable e) {
                        String message = Messages.resources_saveProblem;
                        Status status = new Status(2, "org.eclipse.core.resources", 566, message, e);
                        warnings.add((IStatus)status);
                        it.remove();
                    }

                    public void run() throws Exception {
                        SaveManager.this.executeLifecycle(lifecycle, participant, context);
                    }
                };
                SafeRunner.run((ISafeRunnable)code);
                monitor.worked(1);
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void clearDeltaExpiration(String pluginId) {
        this.masterTable.remove(DELTA_EXPIRATION_PREFIX + pluginId);
    }

    protected void cleanMasterTable() {
        Iterator it = this.masterTable.keySet().iterator();
        while (it.hasNext()) {
            IProject project;
            String prefix;
            String key = (String)it.next();
            if (!key.endsWith(".tree") || (prefix = key.substring(0, key.length() - ".tree".length())).equals(Path.ROOT.toString()) || (project = this.workspace.getRoot().getProject(prefix)).exists() && !project.isOpen()) continue;
            it.remove();
        }
        IPath location = this.workspace.getMetaArea().getSafeTableLocationFor("org.eclipse.core.resources");
        IPath backup = this.workspace.getMetaArea().getBackupLocationFor(location);
        try {
            this.saveMasterTable(backup);
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
            backup.toFile().delete();
            return;
        }
        if (location.toFile().exists() && !location.toFile().delete()) {
            return;
        }
        try {
            this.saveMasterTable(location);
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
            location.toFile().delete();
            return;
        }
        backup.toFile().delete();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void clearSavedDelta() {
        Map<String, ISaveParticipant> map = this.saveParticipants;
        synchronized (map) {
            for (String pluginId : this.saveParticipants.keySet()) {
                this.masterTable.setProperty(CLEAR_DELTA_PREFIX + pluginId, "true");
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void collapseTrees(Map<String, SaveContext> contexts) throws CoreException {
        Map<String, SavedState> map = this.savedStates;
        synchronized (map) {
            for (SaveContext context : contexts.values()) {
                this.forgetSavedTree(context.getPluginId());
            }
        }
        ArrayList<ElementTree> trees = new ArrayList<ElementTree>();
        Map<String, SavedState> i = this.savedStates;
        synchronized (i) {
            for (SavedState state : this.savedStates.values()) {
                if (state.oldTree == null) continue;
                trees.add(state.oldTree);
            }
        }
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int i2 = 0;
        while (i2 < projects.length) {
            ArrayList<BuilderPersistentInfo> builderInfos;
            IProject project = projects[i2];
            if (project.isOpen() && (builderInfos = this.workspace.getBuildManager().createBuildersPersistentInfo(project)) != null) {
                for (BuilderPersistentInfo info : builderInfos) {
                    trees.add(info.getLastBuiltTree());
                }
            }
            ++i2;
        }
        if (trees.isEmpty()) {
            return;
        }
        trees.add(this.workspace.getElementTree());
        ElementTree[] treeArray = new ElementTree[trees.size()];
        trees.toArray(treeArray);
        ElementTree[] sorted = this.sortTrees(treeArray);
        if (sorted == null) {
            return;
        }
        int i3 = 1;
        while (i3 < sorted.length) {
            sorted[i3].collapseTo(sorted[i3 - 1]);
            ++i3;
        }
    }

    protected void commit(Map<String, SaveContext> contexts) throws CoreException {
        Iterator<SaveContext> i = contexts.values().iterator();
        while (i.hasNext()) {
            i.next().commit();
        }
    }

    protected Map<String, SaveContext> computeSaveContexts(String[] pluginIds, int kind, IProject project) {
        HashMap<String, SaveContext> result = new HashMap<String, SaveContext>(pluginIds.length);
        int i = 0;
        while (i < pluginIds.length) {
            String pluginId = pluginIds[i];
            try {
                SaveContext context = new SaveContext(pluginId, kind, project);
                result.put(pluginId, context);
            }
            catch (CoreException e) {
                Policy.log(e.getStatus());
            }
            ++i;
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected Map<String, ElementTree> computeStatesToSave(Map<String, SaveContext> contexts, ElementTree current) {
        HashMap<String, ElementTree> result = new HashMap<String, ElementTree>(this.savedStates.size() * 2);
        Map<String, SavedState> map = this.savedStates;
        synchronized (map) {
            for (SavedState state : this.savedStates.values()) {
                if (state.oldTree == null) continue;
                result.put(state.pluginId, state.oldTree);
            }
        }
        for (SaveContext context : contexts.values()) {
            if (!context.isDeltaNeeded()) continue;
            String pluginId = context.getPluginId();
            result.put(pluginId, current);
        }
        return result;
    }

    protected void executeLifecycle(int lifecycle, ISaveParticipant participant, SaveContext context) throws CoreException {
        switch (lifecycle) {
            case 1: {
                participant.prepareToSave(context);
                break;
            }
            case 2: {
                try {
                    if (ResourceStats.TRACE_SAVE_PARTICIPANTS) {
                        ResourceStats.startSave(participant);
                    }
                    participant.saving(context);
                    break;
                }
                finally {
                    if (ResourceStats.TRACE_SAVE_PARTICIPANTS) {
                        ResourceStats.endSave();
                    }
                }
            }
            case 3: {
                participant.doneSaving(context);
                break;
            }
            case 4: {
                participant.rollback(context);
                break;
            }
            default: {
                Assert.isTrue((boolean)false, (String)"Invalid save lifecycle code");
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void forgetSavedTree(String pluginId) {
        if (pluginId == null) {
            Map<String, SavedState> map = this.savedStates;
            synchronized (map) {
                Iterator<SavedState> i = this.savedStates.values().iterator();
                while (i.hasNext()) {
                    i.next().forgetTrees();
                }
            }
        } else {
            SavedState state = this.savedStates.get(pluginId);
            if (state != null) {
                state.forgetTrees();
            }
        }
    }

    protected long getDeltaExpiration(String pluginId) {
        String result = this.masterTable.getProperty(DELTA_EXPIRATION_PREFIX + pluginId);
        return result == null ? System.currentTimeMillis() : new Long(result);
    }

    protected Properties getMasterTable() {
        return this.masterTable;
    }

    public int getSaveNumber(String pluginId) {
        String value = this.masterTable.getProperty(SAVE_NUMBER_PREFIX + pluginId);
        return value == null ? 0 : new Integer(value);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected String[] getSaveParticipantPluginIds() {
        Map<String, ISaveParticipant> map = this.saveParticipants;
        synchronized (map) {
            return this.saveParticipants.keySet().toArray(new String[this.saveParticipants.size()]);
        }
    }

    private void hookEndSave(int kind, IProject project, long start) {
        if (ResourceStats.TRACE_SNAPSHOT && kind == 2) {
            ResourceStats.endSnapshot();
        }
        if (Policy.DEBUG_SAVE) {
            String endMessage = null;
            switch (kind) {
                case 1: {
                    endMessage = DEBUG_FULL_SAVE;
                    break;
                }
                case 2: {
                    endMessage = DEBUG_SNAPSHOT;
                    break;
                }
                case 3: {
                    endMessage = DEBUG_PROJECT_SAVE + project.getFullPath() + ": ";
                }
            }
            if (endMessage != null) {
                System.out.println(String.valueOf(endMessage) + (System.currentTimeMillis() - start) + "ms");
            }
        }
    }

    private void hookStartSave(int kind, Project project) {
        if (ResourceStats.TRACE_SNAPSHOT && kind == 2) {
            ResourceStats.startSnapshot();
        }
        if (Policy.DEBUG_SAVE) {
            switch (kind) {
                case 1: {
                    System.out.println("Full save on workspace:  starting...");
                    break;
                }
                case 2: {
                    System.out.println("Snapshot:  starting...");
                    break;
                }
                case 3: {
                    System.out.println(DEBUG_PROJECT_SAVE + project.getFullPath() + DEBUG_START);
                }
            }
        }
    }

    protected void initSnap(IProgressMonitor monitor) throws CoreException {
        this.snapshotJob.cancel();
        this.lastSnap = this.workspace.getElementTree();
        this.lastSnap.immutable();
        this.workspace.newWorkingTree();
        this.operationCount = 0;
        IPath snapPath = this.workspace.getMetaArea().getSnapshotLocationFor(this.workspace.getRoot());
        File file = snapPath.toFile();
        if (file.exists()) {
            file.delete();
        }
        if (file.exists()) {
            String message = Messages.resources_snapInit;
            throw new ResourceException(569, null, message, null);
        }
    }

    protected boolean isDeltaCleared(String pluginId) {
        String clearDelta = this.masterTable.getProperty(CLEAR_DELTA_PREFIX + pluginId);
        return clearDelta != null && clearDelta.equals("true");
    }

    protected boolean isOldPluginTree(String pluginId) {
        if (this.isDeltaCleared(pluginId)) {
            return false;
        }
        if (Platform.getBundle((String)pluginId) == null) {
            return true;
        }
        long deltaAge = System.currentTimeMillis() - this.getDeltaExpiration(pluginId);
        return deltaAge > this.workspace.internalGetDescription().getDeltaExpiration();
    }

    @Override
    public Object readElement(IPath path, DataInput input) throws IOException {
        Assert.isNotNull((Object)path);
        Assert.isNotNull((Object)input);
        int flags = input.readInt();
        int type = (flags & 0xF00) >> 8;
        ResourceInfo info = this.workspace.newElement(type);
        info.readFrom(flags, input);
        return info;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeClearDeltaMarks() {
        Map<String, ISaveParticipant> map = this.saveParticipants;
        synchronized (map) {
            for (String pluginId : this.saveParticipants.keySet()) {
                this.removeClearDeltaMarks(pluginId);
            }
        }
    }

    protected void removeClearDeltaMarks(String pluginId) {
        this.masterTable.setProperty(CLEAR_DELTA_PREFIX + pluginId, "false");
    }

    protected void removeFiles(File root, String[] candidates, List<String> exclude) {
        int i = 0;
        while (i < candidates.length) {
            boolean delete = true;
            ListIterator<String> it = exclude.listIterator();
            while (it.hasNext()) {
                String s = it.next();
                if (!s.equals(candidates[i])) continue;
                it.remove();
                delete = false;
                break;
            }
            if (delete) {
                new File(root, candidates[i]).delete();
            }
            ++i;
        }
    }

    private void removeGarbage(DataOutputStream output, IPath location, IPath tempLocation) throws IOException {
        if (output.size() == 0) {
            output.close();
            location.toFile().delete();
            tempLocation.toFile().delete();
        }
    }

    public void removeParticipant(String pluginId) {
        this.saveParticipants.remove(pluginId);
    }

    protected void removeUnusedSafeTables() {
        ArrayList<String> valuables = new ArrayList<String>(10);
        IPath location = this.workspace.getMetaArea().getSafeTableLocationFor("org.eclipse.core.resources");
        valuables.add(location.lastSegment());
        Enumeration e = this.masterTable.keys();
        while (e.hasMoreElements()) {
            String key = (String)e.nextElement();
            if (!key.startsWith(SAVE_NUMBER_PREFIX)) continue;
            String pluginId = key.substring(SAVE_NUMBER_PREFIX.length());
            valuables.add(this.workspace.getMetaArea().getSafeTableLocationFor(pluginId).lastSegment());
        }
        File target = location.toFile().getParentFile();
        String[] candidates = target.list();
        if (candidates == null) {
            return;
        }
        this.removeFiles(target, candidates, valuables);
    }

    protected void removeUnusedTreeFiles() {
        ArrayList<String> valuables = new ArrayList<String>(10);
        IPath location = this.workspace.getMetaArea().getTreeLocationFor(this.workspace.getRoot(), false);
        valuables.add(location.lastSegment());
        File target = location.toFile().getParentFile();
        FilenameFilter filter = new FilenameFilter(){

            public boolean accept(File dir, String name) {
                return name.endsWith(".tree");
            }
        };
        String[] candidates = target.list(filter);
        if (candidates != null) {
            this.removeFiles(target, candidates, valuables);
        }
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < projects.length) {
            location = this.workspace.getMetaArea().getTreeLocationFor(projects[i], false);
            valuables.add(location.lastSegment());
            target = location.toFile().getParentFile();
            candidates = target.list(filter);
            if (candidates != null) {
                this.removeFiles(target, candidates, valuables);
            }
            ++i;
        }
    }

    public void requestSnapshot() {
        this.snapshotRequested = true;
    }

    protected void resetSnapshots(IResource resource) throws CoreException {
        Assert.isLegal((resource.getType() == 8 || resource.getType() == 4 ? 1 : 0) != 0);
        File file = this.workspace.getMetaArea().getMarkersSnapshotLocationFor(resource).toFile();
        if (file.exists()) {
            file.delete();
        }
        if (file.exists()) {
            String message = Messages.resources_resetMarkers;
            throw new ResourceException(569, resource.getFullPath(), message, null);
        }
        file = this.workspace.getMetaArea().getSyncInfoSnapshotLocationFor(resource).toFile();
        if (file.exists()) {
            file.delete();
        }
        if (file.exists()) {
            String message = Messages.resources_resetSync;
            throw new ResourceException(569, resource.getFullPath(), message, null);
        }
        if (resource.getType() == 4) {
            return;
        }
        IProject[] projects = ((IWorkspaceRoot)resource).getProjects(8);
        int i = 0;
        while (i < projects.length) {
            this.resetSnapshots(projects[i]);
            ++i;
        }
    }

    protected void restore(IProgressMonitor monitor) throws CoreException {
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore workspace: starting...");
        }
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 50);
            this.workspace.newWorkingTree();
            try {
                String msg = Messages.resources_startupProblems;
                MultiStatus problems = new MultiStatus("org.eclipse.core.resources", 567, msg, null);
                this.restoreMasterTable();
                this.restoreTree(Policy.subMonitorFor(monitor, 10));
                this.restoreSnapshots(Policy.subMonitorFor(monitor, 10));
                try {
                    this.restoreMarkers(this.workspace.getRoot(), false, Policy.subMonitorFor(monitor, 10));
                }
                catch (CoreException e) {
                    problems.merge(e.getStatus());
                }
                try {
                    this.restoreSyncInfo(this.workspace.getRoot(), Policy.subMonitorFor(monitor, 10));
                }
                catch (CoreException e) {
                    problems.merge(e.getStatus());
                }
                this.restoreMetaInfo(problems, Policy.subMonitorFor(monitor, 10));
                IProject[] roots = this.workspace.getRoot().getProjects(8);
                int i = 0;
                while (i < roots.length) {
                    ((Project)roots[i]).startup();
                    ++i;
                }
                if (!problems.isOK()) {
                    Policy.log((IStatus)problems);
                }
            }
            finally {
                this.workspace.getElementTree().immutable();
            }
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore workspace: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected boolean restore(Project project, IProgressMonitor monitor) throws CoreException {
        boolean status = true;
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore project " + project.getFullPath() + ": starting...");
        }
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 40);
            if (project.isOpen()) {
                status = this.restoreTree(project, Policy.subMonitorFor(monitor, 10));
            } else {
                monitor.worked(10);
            }
            this.restoreMarkers(project, true, Policy.subMonitorFor(monitor, 10));
            this.restoreSyncInfo(project, Policy.subMonitorFor(monitor, 10));
            this.restoreMetaInfo(project, Policy.subMonitorFor(monitor, 10));
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore project " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
        return status;
    }

    protected boolean restoreFromRefreshSnapshot(Project project, IProgressMonitor monitor) throws CoreException {
        boolean status = true;
        IPath snapshotPath = this.workspace.getMetaArea().getRefreshLocationFor(project);
        File snapshotFile = snapshotPath.toFile();
        if (!snapshotFile.exists()) {
            return false;
        }
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore project " + project.getFullPath() + ": starting...");
        }
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 40);
            status = this.restoreTreeFromRefreshSnapshot(project, snapshotFile, Policy.subMonitorFor(monitor, 40));
            if (status) {
                ProjectDescription description = this.workspace.getFileSystemManager().read(project, true);
                project.internalSetDescription(description, false);
                this.workspace.getMetaArea().clearRefresh(project);
            }
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE) {
            System.out.println("Restore project " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
        return status;
    }

    protected void restoreMarkers(IResource resource, boolean generateDeltas, IProgressMonitor monitor) throws CoreException {
        Assert.isLegal((resource.getType() == 8 || resource.getType() == 4 ? 1 : 0) != 0);
        long start = System.currentTimeMillis();
        MarkerManager markerManager = this.workspace.getMarkerManager();
        if (resource.isAccessible()) {
            markerManager.restore(resource, generateDeltas, monitor);
        }
        if (resource.getType() == 4) {
            if (Policy.DEBUG_RESTORE_MARKERS) {
                System.out.println("Restore Markers for " + resource.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
            }
            return;
        }
        IProject[] projects = ((IWorkspaceRoot)resource).getProjects(8);
        int i = 0;
        while (i < projects.length) {
            if (projects[i].isAccessible()) {
                markerManager.restore(projects[i], generateDeltas, monitor);
            }
            ++i;
        }
        if (Policy.DEBUG_RESTORE_MARKERS) {
            System.out.println("Restore Markers for workspace: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreMasterTable() throws CoreException {
        long start = System.currentTimeMillis();
        this.masterTable = new MasterTable();
        IPath location = this.workspace.getMetaArea().getSafeTableLocationFor("org.eclipse.core.resources");
        File target = location.toFile();
        if (!target.exists() && !(target = (location = this.workspace.getMetaArea().getBackupLocationFor(location)).toFile()).exists()) {
            return;
        }
        try {
            SafeChunkyInputStream input = new SafeChunkyInputStream(target);
            try {
                this.masterTable.load(input);
            }
            finally {
                input.close();
            }
        }
        catch (IOException e) {
            String message = Messages.resources_exMasterTable;
            throw new ResourceException(566, null, message, e);
        }
        if (Policy.DEBUG_RESTORE_MASTERTABLE) {
            System.out.println("Restore master table for " + location + ": " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreMetaInfo(MultiStatus problems, IProgressMonitor monitor) {
        if (Policy.DEBUG_RESTORE_METAINFO) {
            System.out.println("Restore workspace metainfo: starting...");
        }
        long start = System.currentTimeMillis();
        IProject[] roots = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < roots.length) {
            try {
                this.restoreMetaInfo((Project)roots[i], monitor);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.resources_readMeta, (Object)roots[i].getName());
                problems.merge((IStatus)new ResourceStatus(567, roots[i].getFullPath(), message, e));
            }
            ++i;
        }
        if (Policy.DEBUG_RESTORE_METAINFO) {
            System.out.println("Restore workspace metainfo: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreMetaInfo(Project project, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        ProjectDescription description = null;
        CoreException failure = null;
        try {
            description = project.isOpen() ? this.workspace.getFileSystemManager().read(project, true) : this.workspace.getMetaArea().readOldDescription(project);
        }
        catch (CoreException e) {
            failure = e;
        }
        if (description == null) {
            description = new ProjectDescription();
            description.setName(project.getName());
            this.workspace.getMetaArea().readPrivateDescription(project, description);
        }
        project.internalSetDescription(description, false);
        if (failure != null) {
            this.writeTree(project, 2);
            project.internalClose();
            throw failure;
        }
        if (Policy.DEBUG_RESTORE_METAINFO) {
            System.out.println("Restore metainfo for " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreSnapshots(IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            IPath snapLocation = this.workspace.getMetaArea().getSnapshotLocationFor(this.workspace.getRoot());
            File localFile = snapLocation.toFile();
            if (!localFile.exists()) {
                this.initSnap(Policy.subMonitorFor(monitor, 50));
                return;
            }
            this.workspace.setCrashed(true);
            try {
                ElementTree complete = this.workspace.getElementTree();
                complete.immutable();
                DataInputStream input = new DataInputStream(new SafeChunkyInputStream(localFile));
                try {
                    WorkspaceTreeReader reader = WorkspaceTreeReader.getReader(this.workspace, input.readInt());
                    complete = reader.readSnapshotTree(input, complete, monitor);
                }
                finally {
                    FileUtil.safeClose(input);
                    this.lastSnap = complete;
                    this.workspace.tree = complete = complete.newEmptyDelta();
                }
            }
            catch (Exception e) {
                String message = Messages.resources_snapRead;
                Policy.log(new ResourceStatus(567, null, message, e));
            }
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE_SNAPSHOTS) {
            System.out.println("Restore snapshots for workspace: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreSyncInfo(IResource resource, IProgressMonitor monitor) throws CoreException {
        Assert.isLegal((resource.getType() == 8 || resource.getType() == 4 ? 1 : 0) != 0);
        long start = System.currentTimeMillis();
        Synchronizer synchronizer = (Synchronizer)this.workspace.getSynchronizer();
        if (resource.isAccessible()) {
            synchronizer.restore(resource, monitor);
        }
        if (resource.getType() == 4) {
            if (Policy.DEBUG_RESTORE_SYNCINFO) {
                System.out.println("Restore SyncInfo for " + resource.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
            }
            return;
        }
        IProject[] projects = ((IWorkspaceRoot)resource).getProjects(8);
        int i = 0;
        while (i < projects.length) {
            if (projects[i].isAccessible()) {
                synchronizer.restore(projects[i], monitor);
            }
            ++i;
        }
        if (Policy.DEBUG_RESTORE_SYNCINFO) {
            System.out.println("Restore SyncInfo for workspace: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void restoreTree(IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        IPath treeLocation = this.workspace.getMetaArea().getTreeLocationFor(this.workspace.getRoot(), false);
        IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(treeLocation);
        if (!treeLocation.toFile().exists() && !tempLocation.toFile().exists()) {
            this.savedStates = Collections.synchronizedMap(new HashMap(10));
            return;
        }
        try {
            DataInputStream input = new DataInputStream(new SafeFileInputStream(treeLocation.toOSString(), tempLocation.toOSString(), 65536));
            try {
                WorkspaceTreeReader.getReader(this.workspace, input.readInt()).readTree(input, monitor);
            }
            finally {
                input.close();
            }
        }
        catch (IOException e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)treeLocation.toOSString());
            throw new ResourceException(567, treeLocation, msg, e);
        }
        if (Policy.DEBUG_RESTORE_TREE) {
            System.out.println("Restore Tree for workspace: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected boolean restoreTree(Project project, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            IPath treeLocation = this.workspace.getMetaArea().getTreeLocationFor(project, false);
            IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(treeLocation);
            if (!treeLocation.toFile().exists() && !tempLocation.toFile().exists()) {
                return false;
            }
            try {
                DataInputStream input = new DataInputStream(new SafeFileInputStream(treeLocation.toOSString(), tempLocation.toOSString()));
                try {
                    WorkspaceTreeReader reader = WorkspaceTreeReader.getReader(this.workspace, input.readInt());
                    reader.readTree(project, input, Policy.subMonitorFor(monitor, 100));
                }
                finally {
                    input.close();
                }
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.resources_readMeta, (Object)project.getFullPath());
                throw new ResourceException(567, project.getFullPath(), message, e);
            }
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE_TREE) {
            System.out.println("Restore Tree for " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
        return true;
    }

    protected boolean restoreTreeFromRefreshSnapshot(Project project, File snapshotFile, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        Path snapshotPath = null;
        try {
            monitor.beginTask("", 100);
            FileInputStream snapIn = new FileInputStream(snapshotFile);
            ZipInputStream zip = new ZipInputStream(snapIn);
            ZipEntry treeEntry = zip.getNextEntry();
            if (treeEntry == null || !treeEntry.getName().equals("resource-index.tree")) {
                zip.close();
                return false;
            }
            try {
                DataInputStream input = new DataInputStream(zip);
                try {
                    WorkspaceTreeReader reader = WorkspaceTreeReader.getReader(this.workspace, input.readInt(), true);
                    reader.readTree(project, input, Policy.subMonitorFor(monitor, 100));
                }
                finally {
                    input.close();
                    zip.close();
                }
            }
            catch (IOException e) {
                snapshotPath = new Path(snapshotFile.getPath());
                String message = NLS.bind((String)Messages.resources_readMeta, (Object)snapshotPath);
                throw new ResourceException(567, (IPath)snapshotPath, message, e);
            }
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_RESTORE_TREE) {
            System.out.println("Restore Tree for " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
        return true;
    }

    public IStatus save(int kind, Project project, IProgressMonitor monitor) throws CoreException {
        return this.save(kind, false, project, monitor);
    }

    /*
     * Exception decompiling
     */
    public IStatus save(int kind, boolean keepConsistencyWhenCanceled, Project project, IProgressMonitor parentMonitor) throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    protected void saveMasterTable() throws CoreException {
        this.saveMasterTable(this.workspace.getMetaArea().getSafeTableLocationFor("org.eclipse.core.resources"));
    }

    protected void saveMasterTable(IPath location) throws CoreException {
        long start = System.currentTimeMillis();
        File target = location.toFile();
        try {
            SafeChunkyOutputStream output = new SafeChunkyOutputStream(target);
            try {
                this.masterTable.store(output, "master table");
                output.succeed();
                output.close();
            }
            finally {
                FileUtil.safeClose(output);
            }
        }
        catch (IOException e) {
            throw new ResourceException(566, null, NLS.bind((String)Messages.resources_exSaveMaster, (Object)location.toOSString()), e);
        }
        if (Policy.DEBUG_SAVE_MASTERTABLE) {
            System.out.println("Save master table for " + location + ": " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void saveMetaInfo(MultiStatus problems, IProgressMonitor monitor) throws CoreException {
        if (Policy.DEBUG_SAVE_METAINFO) {
            System.out.println("Save workspace metainfo: starting...");
        }
        long start = System.currentTimeMillis();
        ResourcesPlugin.getPlugin().savePluginPreferences();
        IProject[] roots = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < roots.length) {
            IStatus result;
            if (roots[i].isAccessible() && !(result = this.saveMetaInfo((Project)roots[i], null)).isOK()) {
                problems.merge(result);
            }
            ++i;
        }
        if (Policy.DEBUG_SAVE_METAINFO) {
            System.out.println("Save workspace metainfo: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected IStatus saveMetaInfo(Project project, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        if (!this.workspace.getFileSystemManager().hasSavedDescription(project)) {
            this.workspace.getFileSystemManager().writeSilently(project);
            String msg = NLS.bind((String)Messages.resources_missingProjectMetaRepaired, (Object)project.getName());
            return new ResourceStatus(234, project.getFullPath(), msg);
        }
        if (Policy.DEBUG_SAVE_METAINFO) {
            System.out.println("Save metainfo for " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
        return Status.OK_STATUS;
    }

    public void saveRefreshSnapshot(Project project, URI snapshotLocation, IProgressMonitor monitor) throws CoreException {
        IFileStore store = EFS.getStore((URI)snapshotLocation);
        Path snapshotPath = new Path(snapshotLocation.getPath());
        File tmpTree = null;
        try {
            tmpTree = File.createTempFile("tmp", ".tree");
        }
        catch (IOException e) {
            throw new ResourceException(272, (IPath)snapshotPath, Messages.resources_copyProblem, e);
        }
        ZipOutputStream out = null;
        try {
            try {
                FileOutputStream fis = new FileOutputStream(tmpTree);
                DataOutputStream output = new DataOutputStream(fis);
                try {
                    output.writeInt(67305986);
                    this.writeTree(project, output, monitor);
                    output.close();
                }
                finally {
                    FileUtil.safeClose(output);
                }
                OutputStream snapOut = store.openOutputStream(0, monitor);
                out = new ZipOutputStream(snapOut);
                out.setLevel(9);
                ZipEntry e = new ZipEntry("resource-index.tree");
                out.putNextEntry(e);
                int read = 0;
                byte[] buffer = new byte[4096];
                FileInputStream in = new FileInputStream(tmpTree);
                try {
                    while ((read = ((InputStream)in).read(buffer)) >= 0) {
                        out.write(buffer, 0, read);
                    }
                    out.closeEntry();
                    ((InputStream)in).close();
                }
                finally {
                    FileUtil.safeClose(in);
                }
                out.close();
            }
            catch (IOException e) {
                throw new ResourceException(272, (IPath)snapshotPath, Messages.resources_copyProblem, e);
            }
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(out);
            if (tmpTree != null) {
                tmpTree.delete();
            }
            throw throwable;
        }
        FileUtil.safeClose(out);
        if (tmpTree != null) {
            tmpTree.delete();
        }
    }

    protected void saveTree(Map<String, SaveContext> contexts, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        IPath treeLocation = this.workspace.getMetaArea().getTreeLocationFor(this.workspace.getRoot(), true);
        try {
            IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(treeLocation);
            DataOutputStream output = new DataOutputStream(new SafeFileOutputStream(treeLocation.toOSString(), tempLocation.toOSString()));
            try {
                output.writeInt(67305986);
                this.writeTree(this.computeStatesToSave(contexts, this.workspace.getElementTree()), output, monitor);
                output.close();
            }
            finally {
                FileUtil.safeClose(output);
            }
        }
        catch (Exception e) {
            String msg = NLS.bind((String)Messages.resources_writeWorkspaceMeta, (Object)treeLocation);
            throw new ResourceException(568, (IPath)Path.ROOT, msg, e);
        }
        if (Policy.DEBUG_SAVE_TREE) {
            System.out.println("Save Workspace Tree: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    void setPluginsSavedState(HashMap<String, SavedState> savedStates) {
        this.savedStates = Collections.synchronizedMap(savedStates);
    }

    protected void setSaveNumber(String pluginId, int number) {
        this.masterTable.setProperty(SAVE_NUMBER_PREFIX + pluginId, new Integer(number).toString());
    }

    @Override
    public void shareStrings(StringPool pool) {
        this.lastSnap.shareStrings(pool);
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
        int state = this.snapshotJob.getState();
        if (state == 2 || state == 1) {
            this.snapshotJob.run(Policy.monitorFor(monitor));
        }
        this.snapshotJob.cancel();
    }

    public void snapshotIfNeeded(boolean hasTreeChanges) {
        if (this.isSaving) {
            return;
        }
        if (this.snapshotRequested || this.operationCount >= this.workspace.internalGetDescription().getOperationsPerSnapshot()) {
            if (this.snapshotJob.getState() == 0) {
                this.snapshotJob.schedule();
            } else {
                this.snapshotJob.wakeUp();
            }
        } else if (hasTreeChanges) {
            ++this.operationCount;
            if (this.snapshotJob.getState() == 0) {
                if (Policy.DEBUG_SAVE) {
                    System.out.println("Scheduling workspace snapshot");
                }
                long interval = this.workspace.internalGetDescription().getSnapshotInterval();
                this.snapshotJob.schedule(Math.max(interval, 30000L));
            }
        } else if (++this.noopCount > 20) {
            ++this.operationCount;
            this.noopCount = 0;
        }
    }

    protected void snapTree(ElementTree tree, IProgressMonitor monitor) throws CoreException {
        long start = System.currentTimeMillis();
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            tree.immutable();
            if (tree == this.lastSnap) {
                return;
            }
            this.operationCount = 0;
            IPath snapPath = this.workspace.getMetaArea().getSnapshotLocationFor(this.workspace.getRoot());
            ElementTreeWriter writer = new ElementTreeWriter(this);
            File localFile = snapPath.toFile();
            try {
                SafeChunkyOutputStream safeStream = new SafeChunkyOutputStream(localFile);
                DataOutputStream out = new DataOutputStream(safeStream);
                try {
                    out.writeInt(67305986);
                    this.writeWorkspaceFields(out, monitor);
                    writer.writeDelta(tree, this.lastSnap, (IPath)Path.ROOT, -1, out, ResourceComparator.getSaveComparator());
                    safeStream.succeed();
                }
                finally {
                    out.close();
                }
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.resources_writeWorkspaceMeta, (Object)localFile.getAbsolutePath());
                throw new ResourceException(568, (IPath)Path.ROOT, message, e);
            }
            this.lastSnap = tree;
        }
        finally {
            monitor.done();
        }
        if (Policy.DEBUG_SAVE_TREE) {
            System.out.println("Snapshot Workspace Tree: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected ElementTree[] sortTrees(ElementTree[] trees) {
        int numTrees = trees.length;
        ElementTree[] sorted = new ElementTree[numTrees];
        HashMap<ElementTree, ArrayList<Integer>> table = new HashMap<ElementTree, ArrayList<Integer>>(numTrees * 2 + 1);
        int i = 0;
        while (i < trees.length) {
            ArrayList<Integer> indices = (ArrayList<Integer>)table.get(trees[i]);
            if (indices == null) {
                indices = new ArrayList<Integer>(10);
                table.put(trees[i], indices);
            }
            indices.add(new Integer(i));
            ++i;
        }
        ElementTree oldest = trees[ElementTree.findOldest(trees)];
        int i2 = numTrees - 1;
        while (i2 >= 0) {
            List indices = (List)table.remove(oldest);
            Enumeration e = Collections.enumeration(indices);
            while (e.hasMoreElements()) {
                e.nextElement();
                sorted[i2] = oldest;
                --i2;
            }
            if (i2 < 0) continue;
            ElementTree parent = oldest.getParent();
            while (parent != null && table.get(parent) == null) {
                parent = parent.getParent();
            }
            if (parent == null) {
                Status status = new Status(2, "org.eclipse.core.resources", 566, "null parent found while collapsing trees", null);
                Policy.log((IStatus)status);
                return null;
            }
            oldest = parent;
        }
        return sorted;
    }

    @Override
    public void startup(IProgressMonitor monitor) throws CoreException {
        this.restore(monitor);
        File table = this.workspace.getMetaArea().getSafeTableLocationFor("org.eclipse.core.resources").toFile();
        if (!table.exists()) {
            table.getParentFile().mkdirs();
        }
    }

    protected void updateDeltaExpiration(String pluginId) {
        String key = DELTA_EXPIRATION_PREFIX + pluginId;
        if (!this.masterTable.containsKey(key)) {
            this.masterTable.setProperty(key, Long.toString(System.currentTimeMillis()));
        }
    }

    public void visitAndSave(final IResource root) throws CoreException {
        Assert.isLegal((root.getType() == 8 || root.getType() == 4 ? 1 : 0) != 0);
        if (!root.isAccessible()) {
            return;
        }
        final Synchronizer synchronizer = (Synchronizer)this.workspace.getSynchronizer();
        final MarkerManager markerManager = this.workspace.getMarkerManager();
        IPath markersLocation = this.workspace.getMetaArea().getMarkersLocationFor(root);
        IPath markersTempLocation = this.workspace.getMetaArea().getBackupLocationFor(markersLocation);
        IPath syncInfoLocation = this.workspace.getMetaArea().getSyncInfoLocationFor(root);
        IPath syncInfoTempLocation = this.workspace.getMetaArea().getBackupLocationFor(syncInfoLocation);
        final ArrayList writtenTypes = new ArrayList(5);
        final ArrayList writtenPartners = new ArrayList(synchronizer.registry.size());
        DataOutputStream o1 = null;
        DataOutputStream o2 = null;
        try {
            o1 = new DataOutputStream(new SafeFileOutputStream(markersLocation.toOSString(), markersTempLocation.toOSString()));
            if (root.getType() != 8) {
                o2 = new DataOutputStream(new SafeFileOutputStream(syncInfoLocation.toOSString(), syncInfoTempLocation.toOSString()));
            }
        }
        catch (IOException e) {
            FileUtil.safeClose(o1);
            String message = NLS.bind((String)Messages.resources_writeMeta, (Object)root.getFullPath());
            throw new ResourceException(568, root.getFullPath(), message, e);
        }
        final DataOutputStream markersOutput = o1;
        final DataOutputStream syncInfoOutput = o2;
        final long[] saveTimes = new long[2];
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info != null) {
                    try {
                        long start = System.currentTimeMillis();
                        markerManager.save(info, requestor, markersOutput, writtenTypes);
                        long markerSaveTime = System.currentTimeMillis() - start;
                        saveTimes[0] = saveTimes[0] + markerSaveTime;
                        SaveManager.this.persistMarkers += markerSaveTime;
                        if (syncInfoOutput != null) {
                            start = System.currentTimeMillis();
                            synchronizer.saveSyncInfo(info, requestor, syncInfoOutput, writtenPartners);
                            long syncInfoSaveTime = System.currentTimeMillis() - start;
                            saveTimes[1] = saveTimes[1] + syncInfoSaveTime;
                            SaveManager.this.persistSyncInfo += syncInfoSaveTime;
                        }
                    }
                    catch (IOException e) {
                        throw new WrappedRuntimeException(e);
                    }
                }
                return root.getType() != 8;
            }
        };
        try {
            try {
                try {
                    new ElementTreeIterator(this.workspace.getElementTree(), root.getFullPath()).iterate(visitor);
                }
                catch (WrappedRuntimeException e) {
                    throw (IOException)e.getTargetException();
                }
                if (Policy.DEBUG_SAVE_MARKERS) {
                    System.out.println("Save Markers for " + root.getFullPath() + ": " + saveTimes[0] + "ms");
                }
                if (Policy.DEBUG_SAVE_SYNCINFO) {
                    System.out.println("Save SyncInfo for " + root.getFullPath() + ": " + saveTimes[1] + "ms");
                }
                this.removeGarbage(markersOutput, markersLocation, markersTempLocation);
                if (syncInfoOutput != null) {
                    this.removeGarbage(syncInfoOutput, syncInfoLocation, syncInfoTempLocation);
                    syncInfoOutput.close();
                }
                markersOutput.close();
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.resources_writeMeta, (Object)root.getFullPath());
                throw new ResourceException(568, root.getFullPath(), message, e);
            }
        }
        finally {
            FileUtil.safeClose(markersOutput);
            FileUtil.safeClose(syncInfoOutput);
        }
        if (root.getType() == 4) {
            return;
        }
        IProject[] projects = ((IWorkspaceRoot)root).getProjects(8);
        int i = 0;
        while (i < projects.length) {
            this.visitAndSave(projects[i]);
            ++i;
        }
    }

    public void visitAndSnap(final IResource root) throws CoreException {
        Assert.isLegal((root.getType() == 8 || root.getType() == 4 ? 1 : 0) != 0);
        if (!root.isAccessible()) {
            return;
        }
        final Synchronizer synchronizer = (Synchronizer)this.workspace.getSynchronizer();
        final MarkerManager markerManager = this.workspace.getMarkerManager();
        IPath markersLocation = this.workspace.getMetaArea().getMarkersSnapshotLocationFor(root);
        IPath syncInfoLocation = this.workspace.getMetaArea().getSyncInfoSnapshotLocationFor(root);
        SafeChunkyOutputStream safeMarkerStream = null;
        SafeChunkyOutputStream safeSyncInfoStream = null;
        DataOutputStream o1 = null;
        DataOutputStream o2 = null;
        try {
            safeMarkerStream = new SafeChunkyOutputStream(markersLocation.toFile());
            o1 = new DataOutputStream(safeMarkerStream);
            if (root.getType() != 8) {
                safeSyncInfoStream = new SafeChunkyOutputStream(syncInfoLocation.toFile());
                o2 = new DataOutputStream(safeSyncInfoStream);
            }
        }
        catch (IOException e) {
            FileUtil.safeClose(o1);
            String message = NLS.bind((String)Messages.resources_writeMeta, (Object)root.getFullPath());
            throw new ResourceException(568, root.getFullPath(), message, e);
        }
        final DataOutputStream markersOutput = o1;
        final DataOutputStream syncInfoOutput = o2;
        int markerFileSize = markersOutput.size();
        int syncInfoFileSize = safeSyncInfoStream == null ? -1 : syncInfoOutput.size();
        final long[] snapTimes = new long[2];
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info != null) {
                    try {
                        long start = System.currentTimeMillis();
                        markerManager.snap(info, requestor, markersOutput);
                        long markerSnapTime = System.currentTimeMillis() - start;
                        snapTimes[0] = snapTimes[0] + markerSnapTime;
                        SaveManager.this.persistMarkers += markerSnapTime;
                        if (syncInfoOutput != null) {
                            start = System.currentTimeMillis();
                            synchronizer.snapSyncInfo(info, requestor, syncInfoOutput);
                            long syncInfoSnapTime = System.currentTimeMillis() - start;
                            snapTimes[1] = snapTimes[1] + syncInfoSnapTime;
                            SaveManager.this.persistSyncInfo += syncInfoSnapTime;
                        }
                    }
                    catch (IOException e) {
                        throw new WrappedRuntimeException(e);
                    }
                }
                return root.getType() != 8;
            }
        };
        try {
            try {
                try {
                    new ElementTreeIterator(this.workspace.getElementTree(), root.getFullPath()).iterate(visitor);
                }
                catch (WrappedRuntimeException e) {
                    throw (IOException)e.getTargetException();
                }
                if (Policy.DEBUG_SAVE_MARKERS) {
                    System.out.println("Snap Markers for " + root.getFullPath() + ": " + snapTimes[0] + "ms");
                }
                if (Policy.DEBUG_SAVE_SYNCINFO) {
                    System.out.println("Snap SyncInfo for " + root.getFullPath() + ": " + snapTimes[1] + "ms");
                }
                if (markerFileSize != markersOutput.size()) {
                    safeMarkerStream.succeed();
                }
                if (safeSyncInfoStream != null && syncInfoFileSize != syncInfoOutput.size()) {
                    safeSyncInfoStream.succeed();
                    syncInfoOutput.close();
                }
                markersOutput.close();
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.resources_writeMeta, (Object)root.getFullPath());
                throw new ResourceException(568, root.getFullPath(), message, e);
            }
        }
        finally {
            FileUtil.safeClose(markersOutput);
            FileUtil.safeClose(syncInfoOutput);
        }
        if (root.getType() == 4) {
            return;
        }
        IProject[] projects = ((IWorkspaceRoot)root).getProjects(8);
        int i = 0;
        while (i < projects.length) {
            this.visitAndSnap(projects[i]);
            ++i;
        }
    }

    private void writeBuilderPersistentInfo(DataOutputStream output, List<BuilderPersistentInfo> builders, IProgressMonitor monitor) throws IOException {
        monitor = Policy.monitorFor(monitor);
        try {
            int numBuilders = builders.size();
            output.writeInt(numBuilders);
            int i = 0;
            while (i < numBuilders) {
                BuilderPersistentInfo info = builders.get(i);
                output.writeUTF(info.getProjectName());
                output.writeUTF(info.getBuilderName());
                IProject[] interestingProjects = info.getInterestingProjects();
                output.writeInt(interestingProjects.length);
                int j = 0;
                while (j < interestingProjects.length) {
                    output.writeUTF(interestingProjects[j].getName());
                    ++j;
                }
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void writeElement(IPath path, Object element, DataOutput output) throws IOException {
        Assert.isNotNull((Object)path);
        Assert.isNotNull((Object)element);
        Assert.isNotNull((Object)output);
        ResourceInfo info = (ResourceInfo)element;
        output.writeInt(info.getFlags());
        info.writeTo(output);
    }

    private void getTreesToSave(IProject project, List<ElementTree> trees, List<BuilderPersistentInfo> builderInfos, List<String> configNames, List<BuilderPersistentInfo> additionalBuilderInfos, List<String> additionalConfigNames) throws CoreException {
        if (project.isOpen()) {
            String activeConfigName = project.getActiveBuildConfig().getName();
            ArrayList<BuilderPersistentInfo> infos = this.workspace.getBuildManager().createBuildersPersistentInfo(project);
            if (infos != null) {
                for (BuilderPersistentInfo info : infos) {
                    String configName;
                    if (info.getLastBuiltTree() == null) continue;
                    String string = configName = info.getConfigName() == null ? activeConfigName : info.getConfigName();
                    if (configName.equals(activeConfigName)) {
                        builderInfos.add(info);
                        configNames.add(configName);
                    } else {
                        additionalBuilderInfos.add(info);
                        additionalConfigNames.add(configName);
                    }
                    ElementTree tree = info.getLastBuiltTree();
                    trees.add(tree);
                }
            }
        }
    }

    protected void writeTree(Map<String, ElementTree> statesToSave, DataOutputStream output, IProgressMonitor monitor) throws IOException, CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            boolean wasImmutable = false;
            try {
                ElementTree current = this.workspace.getElementTree();
                wasImmutable = current.isImmutable();
                current.immutable();
                ArrayList<ElementTree> trees = new ArrayList<ElementTree>(statesToSave.size() * 2);
                monitor.worked(10);
                this.writeWorkspaceFields(output, Policy.subMonitorFor(monitor, Policy.opWork * 20 / 100));
                output.writeInt(statesToSave.size());
                for (Map.Entry<String, ElementTree> entry : statesToSave.entrySet()) {
                    String pluginId = entry.getKey();
                    output.writeUTF(pluginId);
                    trees.add(entry.getValue());
                    this.updateDeltaExpiration(pluginId);
                }
                monitor.worked(10);
                IProject[] projects = this.workspace.getRoot().getProjects(8);
                ArrayList<BuilderPersistentInfo> builderInfos = new ArrayList<BuilderPersistentInfo>(projects.length * 2);
                ArrayList<String> configNames = new ArrayList<String>(projects.length);
                ArrayList<BuilderPersistentInfo> additionalBuilderInfos = new ArrayList<BuilderPersistentInfo>(projects.length * 2);
                ArrayList<String> additionalConfigNames = new ArrayList<String>(projects.length);
                int i = 0;
                while (i < projects.length) {
                    this.getTreesToSave(projects[i], trees, builderInfos, configNames, additionalBuilderInfos, additionalConfigNames);
                    ++i;
                }
                this.writeBuilderPersistentInfo(output, builderInfos, Policy.subMonitorFor(monitor, 10));
                trees.add(current);
                ElementTreeWriter writer = new ElementTreeWriter(this);
                ElementTree[] treesToSave = trees.toArray(new ElementTree[trees.size()]);
                writer.writeDeltaChain(treesToSave, (IPath)Path.ROOT, -1, output, ResourceComparator.getSaveComparator());
                monitor.worked(40);
                this.writeBuilderPersistentInfo(output, additionalBuilderInfos, Policy.subMonitorFor(monitor, 10));
                Iterator it = configNames.iterator();
                while (it.hasNext()) {
                    output.writeUTF((String)it.next());
                }
                it = additionalConfigNames.iterator();
                while (it.hasNext()) {
                    output.writeUTF((String)it.next());
                }
            }
            finally {
                if (!wasImmutable) {
                    this.workspace.newWorkingTree();
                }
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void writeTree(Project project, DataOutputStream output, IProgressMonitor monitor) throws IOException, CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            boolean wasImmutable = false;
            try {
                ElementTree current = this.workspace.getElementTree();
                wasImmutable = current.isImmutable();
                current.immutable();
                ArrayList<ElementTree> trees = new ArrayList<ElementTree>(2);
                monitor.worked(10);
                ArrayList<String> configNames = new ArrayList<String>(5);
                ArrayList<BuilderPersistentInfo> builderInfos = new ArrayList<BuilderPersistentInfo>(5);
                ArrayList<String> additionalConfigNames = new ArrayList<String>(5);
                ArrayList<BuilderPersistentInfo> additionalBuilderInfos = new ArrayList<BuilderPersistentInfo>(5);
                this.getTreesToSave(project, trees, builderInfos, configNames, additionalBuilderInfos, additionalConfigNames);
                this.writeBuilderPersistentInfo(output, builderInfos, Policy.subMonitorFor(monitor, 20));
                trees.add(current);
                ElementTreeWriter writer = new ElementTreeWriter(this);
                ElementTree[] treesToSave = trees.toArray(new ElementTree[trees.size()]);
                writer.writeDeltaChain(treesToSave, project.getFullPath(), -1, output, ResourceComparator.getSaveComparator());
                monitor.worked(50);
                this.writeBuilderPersistentInfo(output, additionalBuilderInfos, Policy.subMonitorFor(monitor, 20));
                Iterator it = configNames.iterator();
                while (it.hasNext()) {
                    output.writeUTF((String)it.next());
                }
                it = additionalConfigNames.iterator();
                while (it.hasNext()) {
                    output.writeUTF((String)it.next());
                }
                output.close();
            }
            finally {
                FileUtil.safeClose(output);
                if (!wasImmutable) {
                    this.workspace.newWorkingTree();
                }
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void writeTree(Project project, int depth) throws CoreException {
        long start = System.currentTimeMillis();
        IPath treeLocation = this.workspace.getMetaArea().getTreeLocationFor(project, true);
        IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(treeLocation);
        try {
            SafeFileOutputStream safe = new SafeFileOutputStream(treeLocation.toOSString(), tempLocation.toOSString());
            try {
                DataOutputStream output = new DataOutputStream(safe);
                output.writeInt(67305986);
                this.writeTree(project, output, null);
                safe.close();
            }
            finally {
                FileUtil.safeClose(safe);
            }
        }
        catch (IOException e) {
            String msg = NLS.bind((String)Messages.resources_writeMeta, (Object)project.getFullPath());
            throw new ResourceException(568, treeLocation, msg, e);
        }
        if (Policy.DEBUG_SAVE_TREE) {
            System.out.println("Save tree for " + project.getFullPath() + ": " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected void writeWorkspaceFields(DataOutputStream output, IProgressMonitor monitor) throws IOException {
        monitor = Policy.monitorFor(monitor);
        try {
            output.writeLong(this.workspace.nextNodeId);
            output.writeLong(0L);
            output.writeLong(this.workspace.nextMarkerId);
            ((Synchronizer)this.workspace.getSynchronizer()).savePartners(output);
        }
        finally {
            monitor.done();
        }
    }

    class InternalMonitorWrapper
    extends ProgressMonitorWrapper {
        private boolean ignoreCancel;

        public InternalMonitorWrapper(IProgressMonitor monitor) {
            super(Policy.monitorFor(monitor));
        }

        public void ignoreCancelState(boolean ignore) {
            this.ignoreCancel = ignore;
        }

        public boolean isCanceled() {
            return this.ignoreCancel ? false : super.isCanceled();
        }
    }

    class MasterTable
    extends Properties {
        private static final long serialVersionUID = 1L;

        MasterTable() {
        }

        public synchronized Object put(Object key, Object value) {
            int currSeqNum;
            int prevSeqNum;
            Object prev = super.put(key, value);
            if (prev != null && ROOT_SEQUENCE_NUMBER_KEY.equals(key) && (prevSeqNum = new Integer((String)prev).intValue()) > (currSeqNum = new Integer((String)value).intValue())) {
                super.put(key, prev);
                String message = "Cannot set lower sequence number for root (previous: " + prevSeqNum + ", new: " + currSeqNum + "). Ignoring the new value.";
                Policy.log((IStatus)new Status(4, "org.eclipse.core.resources", 566, message, (Throwable)new IllegalArgumentException(message)));
            }
            return prev;
        }
    }
}

