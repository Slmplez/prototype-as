/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search.indexing;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import java.util.zip.CRC32;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;
import org.eclipse.jdt.internal.core.search.indexing.AddFolderToIndex;
import org.eclipse.jdt.internal.core.search.indexing.AddJarFileToIndex;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexAllProject;
import org.eclipse.jdt.internal.core.search.indexing.IndexBinaryFolder;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.IndexingParser;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.indexing.RemoveFolderFromIndex;
import org.eclipse.jdt.internal.core.search.indexing.RemoveFromIndex;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexManager
extends JobManager
implements IIndexConstants {
    public SimpleLookupTable indexLocations = new SimpleLookupTable();
    private SimpleLookupTable indexes = new SimpleLookupTable();
    private boolean needToSave = false;
    private IPath javaPluginLocation = null;
    private SimpleLookupTable indexStates = null;
    private File savedIndexNamesFile = new File(this.getSavedIndexesDirectory(), "savedIndexNames.txt");
    private File participantIndexNamesFile = new File(this.getSavedIndexesDirectory(), "participantsIndexNames.txt");
    private boolean javaLikeNamesChanged = true;
    public static final Integer SAVED_STATE = new Integer(0);
    public static final Integer UPDATING_STATE = new Integer(1);
    public static final Integer UNKNOWN_STATE = new Integer(2);
    public static final Integer REBUILDING_STATE = new Integer(3);
    private SimpleLookupTable participantsContainers = null;
    private boolean participantUpdated = false;
    public static boolean DEBUG = false;

    public synchronized void aboutToUpdateIndex(IPath containerPath, Integer newIndexState) {
        Integer currentIndexState;
        IPath indexLocation = this.computeIndexLocation(containerPath);
        Object state = this.getIndexStates().get(indexLocation);
        Integer n = currentIndexState = state == null ? UNKNOWN_STATE : (Integer)state;
        if (currentIndexState.equals(REBUILDING_STATE)) {
            return;
        }
        int compare = newIndexState.compareTo(currentIndexState);
        if (compare > 0) {
            this.updateIndexState(indexLocation, newIndexState);
        } else if (compare < 0 && this.indexes.get(indexLocation) == null) {
            this.rebuildIndex(indexLocation, containerPath);
        }
    }

    public void addBinary(IFile resource, IPath containerPath) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        SearchParticipant participant = SearchEngine.getDefaultSearchParticipant();
        SearchDocument document = participant.getDocument(resource.getFullPath().toString());
        IPath indexLocation = this.computeIndexLocation(containerPath);
        this.scheduleDocumentIndexing(document, containerPath, indexLocation, participant);
    }

    public void addSource(IFile resource, IPath containerPath, SourceElementParser parser) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        SearchParticipant participant = SearchEngine.getDefaultSearchParticipant();
        SearchDocument document = participant.getDocument(resource.getFullPath().toString());
        document.setParser(parser);
        IPath indexLocation = this.computeIndexLocation(containerPath);
        this.scheduleDocumentIndexing(document, containerPath, indexLocation, participant);
    }

    public void cleanUpIndexes() {
        SimpleSet knownPaths = new SimpleSet();
        IJavaSearchScope scope = BasicSearchEngine.createWorkspaceScope();
        PatternSearchJob job = new PatternSearchJob(null, SearchEngine.getDefaultSearchParticipant(), scope, null);
        Index[] selectedIndexes = job.getIndexes(null);
        int i = 0;
        int l = selectedIndexes.length;
        while (i < l) {
            String path = selectedIndexes[i].getIndexFile().getAbsolutePath();
            knownPaths.add(path);
            ++i;
        }
        if (this.indexStates != null) {
            Object[] keys = this.indexStates.keyTable;
            IPath[] locations = new IPath[this.indexStates.elementSize];
            int count = 0;
            int i2 = 0;
            int l2 = keys.length;
            while (i2 < l2) {
                IPath key = (IPath)keys[i2];
                if (key != null && !knownPaths.includes(key.toOSString())) {
                    locations[count++] = key;
                }
                ++i2;
            }
            if (count > 0) {
                this.removeIndexesState(locations);
            }
        }
        this.deleteIndexFiles(knownPaths);
    }

    public synchronized IPath computeIndexLocation(IPath containerPath) {
        IPath indexLocation = (IPath)this.indexLocations.get(containerPath);
        if (indexLocation == null) {
            String pathString = containerPath.toOSString();
            CRC32 checksumCalculator = new CRC32();
            checksumCalculator.update(pathString.getBytes());
            String fileName = String.valueOf(Long.toString(checksumCalculator.getValue())) + ".index";
            if (VERBOSE) {
                Util.verbose("-> index name for " + pathString + " is " + fileName);
            }
            indexLocation = (IPath)this.getIndexStates().getKey(this.getJavaPluginWorkingLocation().append(fileName));
            this.indexLocations.put(containerPath, indexLocation);
        }
        return indexLocation;
    }

    public void deleteIndexFiles() {
        if (DEBUG) {
            Util.verbose("Deleting index files");
        }
        this.savedIndexNamesFile.delete();
        this.deleteIndexFiles(null);
    }

    private void deleteIndexFiles(SimpleSet pathsToKeep) {
        File[] indexesFiles = this.getSavedIndexesDirectory().listFiles();
        if (indexesFiles == null) {
            return;
        }
        int i = 0;
        int l = indexesFiles.length;
        while (i < l) {
            String fileName = indexesFiles[i].getAbsolutePath();
            if (pathsToKeep == null || !pathsToKeep.includes(fileName)) {
                String suffix = ".index";
                if (fileName.regionMatches(true, fileName.length() - suffix.length(), suffix, 0, suffix.length())) {
                    if (VERBOSE || DEBUG) {
                        Util.verbose("Deleting index file " + indexesFiles[i]);
                    }
                    indexesFiles[i].delete();
                }
            }
            ++i;
        }
    }

    public synchronized void ensureIndexExists(IPath indexLocation, IPath containerPath) {
        SimpleLookupTable states = this.getIndexStates();
        Object state = states.get(indexLocation);
        if (state == null) {
            this.updateIndexState(indexLocation, REBUILDING_STATE);
            this.getIndex(containerPath, indexLocation, true, true);
        }
    }

    public SourceElementParser getSourceElementParser(IJavaProject project, ISourceElementRequestor requestor) {
        Map options = project.getOptions(true);
        options.put("org.eclipse.jdt.core.compiler.taskTags", "");
        IndexingParser parser = new IndexingParser(requestor, new DefaultProblemFactory(Locale.getDefault()), new CompilerOptions(options), true, true, false);
        parser.reportOnlyOneSyntaxError = true;
        parser.javadocParser.checkDocComment = true;
        parser.javadocParser.reportProblems = false;
        return parser;
    }

    public synchronized Index getIndex(IPath indexLocation) {
        return (Index)this.indexes.get(indexLocation);
    }

    public synchronized Index getIndex(IPath containerPath, boolean reuseExistingFile, boolean createIfMissing) {
        IPath indexLocation = this.computeIndexLocation(containerPath);
        return this.getIndex(containerPath, indexLocation, reuseExistingFile, createIfMissing);
    }

    public synchronized Index getIndex(IPath containerPath, IPath indexLocation, boolean reuseExistingFile, boolean createIfMissing) {
        Index index = this.getIndex(indexLocation);
        if (index == null) {
            Integer currentIndexState;
            Object state = this.getIndexStates().get(indexLocation);
            Integer n = currentIndexState = state == null ? UNKNOWN_STATE : (Integer)state;
            if (currentIndexState == UNKNOWN_STATE) {
                this.rebuildIndex(indexLocation, containerPath);
                return null;
            }
            String containerPathString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
            String indexLocationString = indexLocation.toOSString();
            if (reuseExistingFile) {
                block13: {
                    File indexFile = new File(indexLocationString);
                    if (indexFile.exists()) {
                        try {
                            index = new Index(indexLocationString, containerPathString, true);
                            this.indexes.put(indexLocation, index);
                            return index;
                        }
                        catch (IOException iOException) {
                            if (currentIndexState == REBUILDING_STATE) break block13;
                            if (VERBOSE) {
                                Util.verbose("-> cannot reuse existing index: " + indexLocationString + " path: " + containerPathString);
                            }
                            this.rebuildIndex(indexLocation, containerPath);
                            return null;
                        }
                    }
                }
                if (currentIndexState == SAVED_STATE) {
                    this.rebuildIndex(indexLocation, containerPath);
                    return null;
                }
            }
            if (createIfMissing) {
                try {
                    if (VERBOSE) {
                        Util.verbose("-> create empty index: " + indexLocationString + " path: " + containerPathString);
                    }
                    index = new Index(indexLocationString, containerPathString, false);
                    this.indexes.put(indexLocation, index);
                    return index;
                }
                catch (IOException iOException) {
                    if (VERBOSE) {
                        Util.verbose("-> unable to create empty index: " + indexLocationString + " path: " + containerPathString);
                    }
                    return null;
                }
            }
        }
        return index;
    }

    public Index[] getIndexes(IPath[] locations, IProgressMonitor progressMonitor) {
        int length = locations.length;
        Index[] locatedIndexes = new Index[length];
        int count = 0;
        if (this.javaLikeNamesChanged) {
            this.javaLikeNamesChanged = this.hasJavaLikeNamesChanged();
        }
        int i = 0;
        while (i < length) {
            if (progressMonitor != null && progressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            IPath indexLocation = locations[i];
            Index index = this.getIndex(indexLocation);
            if (index == null) {
                IPath containerPath = (IPath)this.indexLocations.keyForValue(indexLocation);
                if (containerPath != null) {
                    index = this.getIndex(containerPath, indexLocation, true, false);
                    if (index != null && this.javaLikeNamesChanged && !index.isIndexForJar()) {
                        File indexFile = index.getIndexFile();
                        if (indexFile.exists()) {
                            if (DEBUG) {
                                Util.verbose("Change in javaLikeNames - removing index file for " + containerPath);
                            }
                            indexFile.delete();
                        }
                        this.indexes.put(indexLocation, null);
                        this.rebuildIndex(indexLocation, containerPath);
                        index = null;
                    }
                } else if (!this.getJavaPluginWorkingLocation().isPrefixOf(indexLocation) && indexLocation.toFile().exists()) {
                    try {
                        IPath container = this.getParticipantsContainer(indexLocation);
                        if (container != null) {
                            index = new Index(indexLocation.toOSString(), container.toOSString(), true);
                            this.indexes.put(indexLocation, index);
                        }
                    }
                    catch (IOException iOException) {}
                }
            }
            if (index != null) {
                locatedIndexes[count++] = index;
            }
            ++i;
        }
        if (this.javaLikeNamesChanged) {
            this.writeJavaLikeNamesFile();
            this.javaLikeNamesChanged = false;
        }
        if (count < length) {
            Index[] indexArray = locatedIndexes;
            locatedIndexes = new Index[count];
            System.arraycopy(indexArray, 0, locatedIndexes, 0, count);
        }
        return locatedIndexes;
    }

    public synchronized Index getIndexForUpdate(IPath containerPath, boolean reuseExistingFile, boolean createIfMissing) {
        IPath indexLocation = this.computeIndexLocation(containerPath);
        if (this.getIndexStates().get(indexLocation) == REBUILDING_STATE) {
            return this.getIndex(containerPath, indexLocation, reuseExistingFile, createIfMissing);
        }
        return null;
    }

    private SimpleLookupTable getIndexStates() {
        if (this.indexStates != null) {
            return this.indexStates;
        }
        this.indexStates = new SimpleLookupTable();
        IPath indexesDirectoryPath = this.getJavaPluginWorkingLocation();
        char[][] savedNames = this.readIndexState(indexesDirectoryPath.toOSString());
        if (savedNames != null) {
            int i = 1;
            int l = savedNames.length;
            while (i < l) {
                char[] savedName = savedNames[i];
                if (savedName.length > 0) {
                    IPath indexLocation = indexesDirectoryPath.append(new String(savedName));
                    if (VERBOSE) {
                        Util.verbose("Reading saved index file " + indexLocation);
                    }
                    this.indexStates.put(indexLocation, SAVED_STATE);
                }
                ++i;
            }
        } else {
            this.writeJavaLikeNamesFile();
            this.javaLikeNamesChanged = false;
            this.deleteIndexFiles();
        }
        return this.indexStates;
    }

    private IPath getParticipantsContainer(IPath indexLocation) {
        if (this.participantsContainers == null) {
            this.readParticipantsIndexNamesFile();
        }
        return (IPath)this.participantsContainers.get(indexLocation);
    }

    private IPath getJavaPluginWorkingLocation() {
        IPath stateLocation;
        if (this.javaPluginLocation != null) {
            return this.javaPluginLocation;
        }
        this.javaPluginLocation = stateLocation = JavaCore.getPlugin().getStateLocation();
        return this.javaPluginLocation;
    }

    private File getSavedIndexesDirectory() {
        return new File(this.getJavaPluginWorkingLocation().toOSString());
    }

    private boolean hasJavaLikeNamesChanged() {
        Object currentNames = Util.getJavaLikeExtensions();
        int current = ((char[][])currentNames).length;
        char[][] prevNames = this.readJavaLikeNamesFile();
        if (prevNames == null) {
            if (VERBOSE && current != 1) {
                Util.verbose("No Java like names found and there is atleast one non-default javaLikeName", System.err);
            }
            return current != 1;
        }
        int prev = prevNames.length;
        if (current != prev) {
            if (VERBOSE) {
                Util.verbose("Java like names have changed", System.err);
            }
            return true;
        }
        if (current > 1) {
            char[][] cArray = currentNames;
            char[][] cArrayArray = new char[current][];
            currentNames = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, current);
            Util.sort(currentNames);
        }
        int i = 0;
        while (i < current) {
            if (!CharOperation.equals(currentNames[i], prevNames[i])) {
                if (VERBOSE) {
                    Util.verbose("Java like names have changed", System.err);
                }
                return true;
            }
            ++i;
        }
        return false;
    }

    public void indexDocument(SearchDocument searchDocument, SearchParticipant searchParticipant, Index index, IPath indexLocation) {
        try {
            searchDocument.setIndex(index);
            searchParticipant.indexDocument(searchDocument, indexLocation);
        }
        finally {
            searchDocument.setIndex(null);
        }
    }

    public void indexAll(IProject project) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        try {
            JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
            JavaProject javaProject = (JavaProject)model.getJavaProject((IResource)project);
            IClasspathEntry[] entries = javaProject.getResolvedClasspath();
            int i = 0;
            while (i < entries.length) {
                IClasspathEntry entry = entries[i];
                if (entry.getEntryKind() == 1) {
                    this.indexLibrary(entry.getPath(), project);
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        IndexAllProject request = new IndexAllProject(project, this);
        if (!this.isJobWaiting(request)) {
            this.request(request);
        }
    }

    public void indexLibrary(IPath path, IProject requestingProject) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        Object target = JavaModel.getTarget(path, true);
        IndexRequest request = null;
        if (target instanceof IFile) {
            request = new AddJarFileToIndex((IFile)target, this);
        } else if (target instanceof File) {
            request = new AddJarFileToIndex(path, this);
        } else if (target instanceof IContainer) {
            request = new IndexBinaryFolder((IContainer)target, this);
        } else {
            return;
        }
        if (!this.isJobWaiting(request)) {
            this.request(request);
        }
    }

    public void indexSourceFolder(JavaProject javaProject, IPath sourceFolder, char[][] inclusionPatterns, char[][] exclusionPatterns) {
        IndexAllProject request;
        IProject project = javaProject.getProject();
        if (this.jobEnd > this.jobStart && this.isJobWaiting(request = new IndexAllProject(project, this))) {
            return;
        }
        this.request(new AddFolderToIndex(sourceFolder, project, inclusionPatterns, exclusionPatterns, this));
    }

    public synchronized void jobWasCancelled(IPath containerPath) {
        IPath indexLocation = this.computeIndexLocation(containerPath);
        Index index = this.getIndex(indexLocation);
        if (index != null) {
            index.monitor = null;
            this.indexes.removeKey(indexLocation);
        }
        this.updateIndexState(indexLocation, UNKNOWN_STATE);
    }

    protected synchronized void moveToNextJob() {
        this.needToSave = true;
        super.moveToNextJob();
    }

    protected void notifyIdle(long idlingTime) {
        if (idlingTime > 1000L && this.needToSave) {
            this.saveIndexes();
        }
    }

    public String processName() {
        return Messages.process_name;
    }

    private char[][] readJavaLikeNamesFile() {
        block5: {
            File javaLikeNamesFile;
            block4: {
                String pathName = this.getJavaPluginWorkingLocation().toOSString();
                javaLikeNamesFile = new File(pathName, "javaLikeNames.txt");
                if (javaLikeNamesFile.exists()) break block4;
                return null;
            }
            try {
                char[] javaLikeNames = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(javaLikeNamesFile, null);
                if (javaLikeNames.length > 0) {
                    char[][] names = CharOperation.splitOn('\n', javaLikeNames);
                    return names;
                }
            }
            catch (IOException iOException) {
                if (!VERBOSE) break block5;
                Util.verbose("Failed to read javaLikeNames file");
            }
        }
        return null;
    }

    private void rebuildIndex(IPath indexLocation, IPath containerPath) {
        Object target = JavaModel.getTarget(containerPath, true);
        if (target == null) {
            return;
        }
        if (VERBOSE) {
            Util.verbose("-> request to rebuild index: " + indexLocation + " path: " + containerPath);
        }
        this.updateIndexState(indexLocation, REBUILDING_STATE);
        IndexRequest request = null;
        if (target instanceof IProject) {
            IProject p = (IProject)target;
            if (JavaProject.hasJavaNature(p)) {
                request = new IndexAllProject(p, this);
            }
        } else if (target instanceof IFolder) {
            request = new IndexBinaryFolder((IContainer)((IFolder)target), this);
        } else if (target instanceof IFile) {
            request = new AddJarFileToIndex((IFile)target, this);
        } else if (target instanceof File) {
            request = new AddJarFileToIndex(containerPath, this);
        }
        if (request != null) {
            this.request(request);
        }
    }

    public synchronized Index recreateIndex(IPath containerPath) {
        String containerPathString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
        try {
            ReadWriteMonitor monitor;
            IPath indexLocation = this.computeIndexLocation(containerPath);
            Index index = this.getIndex(indexLocation);
            ReadWriteMonitor readWriteMonitor = monitor = index == null ? null : index.monitor;
            if (VERBOSE) {
                Util.verbose("-> recreating index: " + indexLocation + " for path: " + containerPathString);
            }
            index = new Index(indexLocation.toOSString(), containerPathString, false);
            this.indexes.put(indexLocation, index);
            index.monitor = monitor;
            return index;
        }
        catch (IOException e) {
            if (VERBOSE) {
                Util.verbose("-> failed to recreate index for path: " + containerPathString);
                e.printStackTrace();
            }
            return null;
        }
    }

    public void remove(String containerRelativePath, IPath indexedContainer) {
        this.request(new RemoveFromIndex(containerRelativePath, indexedContainer, this));
    }

    public synchronized void removeIndex(IPath containerPath) {
        if (VERBOSE || DEBUG) {
            Util.verbose("removing index " + containerPath);
        }
        IPath indexLocation = this.computeIndexLocation(containerPath);
        Index index = this.getIndex(indexLocation);
        File indexFile = null;
        if (index != null) {
            index.monitor = null;
            indexFile = index.getIndexFile();
        }
        if (indexFile == null) {
            indexFile = new File(indexLocation.toOSString());
        }
        if (indexFile.exists()) {
            if (DEBUG) {
                Util.verbose("removing index file " + indexFile);
            }
            indexFile.delete();
        }
        this.indexes.removeKey(indexLocation);
        this.updateIndexState(indexLocation, null);
    }

    public synchronized void removeIndexPath(IPath path) {
        if (VERBOSE || DEBUG) {
            Util.verbose("removing index path " + path);
        }
        Object[] keyTable = this.indexes.keyTable;
        Object[] valueTable = this.indexes.valueTable;
        IPath[] locations = null;
        int max = this.indexes.elementSize;
        int count = 0;
        int i = 0;
        int l = keyTable.length;
        while (i < l) {
            IPath indexLocation = (IPath)keyTable[i];
            if (indexLocation != null) {
                if (path.isPrefixOf(indexLocation)) {
                    Index index = (Index)valueTable[i];
                    index.monitor = null;
                    if (locations == null) {
                        locations = new IPath[max];
                    }
                    locations[count++] = indexLocation;
                    File indexFile = index.getIndexFile();
                    if (indexFile.exists()) {
                        if (DEBUG) {
                            Util.verbose("removing index file " + indexFile);
                        }
                        indexFile.delete();
                    }
                } else {
                    --max;
                }
            }
            ++i;
        }
        if (locations != null) {
            i = 0;
            while (i < count) {
                this.indexes.removeKey(locations[i]);
                ++i;
            }
            this.removeIndexesState(locations);
            if (this.participantsContainers != null && this.participantsContainers.get(path.toOSString()) != null) {
                this.participantsContainers.removeKey(path.toOSString());
                this.writeParticipantsIndexNamesFile();
            }
        }
    }

    public synchronized void removeIndexFamily(IPath path) {
        ArrayList<IPath> toRemove = null;
        Object[] containerPaths = this.indexLocations.keyTable;
        int i = 0;
        int length = containerPaths.length;
        while (i < length) {
            IPath containerPath = (IPath)containerPaths[i];
            if (containerPath != null && path.isPrefixOf(containerPath)) {
                if (toRemove == null) {
                    toRemove = new ArrayList<IPath>();
                }
                toRemove.add(containerPath);
            }
            ++i;
        }
        if (toRemove != null) {
            i = 0;
            length = toRemove.size();
            while (i < length) {
                this.removeIndex((IPath)toRemove.get(i));
                ++i;
            }
        }
    }

    public void removeSourceFolderFromIndex(JavaProject javaProject, IPath sourceFolder, char[][] inclusionPatterns, char[][] exclusionPatterns) {
        IndexAllProject request;
        IProject project = javaProject.getProject();
        if (this.jobEnd > this.jobStart && this.isJobWaiting(request = new IndexAllProject(project, this))) {
            return;
        }
        this.request(new RemoveFolderFromIndex(sourceFolder, inclusionPatterns, exclusionPatterns, project, this));
    }

    public synchronized void reset() {
        super.reset();
        if (this.indexes != null) {
            this.indexes = new SimpleLookupTable();
            this.indexStates = null;
        }
        this.indexLocations = new SimpleLookupTable();
        this.javaPluginLocation = null;
    }

    public synchronized boolean resetIndex(IPath containerPath) {
        String containerPathString = containerPath.getDevice() == null ? containerPath.toString() : containerPath.toOSString();
        try {
            IPath indexLocation = this.computeIndexLocation(containerPath);
            Index index = this.getIndex(indexLocation);
            if (VERBOSE) {
                Util.verbose("-> reseting index: " + indexLocation + " for path: " + containerPathString);
            }
            if (index == null) {
                return this.recreateIndex(containerPath) != null;
            }
            index.reset();
            return true;
        }
        catch (IOException e) {
            if (VERBOSE) {
                Util.verbose("-> failed to reset index for path: " + containerPathString);
                e.printStackTrace();
            }
            return false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void saveIndex(Index index) throws IOException {
        if (index.hasChanged()) {
            if (VERBOSE) {
                Util.verbose("-> saving index " + index.getIndexFile());
            }
            index.save();
        }
        IndexManager indexManager = this;
        synchronized (indexManager) {
            Path containerPath = new Path(index.containerPath);
            if (this.jobEnd > this.jobStart) {
                int i = this.jobEnd;
                while (i > this.jobStart) {
                    IJob job = this.awaitingJobs[i];
                    if (job instanceof IndexRequest && ((IndexRequest)job).containerPath.equals((Object)containerPath)) {
                        return;
                    }
                    --i;
                }
            }
            IPath indexLocation = this.computeIndexLocation((IPath)containerPath);
            this.updateIndexState(indexLocation, SAVED_STATE);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void saveIndexes() {
        ArrayList<Index> toSave = new ArrayList<Index>();
        IndexManager indexManager = this;
        synchronized (indexManager) {
            Object[] valueTable = this.indexes.valueTable;
            int i = 0;
            int l = valueTable.length;
            while (i < l) {
                Index index = (Index)valueTable[i];
                if (index != null) {
                    toSave.add(index);
                }
                ++i;
            }
        }
        boolean allSaved = true;
        int i = 0;
        int length = toSave.size();
        while (i < length) {
            block17: {
                Index index = (Index)toSave.get(i);
                ReadWriteMonitor monitor = index.monitor;
                if (monitor != null) {
                    try {
                        monitor.enterRead();
                        if (!index.hasChanged()) break block17;
                        if (monitor.exitReadEnterWrite()) {
                            try {
                                try {
                                    this.saveIndex(index);
                                }
                                catch (IOException e) {
                                    if (VERBOSE) {
                                        Util.verbose("-> got the following exception while saving:", System.err);
                                        e.printStackTrace();
                                    }
                                    allSaved = false;
                                    monitor.exitWriteEnterRead();
                                    break block17;
                                }
                            }
                            catch (Throwable throwable) {
                                monitor.exitWriteEnterRead();
                                throw throwable;
                            }
                            monitor.exitWriteEnterRead();
                            break block17;
                        }
                        allSaved = false;
                    }
                    finally {
                        monitor.exitRead();
                    }
                }
            }
            ++i;
        }
        if (this.participantsContainers != null && this.participantUpdated) {
            this.writeParticipantsIndexNamesFile();
            this.participantUpdated = false;
        }
        this.needToSave = !allSaved;
    }

    public void scheduleDocumentIndexing(final SearchDocument searchDocument, IPath container, final IPath indexLocation, final SearchParticipant searchParticipant) {
        this.request(new IndexRequest(container, this){

            public boolean execute(IProgressMonitor progressMonitor) {
                if (this.isCancelled || progressMonitor != null && progressMonitor.isCanceled()) {
                    return true;
                }
                Index index = IndexManager.this.getIndex(this.containerPath, indexLocation, true, true);
                if (index == null) {
                    return true;
                }
                ReadWriteMonitor monitor = index.monitor;
                if (monitor == null) {
                    return true;
                }
                try {
                    monitor.enterWrite();
                    IndexManager.this.indexDocument(searchDocument, searchParticipant, index, indexLocation);
                }
                finally {
                    monitor.exitWrite();
                }
                return true;
            }

            public String toString() {
                return "indexing " + searchDocument.getPath();
            }
        });
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        buffer.append(super.toString());
        buffer.append("In-memory indexes:\n");
        int count = 0;
        Object[] valueTable = this.indexes.valueTable;
        int i = 0;
        int l = valueTable.length;
        while (i < l) {
            Index index = (Index)valueTable[i];
            if (index != null) {
                buffer.append(++count).append(" - ").append(index.toString()).append('\n');
            }
            ++i;
        }
        return buffer.toString();
    }

    private char[][] readIndexState(String dirOSString) {
        block3: {
            try {
                String savedSignature;
                char[][] names;
                char[] savedIndexNames = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(this.savedIndexNamesFile, null);
                if (savedIndexNames.length > 0 && (names = CharOperation.splitOn('\n', savedIndexNames)).length > 1 && (savedSignature = "INDEX VERSION 1.126+" + dirOSString).equals(new String(names[0]))) {
                    return names;
                }
            }
            catch (IOException iOException) {
                if (!VERBOSE) break block3;
                Util.verbose("Failed to read saved index file names");
            }
        }
        return null;
    }

    private void readParticipantsIndexNamesFile() {
        SimpleLookupTable containers;
        block4: {
            containers = new SimpleLookupTable(3);
            try {
                char[][] names;
                char[] participantIndexNames = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(this.participantIndexNamesFile, null);
                if (participantIndexNames.length > 0 && (names = CharOperation.splitOn('\n', participantIndexNames)).length >= 3 && "INDEX VERSION 1.126".equals(new String(names[0]))) {
                    int i = 1;
                    int l = names.length - 1;
                    while (i < l) {
                        containers.put(new Path(new String(names[i])), new Path(new String(names[i + 1])));
                        i += 2;
                    }
                }
            }
            catch (IOException iOException) {
                if (!VERBOSE) break block4;
                Util.verbose("Failed to read participant index file names");
            }
        }
        this.participantsContainers = containers;
    }

    private synchronized void removeIndexesState(IPath[] locations) {
        this.getIndexStates();
        int length = locations.length;
        boolean changed = false;
        int i = 0;
        while (i < length) {
            if (locations[i] != null && this.indexStates.removeKey(locations[i]) != null) {
                changed = true;
                if (VERBOSE) {
                    Util.verbose("-> index state updated to: ? for: " + locations[i]);
                }
            }
            ++i;
        }
        if (!changed) {
            return;
        }
        this.writeSavedIndexNamesFile();
    }

    private synchronized void updateIndexState(IPath indexLocation, Integer indexState) {
        if (indexLocation.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.getIndexStates();
        if (indexState != null) {
            if (indexState.equals(this.indexStates.get(indexLocation))) {
                return;
            }
            this.indexStates.put(indexLocation, indexState);
        } else {
            if (!this.indexStates.containsKey(indexLocation)) {
                return;
            }
            this.indexStates.removeKey(indexLocation);
        }
        this.writeSavedIndexNamesFile();
        if (VERBOSE) {
            if (indexState == null) {
                Util.verbose("-> index state removed for: " + indexLocation);
            } else {
                String state = "?";
                if (indexState == SAVED_STATE) {
                    state = "SAVED";
                } else if (indexState == UPDATING_STATE) {
                    state = "UPDATING";
                } else if (indexState == UNKNOWN_STATE) {
                    state = "UNKNOWN";
                } else if (indexState == REBUILDING_STATE) {
                    state = "REBUILDING";
                }
                Util.verbose("-> index state updated to: " + state + " for: " + indexLocation);
            }
        }
    }

    public void updateParticipant(IPath indexLocation, IPath containerPath) {
        if (this.participantsContainers == null) {
            this.readParticipantsIndexNamesFile();
        }
        if (this.participantsContainers.get(indexLocation) == null) {
            this.participantsContainers.put(indexLocation, containerPath);
            this.participantUpdated = true;
        }
    }

    private void writeJavaLikeNamesFile() {
        block18: {
            BufferedWriter writer = null;
            String pathName = this.getJavaPluginWorkingLocation().toOSString();
            try {
                try {
                    Object currentNames = Util.getJavaLikeExtensions();
                    int length = ((char[][])currentNames).length;
                    if (length > 1) {
                        char[][] cArray = currentNames;
                        char[][] cArrayArray = new char[length][];
                        currentNames = cArrayArray;
                        System.arraycopy(cArray, 0, cArrayArray, 0, length);
                        Util.sort(currentNames);
                    }
                    File javaLikeNamesFile = new File(pathName, "javaLikeNames.txt");
                    writer = new BufferedWriter(new FileWriter(javaLikeNamesFile));
                    int i = 0;
                    while (i < length - 1) {
                        writer.write(currentNames[i]);
                        writer.write(10);
                        ++i;
                    }
                    if (length > 0) {
                        writer.write(currentNames[length - 1]);
                    }
                }
                catch (IOException iOException) {
                    if (VERBOSE) {
                        Util.verbose("Failed to write javaLikeNames file", System.err);
                    }
                    if (writer != null) {
                        try {
                            writer.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block18;
                }
            }
            catch (Throwable throwable) {
                if (writer != null) {
                    try {
                        writer.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (writer != null) {
                try {
                    writer.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private void writeParticipantsIndexNamesFile() {
        block17: {
            BufferedWriter writer = null;
            try {
                try {
                    writer = new BufferedWriter(new FileWriter(this.participantIndexNamesFile));
                    writer.write("INDEX VERSION 1.126");
                    writer.write(10);
                    Object[] indexFiles = this.participantsContainers.keyTable;
                    Object[] containers = this.participantsContainers.valueTable;
                    int i = 0;
                    int l = indexFiles.length;
                    while (i < l) {
                        IPath indexFile = (IPath)indexFiles[i];
                        if (indexFile != null) {
                            writer.write(indexFile.toOSString());
                            writer.write(10);
                            writer.write(((IPath)containers[i]).toOSString());
                            writer.write(10);
                        }
                        ++i;
                    }
                }
                catch (IOException iOException) {
                    if (VERBOSE) {
                        Util.verbose("Failed to write participant index file names", System.err);
                    }
                    if (writer != null) {
                        try {
                            writer.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block17;
                }
            }
            catch (Throwable throwable) {
                if (writer != null) {
                    try {
                        writer.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (writer != null) {
                try {
                    writer.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private void writeSavedIndexNamesFile() {
        block17: {
            BufferedWriter writer = null;
            try {
                try {
                    writer = new BufferedWriter(new FileWriter(this.savedIndexNamesFile));
                    writer.write("INDEX VERSION 1.126");
                    writer.write(43);
                    writer.write(this.getJavaPluginWorkingLocation().toOSString());
                    writer.write(10);
                    Object[] keys = this.indexStates.keyTable;
                    Object[] states = this.indexStates.valueTable;
                    int i = 0;
                    int l = states.length;
                    while (i < l) {
                        IPath key = (IPath)keys[i];
                        if (key != null && !key.isEmpty() && states[i] == SAVED_STATE) {
                            writer.write(key.lastSegment());
                            writer.write(10);
                        }
                        ++i;
                    }
                }
                catch (IOException iOException) {
                    if (VERBOSE) {
                        Util.verbose("Failed to write saved index file names", System.err);
                    }
                    if (writer != null) {
                        try {
                            writer.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block17;
                }
            }
            catch (Throwable throwable) {
                if (writer != null) {
                    try {
                        writer.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (writer != null) {
                try {
                    writer.close();
                }
                catch (IOException iOException) {}
            }
        }
    }
}

