/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.ISavedState
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceDescription
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PerformanceStats
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentTypeManager$ContentTypeChangeEvent
 *  org.eclipse.core.runtime.content.IContentTypeManager$IContentTypeChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
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
import java.net.URI;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.BatchInitializationMonitor;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClasspathAccessRule;
import org.eclipse.jdt.internal.core.ClasspathAttribute;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.ExternalPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDeltaBuilder;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelCache;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.ReconcileWorkingCopyOperation;
import org.eclipse.jdt.internal.core.SetContainerOperation;
import org.eclipse.jdt.internal.core.SetVariablesOperation;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.UserLibraryManager;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.JavaWorkspaceScope;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.core.util.WeakHashSet;
import org.eclipse.jdt.internal.core.util.WeakHashSetOfCharArray;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class JavaModelManager
implements ISaveParticipant,
IContentTypeManager.IContentTypeChangeListener {
    private static final String NON_CHAINING_JARS_CACHE = "nonChainingJarsCache";
    private static final String INVALID_ARCHIVES_CACHE = "invalidArchivesCache";
    final JavaModel javaModel = new JavaModel();
    public HashMap variables = new HashMap(5);
    public HashSet variablesWithInitializer = new HashSet(5);
    public HashMap deprecatedVariables = new HashMap(5);
    public HashSet readOnlyVariables = new HashSet(5);
    public HashMap previousSessionVariables = new HashMap(5);
    private ThreadLocal variableInitializationInProgress = new ThreadLocal();
    public HashMap containers = new HashMap(5);
    public HashMap previousSessionContainers = new HashMap(5);
    private ThreadLocal containerInitializationInProgress = new ThreadLocal();
    ThreadLocal containersBeingInitialized = new ThreadLocal();
    public static final int NO_BATCH_INITIALIZATION = 0;
    public static final int NEED_BATCH_INITIALIZATION = 1;
    public static final int BATCH_INITIALIZATION_IN_PROGRESS = 2;
    public static final int BATCH_INITIALIZATION_FINISHED = 3;
    public int batchContainerInitializations = 0;
    public BatchInitializationMonitor batchContainerInitializationsProgress = new BatchInitializationMonitor();
    public Hashtable containerInitializersCache = new Hashtable(5);
    private ThreadLocal classpathsBeingResolved = new ThreadLocal();
    public JavaWorkspaceScope workspaceScope;
    private WeakHashSet stringSymbols = new WeakHashSet(5);
    private WeakHashSetOfCharArray charArraySymbols = new WeakHashSetOfCharArray(5);
    private IConfigurationElement annotationProcessorManagerFactory = null;
    public Map rootPathToAttachments = new Hashtable();
    public static final String CP_VARIABLE_PREFERENCES_PREFIX = "org.eclipse.jdt.core.classpathVariable.";
    public static final String CP_CONTAINER_PREFERENCES_PREFIX = "org.eclipse.jdt.core.classpathContainer.";
    public static final String CP_USERLIBRARY_PREFERENCES_PREFIX = "org.eclipse.jdt.core.userLibrary.";
    public static final String CP_ENTRY_IGNORE = "##<cp entry ignore>##";
    public static final IPath CP_ENTRY_IGNORE_PATH = new Path("##<cp entry ignore>##");
    public static final String TRUE = "true";
    private static final int VARIABLES_AND_CONTAINERS_FILE_VERSION = 2;
    public static final String CPVARIABLE_INITIALIZER_EXTPOINT_ID = "classpathVariableInitializer";
    public static final String CPCONTAINER_INITIALIZER_EXTPOINT_ID = "classpathContainerInitializer";
    public static final String FORMATTER_EXTPOINT_ID = "codeFormatter";
    public static final String COMPILATION_PARTICIPANT_EXTPOINT_ID = "compilationParticipant";
    public static final String ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID = "annotationProcessorManager";
    private static final String RESOLVE_REFERENCED_LIBRARIES_FOR_CONTAINERS = "resolveReferencedLibrariesForContainers";
    public static final IPath VARIABLE_INITIALIZATION_IN_PROGRESS = new Path("Variable Initialization In Progress");
    public static final IClasspathContainer CONTAINER_INITIALIZATION_IN_PROGRESS = new IClasspathContainer(){

        public IClasspathEntry[] getClasspathEntries() {
            return null;
        }

        public String getDescription() {
            return "Container Initialization In Progress";
        }

        public int getKind() {
            return 0;
        }

        public IPath getPath() {
            return null;
        }

        public String toString() {
            return this.getDescription();
        }
    };
    private static final String BUFFER_MANAGER_DEBUG = "org.eclipse.jdt.core/debug/buffermanager";
    private static final String INDEX_MANAGER_DEBUG = "org.eclipse.jdt.core/debug/indexmanager";
    private static final String INDEX_MANAGER_ADVANCED_DEBUG = "org.eclipse.jdt.core/debug/indexmanager/advanced";
    private static final String COMPILER_DEBUG = "org.eclipse.jdt.core/debug/compiler";
    private static final String JAVAMODEL_DEBUG = "org.eclipse.jdt.core/debug/javamodel";
    private static final String JAVAMODELCACHE_DEBUG = "org.eclipse.jdt.core/debug/javamodel/cache";
    private static final String CP_RESOLVE_DEBUG = "org.eclipse.jdt.core/debug/cpresolution";
    private static final String CP_RESOLVE_ADVANCED_DEBUG = "org.eclipse.jdt.core/debug/cpresolution/advanced";
    private static final String CP_RESOLVE_FAILURE_DEBUG = "org.eclipse.jdt.core/debug/cpresolution/failure";
    private static final String ZIP_ACCESS_DEBUG = "org.eclipse.jdt.core/debug/zipaccess";
    private static final String DELTA_DEBUG = "org.eclipse.jdt.core/debug/javadelta";
    private static final String DELTA_DEBUG_VERBOSE = "org.eclipse.jdt.core/debug/javadelta/verbose";
    private static final String HIERARCHY_DEBUG = "org.eclipse.jdt.core/debug/hierarchy";
    private static final String POST_ACTION_DEBUG = "org.eclipse.jdt.core/debug/postaction";
    private static final String BUILDER_DEBUG = "org.eclipse.jdt.core/debug/builder";
    private static final String BUILDER_STATS_DEBUG = "org.eclipse.jdt.core/debug/builder/stats";
    private static final String COMPLETION_DEBUG = "org.eclipse.jdt.core/debug/completion";
    private static final String RESOLUTION_DEBUG = "org.eclipse.jdt.core/debug/resolution";
    private static final String SELECTION_DEBUG = "org.eclipse.jdt.core/debug/selection";
    private static final String SEARCH_DEBUG = "org.eclipse.jdt.core/debug/search";
    private static final String SOURCE_MAPPER_DEBUG_VERBOSE = "org.eclipse.jdt.core/debug/sourcemapper";
    private static final String FORMATTER_DEBUG = "org.eclipse.jdt.core/debug/formatter";
    public static final String COMPLETION_PERF = "org.eclipse.jdt.core/perf/completion";
    public static final String SELECTION_PERF = "org.eclipse.jdt.core/perf/selection";
    public static final String DELTA_LISTENER_PERF = "org.eclipse.jdt.core/perf/javadeltalistener";
    public static final String VARIABLE_INITIALIZER_PERF = "org.eclipse.jdt.core/perf/variableinitializer";
    public static final String CONTAINER_INITIALIZER_PERF = "org.eclipse.jdt.core/perf/containerinitializer";
    public static final String RECONCILE_PERF = "org.eclipse.jdt.core/perf/reconcile";
    private static final String INDEXED_SECONDARY_TYPES = "#@*_indexing secondary cache_*@#";
    public static boolean PERF_VARIABLE_INITIALIZER = false;
    public static boolean PERF_CONTAINER_INITIALIZER = false;
    boolean resolveReferencedLibrariesForContainers = false;
    public static final ICompilationUnit[] NO_WORKING_COPY = new ICompilationUnit[0];
    private static final int UNKNOWN_OPTION = 0;
    private static final int DEPRECATED_OPTION = 1;
    private static final int VALID_OPTION = 2;
    HashSet optionNames = new HashSet(20);
    Map deprecatedOptions = new HashMap();
    Hashtable optionsCache;
    public final IEclipsePreferences[] preferencesLookup = new IEclipsePreferences[2];
    static final int PREF_INSTANCE = 0;
    static final int PREF_DEFAULT = 1;
    static final Object[][] NO_PARTICIPANTS = new Object[0][];
    public final CompilationParticipants compilationParticipants = new CompilationParticipants();
    public ThreadLocal abortOnMissingSource = new ThreadLocal();
    private ExternalFoldersManager externalFoldersManager = ExternalFoldersManager.getExternalFoldersManager();
    private static JavaModelManager MANAGER = new JavaModelManager();
    private JavaModelCache cache;
    private ThreadLocal temporaryCache = new ThreadLocal();
    protected HashSet elementsOutOfSynchWithBuffers = new HashSet(11);
    public DeltaProcessingState deltaState = new DeltaProcessingState();
    public IndexManager indexManager = null;
    protected Map perProjectInfos = new HashMap(5);
    protected Map perWorkingCopyInfos = new HashMap(5);
    protected WeakHashMap searchScopes = new WeakHashMap();
    public static boolean VERBOSE = false;
    public static boolean CP_RESOLVE_VERBOSE = false;
    public static boolean CP_RESOLVE_VERBOSE_ADVANCED = false;
    public static boolean CP_RESOLVE_VERBOSE_FAILURE = false;
    public static boolean ZIP_ACCESS_VERBOSE = false;
    public static boolean DEBUG_302850 = false;
    private ThreadLocal zipFiles = new ThreadLocal();
    private UserLibraryManager userLibraryManager;
    private Set nonChainingJars;
    private Set invalidArchives;
    EclipsePreferencesListener instancePreferencesListener = new EclipsePreferencesListener();
    IEclipsePreferences.INodeChangeListener instanceNodeListener = new IEclipsePreferences.INodeChangeListener(){

        public void added(IEclipsePreferences.NodeChangeEvent event) {
        }

        public void removed(IEclipsePreferences.NodeChangeEvent event) {
            if (event.getChild() == JavaModelManager.this.preferencesLookup[0]) {
                JavaModelManager.this.preferencesLookup[0] = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.core");
                JavaModelManager.this.preferencesLookup[0].addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)new EclipsePreferencesListener());
            }
        }
    };
    IEclipsePreferences.INodeChangeListener defaultNodeListener = new IEclipsePreferences.INodeChangeListener(){

        public void added(IEclipsePreferences.NodeChangeEvent event) {
        }

        public void removed(IEclipsePreferences.NodeChangeEvent event) {
            if (event.getChild() == JavaModelManager.this.preferencesLookup[1]) {
                JavaModelManager.this.preferencesLookup[1] = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.core");
            }
        }
    };
    IEclipsePreferences.IPreferenceChangeListener propertyListener;
    IEclipsePreferences.IPreferenceChangeListener resourcesPropertyListener;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean conflictsWithOutputLocation(IPath folderPath, JavaProject project) {
        try {
            IPath outputLocation = project.getOutputLocation();
            if (outputLocation == null) {
                return true;
            }
            if (!outputLocation.isPrefixOf(folderPath)) {
                return false;
            }
            IClasspathEntry[] classpath = project.getResolvedClasspath();
            boolean isOutputUsed = false;
            int i = 0;
            int length = classpath.length;
            while (true) {
                if (i >= length) {
                    return isOutputUsed;
                }
                IClasspathEntry entry = classpath[i];
                if (entry.getEntryKind() == 3) {
                    if (entry.getPath().equals((Object)outputLocation)) {
                        return false;
                    }
                    if (entry.getOutputLocation() == null) {
                        isOutputUsed = true;
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return true;
        }
    }

    public synchronized IClasspathContainer containerGet(IJavaProject project, IPath containerPath) {
        if (this.containerIsInitializationInProgress(project, containerPath)) {
            return CONTAINER_INITIALIZATION_IN_PROGRESS;
        }
        Map projectContainers = (Map)this.containers.get(project);
        if (projectContainers == null) {
            return null;
        }
        IClasspathContainer container = (IClasspathContainer)projectContainers.get(containerPath);
        return container;
    }

    public synchronized IClasspathContainer containerGetDefaultToPreviousSession(IJavaProject project, IPath containerPath) {
        Map projectContainers = (Map)this.containers.get(project);
        if (projectContainers == null) {
            return this.getPreviousSessionContainer(containerPath, project);
        }
        IClasspathContainer container = (IClasspathContainer)projectContainers.get(containerPath);
        if (container == null) {
            return this.getPreviousSessionContainer(containerPath, project);
        }
        return container;
    }

    private boolean containerIsInitializationInProgress(IJavaProject project, IPath containerPath) {
        Map initializations = (Map)this.containerInitializationInProgress.get();
        if (initializations == null) {
            return false;
        }
        HashSet projectInitializations = (HashSet)initializations.get(project);
        if (projectInitializations == null) {
            return false;
        }
        return projectInitializations.contains(containerPath);
    }

    private void containerAddInitializationInProgress(IJavaProject project, IPath containerPath) {
        HashSet<IPath> projectInitializations;
        HashMap<IJavaProject, HashSet<IPath>> initializations = (HashMap<IJavaProject, HashSet<IPath>>)this.containerInitializationInProgress.get();
        if (initializations == null) {
            initializations = new HashMap<IJavaProject, HashSet<IPath>>();
            this.containerInitializationInProgress.set(initializations);
        }
        if ((projectInitializations = (HashSet<IPath>)initializations.get(project)) == null) {
            projectInitializations = new HashSet<IPath>();
            initializations.put(project, projectInitializations);
        }
        projectInitializations.add(containerPath);
    }

    public void containerBeingInitializedPut(IJavaProject project, IPath containerPath, IClasspathContainer container) {
        HashMap<IPath, IClasspathContainer> perPathContainers;
        HashMap<IJavaProject, HashMap<IPath, IClasspathContainer>> perProjectContainers = (HashMap<IJavaProject, HashMap<IPath, IClasspathContainer>>)this.containersBeingInitialized.get();
        if (perProjectContainers == null) {
            perProjectContainers = new HashMap<IJavaProject, HashMap<IPath, IClasspathContainer>>();
            this.containersBeingInitialized.set(perProjectContainers);
        }
        if ((perPathContainers = (HashMap<IPath, IClasspathContainer>)perProjectContainers.get(project)) == null) {
            perPathContainers = new HashMap<IPath, IClasspathContainer>();
            perProjectContainers.put(project, perPathContainers);
        }
        perPathContainers.put(containerPath, container);
    }

    public IClasspathContainer containerBeingInitializedGet(IJavaProject project, IPath containerPath) {
        Map perProjectContainers = (Map)this.containersBeingInitialized.get();
        if (perProjectContainers == null) {
            return null;
        }
        HashMap perPathContainers = (HashMap)perProjectContainers.get(project);
        if (perPathContainers == null) {
            return null;
        }
        return (IClasspathContainer)perPathContainers.get(containerPath);
    }

    public IClasspathContainer containerBeingInitializedRemove(IJavaProject project, IPath containerPath) {
        Map perProjectContainers = (Map)this.containersBeingInitialized.get();
        if (perProjectContainers == null) {
            return null;
        }
        HashMap perPathContainers = (HashMap)perProjectContainers.get(project);
        if (perPathContainers == null) {
            return null;
        }
        IClasspathContainer container = (IClasspathContainer)perPathContainers.remove(containerPath);
        if (perPathContainers.size() == 0) {
            perPathContainers.remove(project);
        }
        if (perProjectContainers.size() == 0) {
            this.containersBeingInitialized.set(null);
        }
        return container;
    }

    public synchronized void containerPut(IJavaProject project, IPath containerPath, IClasspathContainer container) {
        if (container == CONTAINER_INITIALIZATION_IN_PROGRESS) {
            this.containerAddInitializationInProgress(project, containerPath);
            return;
        }
        this.containerRemoveInitializationInProgress(project, containerPath);
        HashMap<IPath, IClasspathContainer> projectContainers = (HashMap<IPath, IClasspathContainer>)this.containers.get(project);
        if (projectContainers == null) {
            projectContainers = new HashMap<IPath, IClasspathContainer>(1);
            this.containers.put(project, projectContainers);
        }
        if (container == null) {
            projectContainers.remove(containerPath);
        } else {
            projectContainers.put(containerPath, container);
        }
        Map previousContainers = (Map)this.previousSessionContainers.get(project);
        if (previousContainers != null) {
            previousContainers.remove(containerPath);
        }
    }

    public synchronized void containerRemove(IJavaProject project) {
        Map initializations = (Map)this.containerInitializationInProgress.get();
        if (initializations != null) {
            initializations.remove(project);
        }
        this.containers.remove(project);
    }

    public boolean containerPutIfInitializingWithSameEntries(IPath containerPath, IJavaProject[] projects, IClasspathContainer[] respectiveContainers) {
        int projectLength = projects.length;
        if (projectLength != 1) {
            return false;
        }
        IClasspathContainer container = respectiveContainers[0];
        IJavaProject project = projects[0];
        if (!this.containerIsInitializationInProgress(project, containerPath)) {
            return false;
        }
        IClasspathContainer previousContainer = this.containerGetDefaultToPreviousSession(project, containerPath);
        if (container == null) {
            if (previousContainer == null) {
                this.containerPut(project, containerPath, null);
                return true;
            }
            return false;
        }
        IClasspathEntry[] newEntries = container.getClasspathEntries();
        if (previousContainer == null) {
            if (newEntries.length == 0) {
                this.containerPut(project, containerPath, container);
                return true;
            }
            if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                this.verbose_missbehaving_container(containerPath, projects, respectiveContainers, container, newEntries, null);
            }
            return false;
        }
        IClasspathEntry[] oldEntries = previousContainer.getClasspathEntries();
        if (oldEntries.length != newEntries.length) {
            if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                this.verbose_missbehaving_container(containerPath, projects, respectiveContainers, container, newEntries, oldEntries);
            }
            return false;
        }
        int i = 0;
        int length = newEntries.length;
        while (i < length) {
            if (newEntries[i] == null) {
                if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                    this.verbose_missbehaving_container(project, containerPath, newEntries);
                }
                return false;
            }
            if (!newEntries[i].equals(oldEntries[i])) {
                if (CP_RESOLVE_VERBOSE || CP_RESOLVE_VERBOSE_FAILURE) {
                    this.verbose_missbehaving_container(containerPath, projects, respectiveContainers, container, newEntries, oldEntries);
                }
                return false;
            }
            ++i;
        }
        this.containerPut(project, containerPath, container);
        return true;
    }

    private void verbose_missbehaving_container(IPath containerPath, IJavaProject[] projects, IClasspathContainer[] respectiveContainers, final IClasspathContainer container, final IClasspathEntry[] newEntries, final IClasspathEntry[] oldEntries) {
        Util.verbose("CPContainer SET  - missbehaving container\n\tcontainer path: " + containerPath + '\n' + "\tprojects: {" + org.eclipse.jdt.internal.compiler.util.Util.toString(projects, new Util.Displayable(){

            public String displayString(Object o) {
                return ((IJavaProject)o).getElementName();
            }
        }) + "}\n\tvalues on previous session: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(respectiveContainers, new Util.Displayable(){

            public String displayString(Object o) {
                StringBuffer buffer = new StringBuffer("\t\t");
                if (o == null) {
                    buffer.append("<null>");
                    return buffer.toString();
                }
                buffer.append(container.getDescription());
                buffer.append(" {\n");
                if (oldEntries == null) {
                    buffer.append(" \t\t\t");
                    buffer.append("<null>\n");
                } else {
                    int j = 0;
                    while (j < oldEntries.length) {
                        buffer.append(" \t\t\t");
                        buffer.append(oldEntries[j]);
                        buffer.append('\n');
                        ++j;
                    }
                }
                buffer.append(" \t\t}");
                return buffer.toString();
            }
        }) + "}\n\tnew values: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(respectiveContainers, new Util.Displayable(){

            public String displayString(Object o) {
                StringBuffer buffer = new StringBuffer("\t\t");
                if (o == null) {
                    buffer.append("<null>");
                    return buffer.toString();
                }
                buffer.append(container.getDescription());
                buffer.append(" {\n");
                int j = 0;
                while (j < newEntries.length) {
                    buffer.append(" \t\t\t");
                    buffer.append(newEntries[j]);
                    buffer.append('\n');
                    ++j;
                }
                buffer.append(" \t\t}");
                return buffer.toString();
            }
        }) + "\n\t}");
    }

    void verbose_missbehaving_container(IJavaProject project, IPath containerPath, IClasspathEntry[] classpathEntries) {
        Util.verbose("CPContainer GET - missbehaving container (returning null classpath entry)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tclasspath entries: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(classpathEntries, new Util.Displayable(){

            public String displayString(Object o) {
                StringBuffer buffer = new StringBuffer("\t\t");
                if (o == null) {
                    buffer.append("<null>");
                    return buffer.toString();
                }
                buffer.append(o);
                return buffer.toString();
            }
        }) + "\n\t}");
    }

    void verbose_missbehaving_container_null_entries(IJavaProject project, IPath containerPath) {
        Util.verbose("CPContainer GET - missbehaving container (returning null as classpath entries)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tclasspath entries: <null>");
    }

    private void containerRemoveInitializationInProgress(IJavaProject project, IPath containerPath) {
        Map initializations = (Map)this.containerInitializationInProgress.get();
        if (initializations == null) {
            return;
        }
        HashSet projectInitializations = (HashSet)initializations.get(project);
        if (projectInitializations == null) {
            return;
        }
        projectInitializations.remove(containerPath);
        if (projectInitializations.size() == 0) {
            initializations.remove(project);
        }
        if (initializations.size() == 0) {
            this.containerInitializationInProgress.set(null);
        }
    }

    private synchronized void containersReset(String[] containerIDs) {
        int i = 0;
        while (i < containerIDs.length) {
            String containerID = containerIDs[i];
            Iterator projectIterator = this.containers.values().iterator();
            while (projectIterator.hasNext()) {
                Map projectContainers = (Map)projectIterator.next();
                if (projectContainers == null) continue;
                Iterator containerIterator = projectContainers.keySet().iterator();
                while (containerIterator.hasNext()) {
                    IPath containerPath = (IPath)containerIterator.next();
                    if (!containerID.equals(containerPath.segment(0))) continue;
                    projectContainers.put(containerPath, null);
                }
            }
            ++i;
        }
    }

    public static IJavaElement create(IResource resource, IJavaProject project) {
        if (resource == null) {
            return null;
        }
        int type = resource.getType();
        switch (type) {
            case 4: {
                return JavaCore.create((IProject)resource);
            }
            case 1: {
                return JavaModelManager.create((IFile)resource, project);
            }
            case 2: {
                return JavaModelManager.create((IFolder)resource, project);
            }
            case 8: {
                return JavaCore.create((IWorkspaceRoot)resource);
            }
        }
        return null;
    }

    public static IJavaElement create(IFile file, IJavaProject project) {
        if (file == null) {
            return null;
        }
        if (project == null) {
            project = JavaCore.create(file.getProject());
        }
        if (file.getFileExtension() != null) {
            String name = file.getName();
            if (Util.isJavaLikeFileName(name)) {
                return JavaModelManager.createCompilationUnitFrom(file, project);
            }
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                return JavaModelManager.createClassFileFrom(file, project);
            }
            return JavaModelManager.createJarPackageFragmentRootFrom(file, project);
        }
        return null;
    }

    public static IJavaElement create(IFolder folder, IJavaProject project) {
        IJavaElement element;
        if (folder == null) {
            return null;
        }
        if (project == null) {
            project = JavaCore.create(folder.getProject());
            element = JavaModelManager.determineIfOnClasspath((IResource)folder, project);
            if (element == null) {
                IJavaProject[] projects;
                try {
                    projects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
                }
                catch (JavaModelException javaModelException) {
                    return null;
                }
                int i = 0;
                int length = projects.length;
                while (i < length) {
                    project = projects[i];
                    element = JavaModelManager.determineIfOnClasspath((IResource)folder, project);
                    if (element == null) {
                        ++i;
                        continue;
                    }
                    break;
                }
            }
        } else {
            element = JavaModelManager.determineIfOnClasspath((IResource)folder, project);
        }
        return element;
    }

    public static IClassFile createClassFileFrom(IFile file, IJavaProject project) {
        IPackageFragment pkg;
        if (file == null) {
            return null;
        }
        if (project == null) {
            project = JavaCore.create(file.getProject());
        }
        if ((pkg = (IPackageFragment)JavaModelManager.determineIfOnClasspath((IResource)file, project)) == null) {
            PackageFragmentRoot root = (PackageFragmentRoot)project.getPackageFragmentRoot((IResource)file.getParent());
            pkg = root.getPackageFragment(CharOperation.NO_STRINGS);
        }
        return pkg.getClassFile(file.getName());
    }

    public static ICompilationUnit createCompilationUnitFrom(IFile file, IJavaProject project) {
        IPackageFragment pkg;
        if (file == null) {
            return null;
        }
        if (project == null) {
            project = JavaCore.create(file.getProject());
        }
        if ((pkg = (IPackageFragment)JavaModelManager.determineIfOnClasspath((IResource)file, project)) == null) {
            PackageFragmentRoot root = (PackageFragmentRoot)project.getPackageFragmentRoot((IResource)file.getParent());
            pkg = root.getPackageFragment(CharOperation.NO_STRINGS);
            if (VERBOSE) {
                System.out.println("WARNING : creating unit element outside classpath (" + Thread.currentThread() + "): " + file.getFullPath());
            }
        }
        return pkg.getCompilationUnit(file.getName());
    }

    public static IPackageFragmentRoot createJarPackageFragmentRootFrom(IFile file, IJavaProject project) {
        if (file == null) {
            return null;
        }
        if (project == null) {
            project = JavaCore.create(file.getProject());
        }
        IPath resourcePath = file.getFullPath();
        try {
            IClasspathEntry entry = ((JavaProject)project).getClasspathEntryFor(resourcePath);
            if (entry != null) {
                return project.getPackageFragmentRoot((IResource)file);
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static IJavaElement determineIfOnClasspath(IResource resource, IJavaProject project) {
        IPath resourcePath = resource.getFullPath();
        boolean isExternal = ExternalFoldersManager.isInternalPathForExternalFolder(resourcePath);
        if (isExternal) {
            resourcePath = resource.getLocation();
        }
        try {
            JavaProjectElementInfo projectInfo = (JavaProjectElementInfo)JavaModelManager.getJavaModelManager().getInfo(project);
            JavaProjectElementInfo.ProjectCache projectCache = projectInfo == null ? null : projectInfo.projectCache;
            HashtableOfArrayToObject allPkgFragmentsCache = projectCache == null ? null : projectCache.allPkgFragmentsCache;
            boolean isJavaLike = Util.isJavaLikeFileName(resourcePath.lastSegment());
            IClasspathEntry[] entries = isJavaLike ? project.getRawClasspath() : ((JavaProject)project).getResolvedClasspath();
            int length = entries.length;
            if (length <= 0) return null;
            String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
            String complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
            int i = 0;
            while (true) {
                if (i >= length) {
                    return null;
                }
                IClasspathEntry entry = entries[i];
                if (entry.getEntryKind() != 2) {
                    IPath rootPath = entry.getPath();
                    if (rootPath.equals((Object)resourcePath)) {
                        if (!isJavaLike) return project.getPackageFragmentRoot(resource);
                        return null;
                    }
                    if (rootPath.isPrefixOf(resourcePath) && !Util.isExcluded(resource, ((ClasspathEntry)entry).fullInclusionPatternChars(), ((ClasspathEntry)entry).fullExclusionPatternChars())) {
                        PackageFragmentRoot root;
                        PackageFragmentRoot packageFragmentRoot = root = isExternal ? new ExternalPackageFragmentRoot(rootPath, (JavaProject)project) : (PackageFragmentRoot)((JavaProject)project).getFolderPackageFragmentRoot(rootPath);
                        if (root == null) {
                            return null;
                        }
                        IPath pkgPath = resourcePath.removeFirstSegments(rootPath.segmentCount());
                        if (resource.getType() == 1) {
                            pkgPath = pkgPath.removeLastSegments(1);
                        }
                        Object[] pkgName = pkgPath.segments();
                        if (allPkgFragmentsCache != null && allPkgFragmentsCache.containsKey(pkgName)) {
                            return root.getPackageFragment((String[])pkgName);
                        }
                        if (pkgName.length == 0) return root.getPackageFragment((String[])pkgName);
                        if (JavaConventions.validatePackageName(Util.packageName(pkgPath, sourceLevel, complianceLevel), sourceLevel, complianceLevel).getSeverity() != 4) return root.getPackageFragment((String[])pkgName);
                        return null;
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    private JavaModelManager() {
        if (Platform.isRunning()) {
            this.indexManager = new IndexManager();
            this.nonChainingJars = this.loadClasspathListCache(NON_CHAINING_JARS_CACHE);
            this.invalidArchives = this.loadClasspathListCache(INVALID_ARCHIVES_CACHE);
            String includeContainerReferencedLib = System.getProperty(RESOLVE_REFERENCED_LIBRARIES_FOR_CONTAINERS);
            this.resolveReferencedLibrariesForContainers = TRUE.equalsIgnoreCase(includeContainerReferencedLib);
        }
    }

    private void addDeprecatedOptions(Hashtable options) {
        options.put("org.eclipse.jdt.core.compiler.problem.invalidImport", "error");
        options.put("org.eclipse.jdt.core.compiler.problem.unreachableCode", "error");
    }

    public void addNonChainingJar(IPath path) {
        if (this.nonChainingJars != null) {
            this.nonChainingJars.add(path);
        }
    }

    public void addInvalidArchive(IPath path) {
        if (this.invalidArchives == null) {
            this.invalidArchives = Collections.synchronizedSet(new HashSet());
        }
        if (this.invalidArchives != null) {
            this.invalidArchives.add(path);
        }
    }

    public void cacheZipFiles(Object owner) {
        ZipCache zipCache = (ZipCache)this.zipFiles.get();
        if (zipCache != null) {
            return;
        }
        this.zipFiles.set(new ZipCache(owner));
    }

    public void closeZipFile(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        if (this.zipFiles.get() != null) {
            return;
        }
        try {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + Thread.currentThread() + ") [JavaModelManager.closeZipFile(ZipFile)] Closing ZipFile on " + zipFile.getName());
            }
            zipFile.close();
        }
        catch (IOException iOException) {}
    }

    public void configurePluginDebugOptions() {
        if (JavaCore.getPlugin().isDebugging()) {
            String option = Platform.getDebugOption((String)BUFFER_MANAGER_DEBUG);
            if (option != null) {
                BufferManager.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)BUILDER_DEBUG)) != null) {
                JavaBuilder.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)COMPILER_DEBUG)) != null) {
                Compiler.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)BUILDER_STATS_DEBUG)) != null) {
                JavaBuilder.SHOW_STATS = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)COMPLETION_DEBUG)) != null) {
                CompletionEngine.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)CP_RESOLVE_DEBUG)) != null) {
                CP_RESOLVE_VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)CP_RESOLVE_ADVANCED_DEBUG)) != null) {
                CP_RESOLVE_VERBOSE_ADVANCED = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)CP_RESOLVE_FAILURE_DEBUG)) != null) {
                CP_RESOLVE_VERBOSE_FAILURE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)DELTA_DEBUG)) != null) {
                DeltaProcessor.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)DELTA_DEBUG_VERBOSE)) != null) {
                DeltaProcessor.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)HIERARCHY_DEBUG)) != null) {
                TypeHierarchy.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)INDEX_MANAGER_DEBUG)) != null) {
                JobManager.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)INDEX_MANAGER_ADVANCED_DEBUG)) != null) {
                IndexManager.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)JAVAMODEL_DEBUG)) != null) {
                VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)JAVAMODELCACHE_DEBUG)) != null) {
                JavaModelCache.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)POST_ACTION_DEBUG)) != null) {
                JavaModelOperation.POST_ACTION_VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)RESOLUTION_DEBUG)) != null) {
                NameLookup.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)SEARCH_DEBUG)) != null) {
                BasicSearchEngine.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)SELECTION_DEBUG)) != null) {
                SelectionEngine.DEBUG = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)ZIP_ACCESS_DEBUG)) != null) {
                ZIP_ACCESS_VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)SOURCE_MAPPER_DEBUG_VERBOSE)) != null) {
                SourceMapper.VERBOSE = option.equalsIgnoreCase(TRUE);
            }
            if ((option = Platform.getDebugOption((String)FORMATTER_DEBUG)) != null) {
                DefaultCodeFormatter.DEBUG = option.equalsIgnoreCase(TRUE);
            }
        }
        if (PerformanceStats.ENABLED) {
            CompletionEngine.PERF = PerformanceStats.isEnabled((String)COMPLETION_PERF);
            SelectionEngine.PERF = PerformanceStats.isEnabled((String)SELECTION_PERF);
            DeltaProcessor.PERF = PerformanceStats.isEnabled((String)DELTA_LISTENER_PERF);
            PERF_VARIABLE_INITIALIZER = PerformanceStats.isEnabled((String)VARIABLE_INITIALIZER_PERF);
            PERF_CONTAINER_INITIALIZER = PerformanceStats.isEnabled((String)CONTAINER_INITIALIZER_PERF);
            ReconcileWorkingCopyOperation.PERF = PerformanceStats.isEnabled((String)RECONCILE_PERF);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public AbstractAnnotationProcessorManager createAnnotationProcessorManager() {
        block10: {
            JavaModelManager javaModelManager = this;
            synchronized (javaModelManager) {
                IExtensionPoint extension;
                block9: {
                    if (this.annotationProcessorManagerFactory != null) break block10;
                    extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.jdt.core", ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID);
                    if (extension != null) break block9;
                    return null;
                }
                IExtension[] extensions = extension.getExtensions();
                int i = 0;
                while (i < extensions.length) {
                    if (i > 0) {
                        Util.log(null, "An annotation processor manager is already registered: ignoring " + extensions[i].getUniqueIdentifier());
                        break;
                    }
                    IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                    int j = 0;
                    while (j < configElements.length) {
                        IConfigurationElement configElement = configElements[j];
                        if (ANNOTATION_PROCESSOR_MANAGER_EXTPOINT_ID.equals(configElement.getName())) {
                            this.annotationProcessorManagerFactory = configElement;
                            break;
                        }
                        ++j;
                    }
                    ++i;
                }
            }
        }
        if (this.annotationProcessorManagerFactory == null) {
            return null;
        }
        final AbstractAnnotationProcessorManager[] apm = new AbstractAnnotationProcessorManager[]{null};
        final IConfigurationElement factory = this.annotationProcessorManagerFactory;
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void handleException(Throwable exception) {
                Util.log(exception, "Exception occurred while loading annotation processor manager");
            }

            public void run() throws Exception {
                Object executableExtension = factory.createExecutableExtension("class");
                if (executableExtension instanceof AbstractAnnotationProcessorManager) {
                    apm[0] = (AbstractAnnotationProcessorManager)executableExtension;
                }
            }
        });
        return apm[0];
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int discardPerWorkingCopyInfo(CompilationUnit workingCopy) throws JavaModelException {
        JavaElementDeltaBuilder deltaBuilder = null;
        if (workingCopy.isPrimary() && workingCopy.hasUnsavedChanges()) {
            deltaBuilder = new JavaElementDeltaBuilder(workingCopy);
        }
        PerWorkingCopyInfo info = null;
        Map map = this.perWorkingCopyInfos;
        synchronized (map) {
            Map workingCopyToInfos;
            WorkingCopyOwner owner;
            block12: {
                block11: {
                    owner = workingCopy.owner;
                    workingCopyToInfos = (Map)this.perWorkingCopyInfos.get(owner);
                    if (workingCopyToInfos != null) break block11;
                    return -1;
                }
                info = (PerWorkingCopyInfo)workingCopyToInfos.get(workingCopy);
                if (info != null) break block12;
                return -1;
            }
            if (--info.useCount == 0) {
                workingCopyToInfos.remove(workingCopy);
                if (workingCopyToInfos.isEmpty()) {
                    this.perWorkingCopyInfos.remove(owner);
                }
            }
        }
        if (info.useCount == 0) {
            this.removeInfoAndChildren(workingCopy);
            workingCopy.closeBuffer();
            if (deltaBuilder != null) {
                deltaBuilder.buildDeltas();
                if (deltaBuilder.delta != null) {
                    this.getDeltaProcessor().registerJavaModelDelta(deltaBuilder.delta);
                }
            }
        }
        return info.useCount;
    }

    public void doneSaving(ISaveContext context) {
    }

    public void flushZipFiles(Object owner) {
        ZipCache zipCache = (ZipCache)this.zipFiles.get();
        if (zipCache == null) {
            return;
        }
        if (zipCache.owner == owner) {
            this.zipFiles.set(null);
            zipCache.flush();
        }
    }

    public synchronized boolean forceBatchInitializations(boolean initAfterLoad) {
        switch (this.batchContainerInitializations) {
            case 0: {
                this.batchContainerInitializations = 1;
                return true;
            }
            case 3: {
                if (initAfterLoad) {
                    return false;
                }
                this.batchContainerInitializations = 1;
                return true;
            }
        }
        return false;
    }

    private synchronized boolean batchContainerInitializations() {
        switch (this.batchContainerInitializations) {
            case 1: {
                this.batchContainerInitializations = 2;
                return true;
            }
            case 2: {
                return true;
            }
        }
        return false;
    }

    private synchronized void batchInitializationFinished() {
        this.batchContainerInitializations = 3;
    }

    public IClasspathContainer getClasspathContainer(IPath containerPath, IJavaProject project) throws JavaModelException {
        IClasspathContainer container = this.containerGet(project, containerPath);
        if (container == null) {
            if (this.batchContainerInitializations()) {
                try {
                    container = this.initializeAllContainers(project, containerPath);
                }
                finally {
                    this.batchInitializationFinished();
                }
            } else {
                container = this.initializeContainer(project, containerPath);
                this.containerBeingInitializedRemove(project, containerPath);
                SetContainerOperation operation = new SetContainerOperation(containerPath, new IJavaProject[]{project}, new IClasspathContainer[]{container});
                operation.runOperation(null);
            }
        }
        return container;
    }

    public IClasspathEntry[] getReferencedClasspathEntries(IClasspathEntry libraryEntry, IJavaProject project) {
        IClasspathEntry[] referencedEntries = ((ClasspathEntry)libraryEntry).resolvedChainedLibraries();
        if (project == null) {
            return referencedEntries;
        }
        PerProjectInfo perProjectInfo = this.getPerProjectInfo(project.getProject(), false);
        if (perProjectInfo == null) {
            return referencedEntries;
        }
        ArrayList<IPath> pathToReferencedEntries = new ArrayList<IPath>(referencedEntries.length);
        int index = 0;
        while (index < referencedEntries.length) {
            if (!pathToReferencedEntries.contains(referencedEntries[index].getPath())) {
                IClasspathEntry persistedEntry = null;
                persistedEntry = (IClasspathEntry)perProjectInfo.rootPathToResolvedEntries.get(referencedEntries[index].getPath());
                if (persistedEntry != null) {
                    referencedEntries[index] = persistedEntry;
                }
                pathToReferencedEntries.add(referencedEntries[index].getPath());
            }
            ++index;
        }
        return referencedEntries;
    }

    public DeltaProcessor getDeltaProcessor() {
        return this.deltaState.getDeltaProcessor();
    }

    public static DeltaProcessingState getDeltaState() {
        return JavaModelManager.MANAGER.deltaState;
    }

    protected HashSet getElementsOutOfSynchWithBuffers() {
        return this.elementsOutOfSynchWithBuffers;
    }

    public static ExternalFoldersManager getExternalManager() {
        return JavaModelManager.MANAGER.externalFoldersManager;
    }

    public static IndexManager getIndexManager() {
        return JavaModelManager.MANAGER.indexManager;
    }

    public synchronized Object getInfo(IJavaElement element) {
        Object result;
        HashMap tempCache = (HashMap)this.temporaryCache.get();
        if (tempCache != null && (result = tempCache.get(element)) != null) {
            return result;
        }
        return this.cache.getInfo(element);
    }

    public synchronized IJavaElement getExistingElement(IJavaElement element) {
        return this.cache.getExistingElement(element);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public HashSet getExternalWorkingCopyProjects() {
        Map map = this.perWorkingCopyInfos;
        synchronized (map) {
            HashSet<IJavaProject> result = null;
            Iterator values = this.perWorkingCopyInfos.values().iterator();
            while (values.hasNext()) {
                Map ownerCopies = (Map)values.next();
                Iterator workingCopies = ownerCopies.keySet().iterator();
                while (workingCopies.hasNext()) {
                    ICompilationUnit workingCopy = (ICompilationUnit)workingCopies.next();
                    IJavaProject project = workingCopy.getJavaProject();
                    if (!project.getElementName().equals(" ")) continue;
                    if (result == null) {
                        result = new HashSet<IJavaProject>();
                    }
                    result.add(project);
                }
            }
            return result;
        }
    }

    public IEclipsePreferences getInstancePreferences() {
        return this.preferencesLookup[0];
    }

    public Hashtable getDefaultOptions() {
        Hashtable<String, String> defaultOptions = new Hashtable<String, String>(10);
        IEclipsePreferences defaultPreferences = this.getDefaultPreferences();
        Iterator iterator = this.optionNames.iterator();
        while (iterator.hasNext()) {
            String propertyName = (String)iterator.next();
            String value = defaultPreferences.get(propertyName, null);
            if (value == null) continue;
            defaultOptions.put(propertyName, value);
        }
        defaultOptions.put("org.eclipse.jdt.core.encoding", JavaCore.getEncoding());
        this.addDeprecatedOptions(defaultOptions);
        return defaultOptions;
    }

    public IEclipsePreferences getDefaultPreferences() {
        return this.preferencesLookup[1];
    }

    public final JavaModel getJavaModel() {
        return this.javaModel;
    }

    public static final JavaModelManager getJavaModelManager() {
        return MANAGER;
    }

    public Object getLastBuiltState(IProject project, IProgressMonitor monitor) {
        if (!JavaProject.hasJavaNature(project)) {
            if (JavaBuilder.DEBUG) {
                System.out.println(project + " is not a Java project");
            }
            return null;
        }
        PerProjectInfo info = this.getPerProjectInfo(project, true);
        if (!info.triedRead) {
            info.triedRead = true;
            try {
                if (monitor != null) {
                    monitor.subTask(Messages.bind(Messages.build_readStateProgress, project.getName()));
                }
                info.savedState = this.readState(project);
            }
            catch (CoreException e) {
                e.printStackTrace();
            }
        }
        return info.savedState;
    }

    public String getOption(String optionName) {
        if ("org.eclipse.jdt.core.encoding".equals(optionName)) {
            return JavaCore.getEncoding();
        }
        if (this.isDeprecatedOption(optionName)) {
            return "error";
        }
        int optionLevel = this.getOptionLevel(optionName);
        if (optionLevel != 0) {
            IPreferencesService service = Platform.getPreferencesService();
            String value = service.get(optionName, null, (Preferences[])this.preferencesLookup);
            if (value == null && optionLevel == 1) {
                String[] compatibleOptions = (String[])this.deprecatedOptions.get(optionName);
                value = service.get(compatibleOptions[0], null, (Preferences[])this.preferencesLookup);
            }
            return value == null ? null : value.trim();
        }
        return null;
    }

    public String getOption(String optionName, boolean inheritJavaCoreOptions, IEclipsePreferences projectPreferences) {
        switch (this.getOptionLevel(optionName)) {
            case 2: {
                String javaCoreDefault;
                String string = javaCoreDefault = inheritJavaCoreOptions ? JavaCore.getOption(optionName) : null;
                if (projectPreferences == null) {
                    return javaCoreDefault;
                }
                String value = projectPreferences.get(optionName, javaCoreDefault);
                return value == null ? null : value.trim();
            }
            case 1: {
                String oldValue = projectPreferences.get(optionName, null);
                if (oldValue != null) {
                    return oldValue.trim();
                }
                String[] compatibleOptions = (String[])this.deprecatedOptions.get(optionName);
                String newDefault = inheritJavaCoreOptions ? JavaCore.getOption(compatibleOptions[0]) : null;
                String newValue = projectPreferences.get(compatibleOptions[0], newDefault);
                return newValue == null ? null : newValue.trim();
            }
        }
        return null;
    }

    public boolean knowsOption(String optionName) {
        boolean knownOption = this.optionNames.contains(optionName);
        if (!knownOption) {
            knownOption = this.deprecatedOptions.get(optionName) != null;
        }
        return knownOption;
    }

    public int getOptionLevel(String optionName) {
        if (this.optionNames.contains(optionName)) {
            return 2;
        }
        if (this.deprecatedOptions.get(optionName) != null) {
            return 1;
        }
        return 0;
    }

    public Hashtable getOptions() {
        Hashtable cachedOptions = this.optionsCache;
        if (cachedOptions != null) {
            if (DEBUG_302850) {
                this.checkTaskTags("Retrieving options from optionsCache", this.optionsCache);
            }
            return new Hashtable(cachedOptions);
        }
        if (DEBUG_302850) {
            System.out.println("optionsCache was null");
        }
        if (!Platform.isRunning()) {
            this.optionsCache = this.getDefaultOptionsNoInitialization();
            if (DEBUG_302850) {
                this.checkTaskTags("Platform is not running", this.optionsCache);
            }
            return new Hashtable(this.optionsCache);
        }
        Hashtable<String, String> options = new Hashtable<String, String>(10);
        IPreferencesService service = Platform.getPreferencesService();
        Iterator iterator = this.optionNames.iterator();
        while (iterator.hasNext()) {
            String propertyName = (String)iterator.next();
            String propertyValue = service.get(propertyName, null, (Preferences[])this.preferencesLookup);
            if (propertyValue == null) continue;
            options.put(propertyName, propertyValue);
        }
        if (DEBUG_302850) {
            this.checkTaskTags("Options initialized from preferences", options);
        }
        Iterator deprecatedEntries = this.deprecatedOptions.entrySet().iterator();
        while (deprecatedEntries.hasNext()) {
            Map.Entry entry = deprecatedEntries.next();
            String propertyName = (String)entry.getKey();
            String propertyValue = service.get(propertyName, null, (Preferences[])this.preferencesLookup);
            if (propertyValue == null) continue;
            options.put(propertyName, propertyValue);
            String[] compatibleOptions = (String[])entry.getValue();
            int co = 0;
            int length = compatibleOptions.length;
            while (co < length) {
                String compatibleOption = compatibleOptions[co];
                if (!options.containsKey(compatibleOption)) {
                    options.put(compatibleOption, propertyValue);
                }
                ++co;
            }
        }
        options.put("org.eclipse.jdt.core.encoding", JavaCore.getEncoding());
        this.addDeprecatedOptions(options);
        Util.fixTaskTags(options);
        if (DEBUG_302850) {
            this.checkTaskTags("Retrieved options from preferences", options);
        }
        this.optionsCache = new Hashtable(options);
        if (DEBUG_302850) {
            this.checkTaskTags("Stored optionsCache", this.optionsCache);
        }
        return options;
    }

    private void checkTaskTags(String msg, Hashtable someOptions) {
        System.out.println(msg);
        Object taskTags = someOptions.get("org.eclipse.jdt.core.compiler.taskTags");
        System.out.println("\t+ Task tags:           " + taskTags);
        if (taskTags == null || "".equals(taskTags)) {
            System.out.println("\t- option names: " + this.optionNames);
            System.out.println("\t- Call stack:");
            StackTraceElement[] elements = new Exception().getStackTrace();
            int i = 0;
            int n = elements.length;
            while (i < n) {
                System.out.println("\t\t+ " + elements[i]);
                ++i;
            }
        }
    }

    private Hashtable getDefaultOptionsNoInitialization() {
        Map defaultOptionsMap = new CompilerOptions().getMap();
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskTags", "TODO,FIXME,XXX");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskPriorities", "NORMAL,HIGH,NORMAL");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.invalidClasspath", "abort");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.duplicateResourceTask", "warning");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.cleanOutputFolder", "clean");
        defaultOptionsMap.put("org.eclipse.jdt.core.computeJavaBuildOrder", "ignore");
        defaultOptionsMap.put("org.eclipse.jdt.core.incompleteClasspath", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.circularClasspath", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.incompatibleJDKLevel", "ignore");
        defaultOptionsMap.put("org.eclipse.jdt.core.classpath.exclusionPatterns", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.classpath.multipleOutputLocations", "enabled");
        defaultOptionsMap.putAll(DefaultCodeFormatterConstants.getEclipseDefaultSettings());
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.visibilityCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.deprecationCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.forceImplicitQualification", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.fieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.localPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.argumentPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.fieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.localSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.argumentSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.suggestStaticImports", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc", "50");
        return new Hashtable(defaultOptionsMap);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public PerProjectInfo getPerProjectInfo(IProject project, boolean create) {
        Map map = this.perProjectInfos;
        synchronized (map) {
            PerProjectInfo info = (PerProjectInfo)this.perProjectInfos.get(project);
            if (info == null && create) {
                info = new PerProjectInfo(project);
                this.perProjectInfos.put(project, info);
            }
            return info;
        }
    }

    public PerProjectInfo getPerProjectInfoCheckExistence(IProject project) throws JavaModelException {
        PerProjectInfo info = this.getPerProjectInfo(project, false);
        if (info == null) {
            if (!JavaProject.hasJavaNature(project)) {
                throw ((JavaProject)JavaCore.create(project)).newNotPresentException();
            }
            info = this.getPerProjectInfo(project, true);
        }
        return info;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public PerWorkingCopyInfo getPerWorkingCopyInfo(CompilationUnit workingCopy, boolean create, boolean recordUsage, IProblemRequestor problemRequestor) {
        Map map = this.perWorkingCopyInfos;
        synchronized (map) {
            PerWorkingCopyInfo info;
            WorkingCopyOwner owner = workingCopy.owner;
            HashMap<CompilationUnit, PerWorkingCopyInfo> workingCopyToInfos = (HashMap<CompilationUnit, PerWorkingCopyInfo>)this.perWorkingCopyInfos.get(owner);
            if (workingCopyToInfos == null && create) {
                workingCopyToInfos = new HashMap<CompilationUnit, PerWorkingCopyInfo>();
                this.perWorkingCopyInfos.put(owner, workingCopyToInfos);
            }
            PerWorkingCopyInfo perWorkingCopyInfo = info = workingCopyToInfos == null ? null : (PerWorkingCopyInfo)workingCopyToInfos.get(workingCopy);
            if (info == null && create) {
                info = new PerWorkingCopyInfo(workingCopy, problemRequestor);
                workingCopyToInfos.put(workingCopy, info);
            }
            if (info != null && recordUsage) {
                ++info.useCount;
            }
            return info;
        }
    }

    public IClasspathContainer getPreviousSessionContainer(IPath containerPath, IJavaProject project) {
        IClasspathContainer previousContainer;
        Map previousContainerValues = (Map)this.previousSessionContainers.get(project);
        if (previousContainerValues != null && (previousContainer = (IClasspathContainer)previousContainerValues.get(containerPath)) != null) {
            if (CP_RESOLVE_VERBOSE_ADVANCED) {
                this.verbose_reentering_project_container_access(containerPath, project, previousContainer);
            }
            return previousContainer;
        }
        return null;
    }

    private void verbose_reentering_project_container_access(IPath containerPath, IJavaProject project, IClasspathContainer previousContainer) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("CPContainer INIT - reentering access to project container during its initialization, will see previous value\n");
        buffer.append("\tproject: " + project.getElementName() + '\n');
        buffer.append("\tcontainer path: " + containerPath + '\n');
        buffer.append("\tprevious value: ");
        buffer.append(previousContainer.getDescription());
        buffer.append(" {\n");
        IClasspathEntry[] entries = previousContainer.getClasspathEntries();
        if (entries != null) {
            int j = 0;
            while (j < entries.length) {
                buffer.append(" \t\t");
                buffer.append(entries[j]);
                buffer.append('\n');
                ++j;
            }
        }
        buffer.append(" \t}");
        Util.verbose(buffer.toString());
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public IPath getPreviousSessionVariable(String variableName) {
        IPath previousPath = (IPath)this.previousSessionVariables.get(variableName);
        if (previousPath != null) {
            if (CP_RESOLVE_VERBOSE_ADVANCED) {
                this.verbose_reentering_variable_access(variableName, previousPath);
            }
            return previousPath;
        }
        return null;
    }

    private void verbose_reentering_variable_access(String variableName, IPath previousPath) {
        Util.verbose("CPVariable INIT - reentering access to variable during its initialization, will see previous value\n\tvariable: " + variableName + '\n' + "\tprevious value: " + previousPath);
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public HashMap getTemporaryCache() {
        HashMap result = (HashMap)this.temporaryCache.get();
        if (result == null) {
            result = new HashMap();
            this.temporaryCache.set(result);
        }
        return result;
    }

    private File getVariableAndContainersFile() {
        return JavaCore.getPlugin().getStateLocation().append("variablesAndContainers.dat").toFile();
    }

    public static String[] getRegisteredVariableNames() {
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        ArrayList<String> variableList = new ArrayList<String>(5);
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.jdt.core", CPVARIABLE_INITIALIZER_EXTPOINT_ID);
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String varAttribute = configElements[j].getAttribute("variable");
                    if (varAttribute != null) {
                        variableList.add(varAttribute);
                    }
                    ++j;
                }
                ++i;
            }
        }
        String[] variableNames = new String[variableList.size()];
        variableList.toArray(variableNames);
        return variableNames;
    }

    public static String[] getRegisteredContainerIDs() {
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        ArrayList<String> containerIDList = new ArrayList<String>(5);
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.jdt.core", CPCONTAINER_INITIALIZER_EXTPOINT_ID);
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String idAttribute = configElements[j].getAttribute("id");
                    if (idAttribute != null) {
                        containerIDList.add(idAttribute);
                    }
                    ++j;
                }
                ++i;
            }
        }
        String[] containerIDs = new String[containerIDList.size()];
        containerIDList.toArray(containerIDs);
        return containerIDs;
    }

    public IClasspathEntry resolveVariableEntry(IClasspathEntry entry, boolean usePreviousSession) {
        if (entry.getEntryKind() != 4) {
            return entry;
        }
        IPath resolvedPath = this.getResolvedVariablePath(entry.getPath(), usePreviousSession);
        if (resolvedPath == null) {
            return null;
        }
        Object target = JavaModel.getTarget(resolvedPath = ClasspathEntry.resolveDotDot(null, resolvedPath), false);
        if (target == null) {
            return null;
        }
        if (target instanceof IResource) {
            IResource resolvedResource = (IResource)target;
            switch (resolvedResource.getType()) {
                case 4: {
                    return JavaCore.newProjectEntry(resolvedPath, entry.getAccessRules(), entry.combineAccessRules(), entry.getExtraAttributes(), entry.isExported());
                }
                case 1: {
                    return JavaCore.newLibraryEntry(resolvedPath, this.getResolvedVariablePath(entry.getSourceAttachmentPath(), usePreviousSession), this.getResolvedVariablePath(entry.getSourceAttachmentRootPath(), usePreviousSession), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
                }
                case 2: {
                    return JavaCore.newLibraryEntry(resolvedPath, this.getResolvedVariablePath(entry.getSourceAttachmentPath(), usePreviousSession), this.getResolvedVariablePath(entry.getSourceAttachmentRootPath(), usePreviousSession), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
                }
            }
        }
        if (target instanceof File) {
            File externalFile = JavaModel.getFile(target);
            if (externalFile != null) {
                return JavaCore.newLibraryEntry(resolvedPath, this.getResolvedVariablePath(entry.getSourceAttachmentPath(), usePreviousSession), this.getResolvedVariablePath(entry.getSourceAttachmentRootPath(), usePreviousSession), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
            }
            if (resolvedPath.isAbsolute()) {
                return JavaCore.newLibraryEntry(resolvedPath, this.getResolvedVariablePath(entry.getSourceAttachmentPath(), usePreviousSession), this.getResolvedVariablePath(entry.getSourceAttachmentRootPath(), usePreviousSession), entry.getAccessRules(), entry.getExtraAttributes(), entry.isExported());
            }
        }
        return null;
    }

    public IPath getResolvedVariablePath(IPath variablePath, boolean usePreviousSession) {
        IPath resolvedPath;
        if (variablePath == null) {
            return null;
        }
        int count = variablePath.segmentCount();
        if (count == 0) {
            return null;
        }
        String variableName = variablePath.segment(0);
        IPath iPath = resolvedPath = usePreviousSession ? this.getPreviousSessionVariable(variableName) : JavaCore.getClasspathVariable(variableName);
        if (resolvedPath == null) {
            return null;
        }
        if (count > 1) {
            resolvedPath = resolvedPath.append(variablePath.removeFirstSegments(1));
        }
        return resolvedPath;
    }

    private File getSerializationFile(IProject project) {
        if (!project.exists()) {
            return null;
        }
        IPath workingLocation = project.getWorkingLocation("org.eclipse.jdt.core");
        return workingLocation.append("state.dat").toFile();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static UserLibraryManager getUserLibraryManager() {
        if (JavaModelManager.MANAGER.userLibraryManager == null) {
            UserLibraryManager libraryManager = new UserLibraryManager();
            JavaModelManager javaModelManager = MANAGER;
            synchronized (javaModelManager) {
                if (JavaModelManager.MANAGER.userLibraryManager == null) {
                    JavaModelManager.MANAGER.userLibraryManager = libraryManager;
                }
            }
        }
        return JavaModelManager.MANAGER.userLibraryManager;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ICompilationUnit[] getWorkingCopies(WorkingCopyOwner owner, boolean addPrimary) {
        Map map = this.perWorkingCopyInfos;
        synchronized (map) {
            ICompilationUnit[] primaryWCs = addPrimary && owner != DefaultWorkingCopyOwner.PRIMARY ? this.getWorkingCopies(DefaultWorkingCopyOwner.PRIMARY, false) : null;
            Map workingCopyToInfos = (Map)this.perWorkingCopyInfos.get(owner);
            if (workingCopyToInfos == null) {
                return primaryWCs;
            }
            int primaryLength = primaryWCs == null ? 0 : primaryWCs.length;
            int size = workingCopyToInfos.size();
            ICompilationUnit[] result = new ICompilationUnit[primaryLength + size];
            int index = 0;
            if (primaryWCs != null) {
                int i = 0;
                while (i < primaryLength) {
                    ICompilationUnit primaryWorkingCopy = primaryWCs[i];
                    CompilationUnit workingCopy = new CompilationUnit((PackageFragment)primaryWorkingCopy.getParent(), primaryWorkingCopy.getElementName(), owner);
                    if (!workingCopyToInfos.containsKey(workingCopy)) {
                        result[index++] = primaryWorkingCopy;
                    }
                    ++i;
                }
                if (index != primaryLength) {
                    ICompilationUnit[] iCompilationUnitArray = result;
                    result = new ICompilationUnit[index + size];
                    System.arraycopy(iCompilationUnitArray, 0, result, 0, index);
                }
            }
            Iterator iterator = workingCopyToInfos.values().iterator();
            while (iterator.hasNext()) {
                result[index++] = ((PerWorkingCopyInfo)iterator.next()).getWorkingCopy();
            }
            return result;
        }
    }

    public JavaWorkspaceScope getWorkspaceScope() {
        if (this.workspaceScope == null) {
            this.workspaceScope = new JavaWorkspaceScope();
        }
        return this.workspaceScope;
    }

    public void verifyArchiveContent(IPath path) throws CoreException {
        if (this.isInvalidArchive(path)) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", -1, Messages.status_IOException, (Throwable)new ZipException()));
        }
        ZipFile file = this.getZipFile(path);
        this.closeZipFile(file);
    }

    public ZipFile getZipFile(IPath path) throws CoreException {
        ZipFile zipFile;
        if (this.isInvalidArchive(path)) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", -1, Messages.status_IOException, (Throwable)new ZipException()));
        }
        ZipCache zipCache = (ZipCache)this.zipFiles.get();
        if (zipCache != null && (zipFile = zipCache.getCache(path)) != null) {
            return zipFile;
        }
        File localFile = null;
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        IResource file = root.findMember(path);
        if (file != null) {
            URI location;
            if (file.getType() != 1 || (location = file.getLocationURI()) == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", -1, Messages.bind(Messages.file_notFound, path.toString()), null));
            }
            localFile = Util.toLocalFile(location, null);
            if (localFile == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", -1, Messages.bind(Messages.file_notFound, path.toString()), null));
            }
        } else {
            localFile = path.toFile();
        }
        try {
            if (ZIP_ACCESS_VERBOSE) {
                System.out.println("(" + Thread.currentThread() + ") [JavaModelManager.getZipFile(IPath)] Creating ZipFile on " + localFile);
            }
            zipFile = new ZipFile(localFile);
            if (zipCache != null) {
                zipCache.setCache(path, zipFile);
            }
            return zipFile;
        }
        catch (IOException e) {
            this.addInvalidArchive(path);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", -1, Messages.status_IOException, (Throwable)e));
        }
    }

    public boolean hasTemporaryCache() {
        return this.temporaryCache.get() != null;
    }

    private IClasspathContainer initializeAllContainers(IJavaProject javaProjectToInit, IPath containerToInit) throws JavaModelException {
        block18: {
            if (CP_RESOLVE_VERBOSE_ADVANCED) {
                this.verbose_batching_containers_initialization(javaProjectToInit, containerToInit);
            }
            final HashMap<IJavaProject, HashSet<IPath>> allContainerPaths = new HashMap<IJavaProject, HashSet<IPath>>();
            IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
            int i = 0;
            int length = projects.length;
            while (i < length) {
                IProject project = projects[i];
                if (JavaProject.hasJavaNature(project)) {
                    JavaProject javaProject = new JavaProject(project, this.getJavaModel());
                    HashSet<IPath> paths = (HashSet<IPath>)allContainerPaths.get(javaProject);
                    IClasspathEntry[] rawClasspath = javaProject.getRawClasspath();
                    int j = 0;
                    int length2 = rawClasspath.length;
                    while (j < length2) {
                        IClasspathEntry entry = rawClasspath[j];
                        IPath path = entry.getPath();
                        if (entry.getEntryKind() == 5 && this.containerGet(javaProject, path) == null) {
                            if (paths == null) {
                                paths = new HashSet<IPath>();
                                allContainerPaths.put(javaProject, paths);
                            }
                            paths.add(path);
                        }
                        ++j;
                    }
                }
                ++i;
            }
            if (javaProjectToInit != null) {
                HashSet<IPath> containerPaths = (HashSet<IPath>)allContainerPaths.get(javaProjectToInit);
                if (containerPaths == null) {
                    containerPaths = new HashSet<IPath>();
                    allContainerPaths.put(javaProjectToInit, containerPaths);
                }
                containerPaths.add(containerToInit);
            }
            boolean ok = false;
            try {
                try {
                    IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                        public void run(IProgressMonitor monitor) throws CoreException {
                            try {
                                IClasspathContainer container;
                                Set entrySet = allContainerPaths.entrySet();
                                int length = entrySet.size();
                                if (monitor != null) {
                                    monitor.beginTask("", length);
                                }
                                Map.Entry[] entries = new Map.Entry[length];
                                entrySet.toArray(entries);
                                int i = 0;
                                while (i < length) {
                                    Map.Entry entry = entries[i];
                                    IJavaProject javaProject = (IJavaProject)entry.getKey();
                                    HashSet pathSet = (HashSet)entry.getValue();
                                    if (pathSet != null) {
                                        int length2 = pathSet.size();
                                        IPath[] paths = new IPath[length2];
                                        pathSet.toArray(paths);
                                        int j = 0;
                                        while (j < length2) {
                                            IPath path = paths[j];
                                            JavaModelManager.this.initializeContainer(javaProject, path);
                                            container = JavaModelManager.this.containerBeingInitializedGet(javaProject, path);
                                            if (container != null) {
                                                JavaModelManager.this.containerPut(javaProject, path, container);
                                            }
                                            ++j;
                                        }
                                        if (monitor != null) {
                                            monitor.worked(1);
                                        }
                                    }
                                    ++i;
                                }
                                Map perProjectContainers = (Map)JavaModelManager.this.containersBeingInitialized.get();
                                if (perProjectContainers != null) {
                                    Iterator entriesIterator = perProjectContainers.entrySet().iterator();
                                    while (entriesIterator.hasNext()) {
                                        Map.Entry entry = entriesIterator.next();
                                        IJavaProject project = (IJavaProject)entry.getKey();
                                        HashMap perPathContainers = (HashMap)entry.getValue();
                                        Iterator containersIterator = perPathContainers.entrySet().iterator();
                                        while (containersIterator.hasNext()) {
                                            Map.Entry containerEntry = containersIterator.next();
                                            IPath containerPath = (IPath)containerEntry.getKey();
                                            container = (IClasspathContainer)containerEntry.getValue();
                                            SetContainerOperation operation = new SetContainerOperation(containerPath, new IJavaProject[]{project}, new IClasspathContainer[]{container});
                                            operation.runOperation(monitor);
                                        }
                                    }
                                    JavaModelManager.this.containersBeingInitialized.set(null);
                                }
                            }
                            finally {
                                if (monitor != null) {
                                    monitor.done();
                                }
                            }
                        }
                    };
                    BatchInitializationMonitor monitor = this.batchContainerInitializationsProgress;
                    IWorkspace workspace = ResourcesPlugin.getWorkspace();
                    if (workspace.isTreeLocked()) {
                        runnable.run((IProgressMonitor)monitor);
                    } else {
                        workspace.run(runnable, null, 1, (IProgressMonitor)monitor);
                    }
                    ok = true;
                }
                catch (CoreException e) {
                    Util.log(e, "Exception while initializing all containers");
                    if (!ok) {
                        this.containerInitializationInProgress.set(null);
                    }
                    break block18;
                }
            }
            catch (Throwable throwable) {
                if (!ok) {
                    this.containerInitializationInProgress.set(null);
                }
                throw throwable;
            }
            if (!ok) {
                this.containerInitializationInProgress.set(null);
            }
        }
        return this.containerGet(javaProjectToInit, containerToInit);
    }

    private void verbose_batching_containers_initialization(IJavaProject javaProjectToInit, IPath containerToInit) {
        Util.verbose("CPContainer INIT - batching containers initialization\n\tproject to init: " + (javaProjectToInit == null ? "null" : javaProjectToInit.getElementName()) + '\n' + "\tcontainer path to init: " + containerToInit);
    }

    /*
     * Unable to fully structure code
     */
    IClasspathContainer initializeContainer(IJavaProject project, IPath containerPath) throws JavaModelException {
        block27: {
            block26: {
                monitor = this.batchContainerInitializationsProgress;
                if (monitor != null && monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                container = null;
                initializer = JavaCore.getClasspathContainerInitializer(containerPath.segment(0));
                if (initializer == null) break block26;
                if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                    this.verbose_triggering_container_initialization(project, containerPath, initializer);
                }
                if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                    this.verbose_triggering_container_initialization_invocation_trace();
                }
                stats = null;
                if (JavaModelManager.PERF_CONTAINER_INITIALIZER) {
                    stats = PerformanceStats.getStats((String)"org.eclipse.jdt.core/perf/containerinitializer", (Object)this);
                    stats.startRun(containerPath + " of " + project.getPath());
                }
                this.containerPut(project, containerPath, JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS);
                ok = false;
                try {
                    if (monitor != null) {
                        monitor.subTask(Messages.bind(Messages.javamodel_configuring, initializer.getDescription(containerPath, project)));
                    }
                    initializer.initialize(containerPath, project);
                    if (monitor != null) {
                        monitor.subTask("");
                    }
                    if ((container = this.containerBeingInitializedGet(project, containerPath)) != null || this.containerGet(project, containerPath) != JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) ** GOTO lbl33
                    container = initializer.getFailureContainer(containerPath, project);
                    if (container == null) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            this.verbose_container_null_failure_container(project, containerPath, initializer);
                        }
                        return null;
                    }
                    try {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            this.verbose_container_using_failure_container(project, containerPath, initializer);
                        }
                        this.containerPut(project, containerPath, container);
lbl33:
                        // 2 sources

                        ok = true;
                    }
                    catch (CoreException e) {
                        if (e instanceof JavaModelException) {
                            throw (JavaModelException)e;
                        }
                        throw new JavaModelException(e);
                    }
                    catch (RuntimeException e) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    }
                    catch (Error e) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    }
                }
                finally {
                    if (JavaModelManager.PERF_CONTAINER_INITIALIZER) {
                        stats.endRun();
                    }
                    if (!ok) {
                        this.containerRemoveInitializationInProgress(project, containerPath);
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            this.verbose_container_initialization_failed(project, containerPath, container, initializer);
                        }
                    }
                }
                if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                    this.verbose_container_value_after_initialization(project, containerPath, container);
                }
                break block27;
            }
            container = new ClasspathContainerInitializer(){

                public void initialize(IPath path, IJavaProject javaProject) throws CoreException {
                }
            }.getFailureContainer(containerPath, project);
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                this.verbose_no_container_initializer_found(project, containerPath);
            }
        }
        return container;
    }

    private void verbose_no_container_initializer_found(IJavaProject project, IPath containerPath) {
        Util.verbose("CPContainer INIT - no initializer found\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath);
    }

    private void verbose_container_value_after_initialization(IJavaProject project, IPath containerPath, IClasspathContainer container) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("CPContainer INIT - after resolution\n");
        buffer.append("\tproject: " + project.getElementName() + '\n');
        buffer.append("\tcontainer path: " + containerPath + '\n');
        if (container != null) {
            buffer.append("\tcontainer: " + container.getDescription() + " {\n");
            IClasspathEntry[] entries = container.getClasspathEntries();
            if (entries != null) {
                int i = 0;
                while (i < entries.length) {
                    buffer.append("\t\t" + entries[i] + '\n');
                    ++i;
                }
            }
            buffer.append("\t}");
        } else {
            buffer.append("\tcontainer: {unbound}");
        }
        Util.verbose(buffer.toString());
    }

    private void verbose_container_initialization_failed(IJavaProject project, IPath containerPath, IClasspathContainer container, ClasspathContainerInitializer initializer) {
        if (container == CONTAINER_INITIALIZATION_IN_PROGRESS) {
            Util.verbose("CPContainer INIT - FAILED (initializer did not initialize container)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tinitializer: " + initializer);
        } else {
            Util.verbose("CPContainer INIT - FAILED (see exception above)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tinitializer: " + initializer);
        }
    }

    private void verbose_container_null_failure_container(IJavaProject project, IPath containerPath, ClasspathContainerInitializer initializer) {
        Util.verbose("CPContainer INIT - FAILED (and failure container is null)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tinitializer: " + initializer);
    }

    private void verbose_container_using_failure_container(IJavaProject project, IPath containerPath, ClasspathContainerInitializer initializer) {
        Util.verbose("CPContainer INIT - FAILED (using failure container)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tinitializer: " + initializer);
    }

    private void verbose_triggering_container_initialization(IJavaProject project, IPath containerPath, ClasspathContainerInitializer initializer) {
        Util.verbose("CPContainer INIT - triggering initialization\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath + '\n' + "\tinitializer: " + initializer);
    }

    private void verbose_triggering_container_initialization_invocation_trace() {
        Util.verbose("CPContainer INIT - triggering initialization\n\tinvocation trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public void initializePreferences() {
        this.preferencesLookup[0] = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.core");
        this.preferencesLookup[1] = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.core");
        this.instanceNodeListener = new IEclipsePreferences.INodeChangeListener(){

            public void added(IEclipsePreferences.NodeChangeEvent event) {
            }

            public void removed(IEclipsePreferences.NodeChangeEvent event) {
                if (event.getChild() == JavaModelManager.this.preferencesLookup[0]) {
                    JavaModelManager.this.preferencesLookup[0] = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.core");
                    JavaModelManager.this.preferencesLookup[0].addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)new EclipsePreferencesListener());
                }
            }
        };
        ((IEclipsePreferences)this.preferencesLookup[0].parent()).addNodeChangeListener(this.instanceNodeListener);
        this.instancePreferencesListener = new EclipsePreferencesListener();
        this.preferencesLookup[0].addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this.instancePreferencesListener);
        this.defaultNodeListener = new IEclipsePreferences.INodeChangeListener(){

            public void added(IEclipsePreferences.NodeChangeEvent event) {
            }

            public void removed(IEclipsePreferences.NodeChangeEvent event) {
                if (event.getChild() == JavaModelManager.this.preferencesLookup[1]) {
                    JavaModelManager.this.preferencesLookup[1] = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.core");
                }
            }
        };
        ((IEclipsePreferences)this.preferencesLookup[1].parent()).addNodeChangeListener(this.defaultNodeListener);
    }

    public synchronized char[] intern(char[] array) {
        return this.charArraySymbols.add(array);
    }

    public synchronized String intern(String s) {
        return (String)this.stringSymbols.add(new String(s));
    }

    private HashSet getClasspathBeingResolved() {
        HashSet result = (HashSet)this.classpathsBeingResolved.get();
        if (result == null) {
            result = new HashSet();
            this.classpathsBeingResolved.set(result);
        }
        return result;
    }

    public boolean isClasspathBeingResolved(IJavaProject project) {
        return this.getClasspathBeingResolved().contains(project);
    }

    private boolean isDeprecatedOption(String optionName) {
        return "org.eclipse.jdt.core.compiler.problem.invalidImport".equals(optionName) || "org.eclipse.jdt.core.compiler.problem.unreachableCode".equals(optionName);
    }

    public boolean isNonChainingJar(IPath path) {
        return this.nonChainingJars != null && this.nonChainingJars.contains(path);
    }

    public boolean isInvalidArchive(IPath path) {
        return this.invalidArchives != null && this.invalidArchives.contains(path);
    }

    public void setClasspathBeingResolved(IJavaProject project, boolean classpathIsResolved) {
        if (classpathIsResolved) {
            this.getClasspathBeingResolved().add(project);
        } else {
            this.getClasspathBeingResolved().remove(project);
        }
    }

    private Set loadClasspathListCache(String cacheName) {
        HashSet<IPath> pathCache;
        block16: {
            pathCache = new HashSet<IPath>();
            File cacheFile = this.getClasspathListFile(cacheName);
            FilterInputStream in = null;
            try {
                try {
                    in = new DataInputStream(new BufferedInputStream(new FileInputStream(cacheFile)));
                    int size = ((DataInputStream)in).readInt();
                    while (size-- > 0) {
                        String path = ((DataInputStream)in).readUTF();
                        pathCache.add(Path.fromPortableString((String)path));
                    }
                }
                catch (IOException e) {
                    if (cacheFile.exists()) {
                        Util.log(e, "Unable to read non-chaining jar cache file");
                    }
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block16;
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
        return Collections.synchronizedSet(pathCache);
    }

    private File getClasspathListFile(String fileName) {
        return JavaCore.getPlugin().getStateLocation().append(fileName).toFile();
    }

    private Set getNonChainingJarsCache() throws CoreException {
        if (this.nonChainingJars != null && this.nonChainingJars.size() > 0) {
            return this.nonChainingJars;
        }
        HashSet<IPath> result = new HashSet<IPath>();
        IJavaProject[] projects = this.getJavaModel().getJavaProjects();
        int i = 0;
        int length = projects.length;
        while (i < length) {
            IJavaProject javaProject = projects[i];
            IClasspathEntry[] classpath = ((JavaProject)javaProject).getResolvedClasspath();
            int j = 0;
            int length2 = classpath.length;
            while (j < length2) {
                IPath path;
                IClasspathEntry entry = classpath[j];
                if (entry.getEntryKind() == 1 && !result.contains(path = entry.getPath()) && ClasspathEntry.resolvedChainedLibraries(path).length == 0) {
                    result.add(path);
                }
                ++j;
            }
            ++i;
        }
        this.nonChainingJars = Collections.synchronizedSet(result);
        return this.nonChainingJars;
    }

    private Set getClasspathListCache(String cacheName) throws CoreException {
        if (cacheName == NON_CHAINING_JARS_CACHE) {
            return this.getNonChainingJarsCache();
        }
        if (cacheName == INVALID_ARCHIVES_CACHE) {
            return this.invalidArchives;
        }
        return null;
    }

    /*
     * Exception decompiling
     */
    public void loadVariablesAndContainers() throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [3[TRYBLOCK], 22[CATCHBLOCK], 21[CATCHBLOCK]], but top level block is 5[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
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

    private void loadVariablesAndContainers(IEclipsePreferences preferences) {
        try {
            String[] propertyNames = preferences.keys();
            int variablePrefixLength = CP_VARIABLE_PREFERENCES_PREFIX.length();
            int i = 0;
            while (i < propertyNames.length) {
                String propertyValue;
                String propertyName = propertyNames[i];
                if (propertyName.startsWith(CP_VARIABLE_PREFERENCES_PREFIX)) {
                    String varName = propertyName.substring(variablePrefixLength);
                    String propertyValue2 = preferences.get(propertyName, null);
                    if (propertyValue2 != null) {
                        String pathString = propertyValue2.trim();
                        if (CP_ENTRY_IGNORE.equals(pathString)) {
                            preferences.remove(propertyName);
                        } else {
                            Path varPath = new Path(pathString);
                            this.variables.put(varName, varPath);
                            this.previousSessionVariables.put(varName, varPath);
                        }
                    }
                } else if (propertyName.startsWith(CP_CONTAINER_PREFERENCES_PREFIX) && (propertyValue = preferences.get(propertyName, null)) != null) {
                    preferences.remove(propertyName);
                    JavaModelManager.recreatePersistedContainer(propertyName, propertyValue, true);
                }
                ++i;
            }
        }
        catch (BackingStoreException backingStoreException) {}
    }

    protected synchronized Object peekAtInfo(IJavaElement element) {
        Object result;
        HashMap tempCache = (HashMap)this.temporaryCache.get();
        if (tempCache != null && (result = tempCache.get(element)) != null) {
            return result;
        }
        return this.cache.peekAtInfo(element);
    }

    public void prepareToSave(ISaveContext context) {
    }

    protected synchronized void putInfos(IJavaElement openedElement, Map newElements) {
        Map.Entry entry;
        Object existingInfo = this.cache.peekAtInfo(openedElement);
        if (openedElement instanceof IParent) {
            this.closeChildren(existingInfo);
        }
        Iterator it = newElements.entrySet().iterator();
        while (it.hasNext()) {
            entry = it.next();
            IJavaElement element = (IJavaElement)entry.getKey();
            if (!(element instanceof JarPackageFragmentRoot)) continue;
            Object info = entry.getValue();
            it.remove();
            this.cache.putInfo(element, info);
        }
        Iterator iterator = newElements.entrySet().iterator();
        while (iterator.hasNext()) {
            entry = iterator.next();
            this.cache.putInfo((IJavaElement)entry.getKey(), entry.getValue());
        }
    }

    private void closeChildren(Object info) {
        if (info instanceof JavaElementInfo) {
            IJavaElement[] children = ((JavaElementInfo)info).getChildren();
            int i = 0;
            int size = children.length;
            while (i < size) {
                JavaElement child = (JavaElement)children[i];
                try {
                    child.close();
                }
                catch (JavaModelException javaModelException) {}
                ++i;
            }
        }
    }

    protected synchronized void putJarTypeInfo(IJavaElement type, Object info) {
        this.cache.jarTypeCache.put(type, info);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Object readState(IProject project) throws CoreException {
        File file = this.getSerializationFile(project);
        if (file != null && file.exists()) {
            try {
                DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(file)));
                try {
                    String pluginID = in.readUTF();
                    if (!pluginID.equals("org.eclipse.jdt.core")) {
                        throw new IOException(Messages.build_wrongFileFormat);
                    }
                    String kind = in.readUTF();
                    if (!kind.equals("STATE")) {
                        throw new IOException(Messages.build_wrongFileFormat);
                    }
                    if (in.readBoolean()) {
                        State state = JavaBuilder.readState(project, in);
                        return state;
                    }
                    if (!JavaBuilder.DEBUG) return null;
                    System.out.println("Saved state thinks last build failed for " + project.getName());
                    return null;
                }
                finally {
                    in.close();
                }
            }
            catch (Exception e) {
                e.printStackTrace();
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", 2, "Error reading last build state for project " + project.getName(), (Throwable)e));
            }
        }
        if (!JavaBuilder.DEBUG) return null;
        if (file == null) {
            System.out.println("Project does not exist: " + project);
            return null;
        }
        System.out.println("Build state file " + file.getPath() + " does not exist");
        return null;
    }

    public static void recreatePersistedContainer(String propertyName, String containerString, boolean addToContainerValues) {
        int containerPrefixLength = CP_CONTAINER_PREFERENCES_PREFIX.length();
        int index = propertyName.indexOf(124, containerPrefixLength);
        if (containerString != null) {
            containerString = containerString.trim();
        }
        if (index > 0) {
            String projectName = propertyName.substring(containerPrefixLength, index).trim();
            IJavaProject project = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject(projectName);
            Path containerPath = new Path(propertyName.substring(index + 1).trim());
            JavaModelManager.recreatePersistedContainer(project, (IPath)containerPath, containerString, addToContainerValues);
        }
    }

    private static void recreatePersistedContainer(final IJavaProject project, final IPath containerPath, String containerString, boolean addToContainerValues) {
        if (!project.getProject().isAccessible()) {
            return;
        }
        if (containerString == null) {
            JavaModelManager.getJavaModelManager().containerPut(project, containerPath, null);
        } else {
            IClasspathEntry[] entries;
            try {
                entries = ((JavaProject)project).decodeClasspath(containerString, null)[0];
            }
            catch (IOException e) {
                Util.log(e, "Could not recreate persisted container: \n" + containerString);
                entries = JavaProject.INVALID_CLASSPATH;
            }
            if (entries != JavaProject.INVALID_CLASSPATH) {
                HashMap<IPath, 15> projectContainers;
                final IClasspathEntry[] containerEntries = entries;
                IClasspathContainer container = new IClasspathContainer(){

                    public IClasspathEntry[] getClasspathEntries() {
                        return containerEntries;
                    }

                    public String getDescription() {
                        return "Persisted container [" + containerPath + " for project [" + project.getElementName() + "]";
                    }

                    public int getKind() {
                        return 0;
                    }

                    public IPath getPath() {
                        return containerPath;
                    }

                    public String toString() {
                        return this.getDescription();
                    }
                };
                if (addToContainerValues) {
                    JavaModelManager.getJavaModelManager().containerPut(project, containerPath, container);
                }
                if ((projectContainers = (HashMap<IPath, 15>)JavaModelManager.getJavaModelManager().previousSessionContainers.get(project)) == null) {
                    projectContainers = new HashMap<IPath, 15>(1);
                    JavaModelManager.getJavaModelManager().previousSessionContainers.put(project, projectContainers);
                }
                projectContainers.put(containerPath, container);
            }
        }
    }

    public void rememberScope(AbstractSearchScope scope) {
        this.searchScopes.put(scope, null);
    }

    public synchronized Object removeInfoAndChildren(JavaElement element) throws JavaModelException {
        Object info = this.cache.peekAtInfo(element);
        if (info != null) {
            boolean wasVerbose = false;
            try {
                if (JavaModelCache.VERBOSE) {
                    String elementType;
                    switch (element.getElementType()) {
                        case 2: {
                            elementType = "project";
                            break;
                        }
                        case 3: {
                            elementType = "root";
                            break;
                        }
                        case 4: {
                            elementType = "package";
                            break;
                        }
                        case 6: {
                            elementType = "class file";
                            break;
                        }
                        case 5: {
                            elementType = "compilation unit";
                            break;
                        }
                        default: {
                            elementType = "element";
                        }
                    }
                    System.out.println(Thread.currentThread() + " CLOSING " + elementType + " " + element.toStringWithAncestors());
                    wasVerbose = true;
                    JavaModelCache.VERBOSE = false;
                }
                element.closing(info);
                if (element instanceof IParent) {
                    this.closeChildren(info);
                }
                this.cache.removeInfo(element);
                if (wasVerbose) {
                    System.out.println(this.cache.toStringFillingRation("-> "));
                }
            }
            finally {
                JavaModelCache.VERBOSE = wasVerbose;
            }
            return info;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removePerProjectInfo(JavaProject javaProject, boolean removeExtJarInfo) {
        Map map = this.perProjectInfos;
        synchronized (map) {
            IProject project = javaProject.getProject();
            PerProjectInfo info = (PerProjectInfo)this.perProjectInfos.get(project);
            if (info != null) {
                this.perProjectInfos.remove(project);
                if (removeExtJarInfo) {
                    info.forgetExternalTimestampsAndIndexes();
                }
            }
        }
        this.resetClasspathListCache();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void resetProjectOptions(JavaProject javaProject) {
        Map map = this.perProjectInfos;
        synchronized (map) {
            IProject project = javaProject.getProject();
            PerProjectInfo info = (PerProjectInfo)this.perProjectInfos.get(project);
            if (info != null) {
                info.options = null;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void resetProjectPreferences(JavaProject javaProject) {
        Map map = this.perProjectInfos;
        synchronized (map) {
            IProject project = javaProject.getProject();
            PerProjectInfo info = (PerProjectInfo)this.perProjectInfos.get(project);
            if (info != null) {
                info.preferences = null;
            }
        }
    }

    public static final void doNotUse() {
        JavaModelManager.MANAGER.deltaState.doNotUse();
        MANAGER = new JavaModelManager();
    }

    protected synchronized void resetJarTypeCache() {
        this.cache.resetJarTypeCache();
    }

    public void resetClasspathListCache() {
        if (this.nonChainingJars != null) {
            this.nonChainingJars.clear();
        }
        if (this.invalidArchives != null) {
            this.invalidArchives.clear();
        }
    }

    public void resetTemporaryCache() {
        this.temporaryCache.set(null);
    }

    public void rollback(ISaveContext context) {
    }

    private void saveState(PerProjectInfo info, ISaveContext context) throws CoreException {
        if (context.getKind() == 2) {
            return;
        }
        if (info.triedRead) {
            this.saveBuiltState(info);
        }
    }

    private void saveBuiltState(PerProjectInfo info) throws CoreException {
        File file;
        if (JavaBuilder.DEBUG) {
            System.out.println(Messages.bind(Messages.build_saveStateProgress, info.project.getName()));
        }
        if ((file = this.getSerializationFile(info.project)) == null) {
            return;
        }
        long t = System.currentTimeMillis();
        try {
            DataOutputStream out = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
            try {
                out.writeUTF("org.eclipse.jdt.core");
                out.writeUTF("STATE");
                if (info.savedState == null) {
                    out.writeBoolean(false);
                } else {
                    out.writeBoolean(true);
                    JavaBuilder.writeState(info.savedState, out);
                }
            }
            finally {
                out.close();
            }
        }
        catch (RuntimeException e) {
            try {
                file.delete();
            }
            catch (SecurityException securityException) {}
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", 2, Messages.bind(Messages.build_cannotSaveState, info.project.getName()), (Throwable)e));
        }
        catch (IOException e) {
            try {
                file.delete();
            }
            catch (SecurityException securityException) {}
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", 2, Messages.bind(Messages.build_cannotSaveState, info.project.getName()), (Throwable)e));
        }
        if (JavaBuilder.DEBUG) {
            t = System.currentTimeMillis() - t;
            System.out.println(Messages.bind(Messages.build_saveStateComplete, String.valueOf(t)));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void saveClasspathListCache(String cacheName) throws CoreException {
        File file = this.getClasspathListFile(cacheName);
        FilterOutputStream out = null;
        try {
            try {
                Set pathCache;
                out = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                Set set = pathCache = this.getClasspathListCache(cacheName);
                synchronized (set) {
                    ((DataOutputStream)out).writeInt(pathCache.size());
                    Iterator entries = pathCache.iterator();
                    while (entries.hasNext()) {
                        IPath path = (IPath)entries.next();
                        ((DataOutputStream)out).writeUTF(path.toPortableString());
                    }
                }
            }
            catch (IOException e) {
                Status status = new Status(4, "org.eclipse.jdt.core", 4, "Problems while saving non-chaining jar cache", (Throwable)e);
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

    private void saveVariablesAndContainers(ISaveContext context) throws CoreException {
        File file = this.getVariableAndContainersFile();
        FilterOutputStream out = null;
        try {
            try {
                out = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                ((DataOutputStream)out).writeInt(2);
                new VariablesAndContainersSaveHelper((DataOutputStream)out).save(context);
            }
            catch (IOException e) {
                Status status = new Status(4, "org.eclipse.jdt.core", 4, "Problems while saving variables and containers", (Throwable)e);
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

    private void traceVariableAndContainers(String action, long start) {
        Long delta = new Long(System.currentTimeMillis() - start);
        Long length = new Long(this.getVariableAndContainersFile().length());
        String pattern = "{0} {1} bytes in variablesAndContainers.dat in {2}ms";
        String message = MessageFormat.format(pattern, action, length, delta);
        System.out.println(message);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void saving(ISaveContext context) throws CoreException {
        long start = -1L;
        if (VERBOSE) {
            start = System.currentTimeMillis();
        }
        this.saveVariablesAndContainers(context);
        if (VERBOSE) {
            this.traceVariableAndContainers("Saved", start);
        }
        switch (context.getKind()) {
            case 1: {
                this.saveClasspathListCache(NON_CHAINING_JARS_CACHE);
                this.saveClasspathListCache(INVALID_ARCHIVES_CACHE);
                context.needDelta();
                IndexManager manager = this.indexManager;
                if (manager != null && this.workspaceScope != null) {
                    manager.cleanUpIndexes();
                }
            }
            case 2: {
                this.externalFoldersManager.cleanUp(null);
            }
        }
        IProject savedProject = context.getProject();
        if (savedProject != null) {
            if (!JavaProject.hasJavaNature(savedProject)) {
                return;
            }
            PerProjectInfo info = this.getPerProjectInfo(savedProject, true);
            this.saveState(info, context);
            return;
        }
        ArrayList<IStatus> vStats = null;
        ArrayList values = null;
        Map map = this.perProjectInfos;
        synchronized (map) {
            values = new ArrayList(this.perProjectInfos.values());
        }
        Iterator iterator = values.iterator();
        while (iterator.hasNext()) {
            try {
                PerProjectInfo info = (PerProjectInfo)iterator.next();
                this.saveState(info, context);
            }
            catch (CoreException e) {
                if (vStats == null) {
                    vStats = new ArrayList<IStatus>();
                }
                vStats.add(e.getStatus());
            }
        }
        if (vStats != null) {
            IStatus[] stats = new IStatus[vStats.size()];
            vStats.toArray(stats);
            throw new CoreException((IStatus)new MultiStatus("org.eclipse.jdt.core", 4, stats, Messages.build_cannotSaveStates, null));
        }
        this.deltaState.saveExternalLibTimeStamps();
    }

    public void secondaryTypeAdding(String path, char[] typeName, char[] packageName) {
        IWorkspaceRoot wRoot;
        IResource resource;
        if (VERBOSE) {
            StringBuffer buffer = new StringBuffer("JavaModelManager.addSecondaryType(");
            buffer.append(path);
            buffer.append(',');
            buffer.append('[');
            buffer.append(new String(packageName));
            buffer.append('.');
            buffer.append(new String(typeName));
            buffer.append(']');
            buffer.append(')');
            Util.verbose(buffer.toString());
        }
        if ((resource = (wRoot = ResourcesPlugin.getWorkspace().getRoot()).findMember(path)) != null && Util.isJavaLikeFileName(path) && resource.getType() == 1) {
            IProject project = resource.getProject();
            try {
                ICompilationUnit unit;
                PerProjectInfo projectInfo = this.getPerProjectInfoCheckExistence(project);
                HashMap indexedSecondaryTypes = null;
                if (projectInfo.secondaryTypes == null) {
                    projectInfo.secondaryTypes = new Hashtable(3);
                    indexedSecondaryTypes = new HashMap(3);
                    projectInfo.secondaryTypes.put(INDEXED_SECONDARY_TYPES, indexedSecondaryTypes);
                } else {
                    indexedSecondaryTypes = (HashMap)projectInfo.secondaryTypes.get(INDEXED_SECONDARY_TYPES);
                    if (indexedSecondaryTypes == null) {
                        indexedSecondaryTypes = new HashMap(3);
                        projectInfo.secondaryTypes.put(INDEXED_SECONDARY_TYPES, indexedSecondaryTypes);
                    }
                }
                HashMap<String, HashMap<String, IType>> allTypes = (HashMap<String, HashMap<String, IType>>)indexedSecondaryTypes.get(resource);
                if (allTypes == null) {
                    allTypes = new HashMap<String, HashMap<String, IType>>(3);
                    indexedSecondaryTypes.put(resource, allTypes);
                }
                if ((unit = JavaModelManager.createCompilationUnitFrom((IFile)resource, null)) != null) {
                    String typeString = new String(typeName);
                    IType type = unit.getType(typeString);
                    String packageString = type.getPackageFragment().getElementName();
                    HashMap<String, IType> packageTypes = (HashMap<String, IType>)allTypes.get(packageString);
                    if (packageTypes == null) {
                        packageTypes = new HashMap<String, IType>(3);
                        allTypes.put(packageString, packageTypes);
                    }
                    packageTypes.put(typeString, type);
                }
                if (VERBOSE) {
                    Util.verbose("\t- indexing cache:");
                    Iterator entries = indexedSecondaryTypes.entrySet().iterator();
                    while (entries.hasNext()) {
                        Map.Entry entry = entries.next();
                        IFile file = (IFile)entry.getKey();
                        Util.verbose("\t\t+ " + file.getFullPath() + ':' + entry.getValue());
                    }
                }
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    /*
     * Unable to fully structure code
     */
    public Map secondaryTypes(IJavaProject project, boolean waitForIndexes, IProgressMonitor monitor) throws JavaModelException {
        block7: {
            if (JavaModelManager.VERBOSE) {
                buffer = new StringBuffer("JavaModelManager.secondaryTypes(");
                buffer.append(project.getElementName());
                buffer.append(',');
                buffer.append(waitForIndexes);
                buffer.append(')');
                Util.verbose(buffer.toString());
            }
            projectInfo = this.getPerProjectInfoCheckExistence(project.getProject());
            v0 = indexingSecondaryCache = projectInfo.secondaryTypes == null ? null : (Map)projectInfo.secondaryTypes.get("#@*_indexing secondary cache_*@#");
            if (projectInfo.secondaryTypes != null && indexingSecondaryCache == null) {
                return projectInfo.secondaryTypes;
            }
            if (projectInfo.secondaryTypes == null) {
                return this.secondaryTypesSearching(project, waitForIndexes, monitor, projectInfo);
            }
            v1 = indexing = this.indexManager.awaitingJobsCount() > 0;
            if (!indexing) break block7;
            if (waitForIndexes) ** GOTO lbl29
            return projectInfo.secondaryTypes;
lbl-1000:
            // 1 sources

            {
                if (monitor != null && monitor.isCanceled()) {
                    return projectInfo.secondaryTypes;
                }
                try {
                    Thread.sleep(10L);
                    continue;
                }
                catch (InterruptedException v2) {
                    return projectInfo.secondaryTypes;
                }
lbl29:
                // 2 sources

                ** while (this.indexManager.awaitingJobsCount() > 0)
            }
        }
        return this.secondaryTypesMerging(projectInfo.secondaryTypes);
    }

    private Hashtable secondaryTypesMerging(Hashtable secondaryTypes) {
        Map.Entry entry;
        HashMap indexedSecondaryTypes;
        if (VERBOSE) {
            Util.verbose("JavaModelManager.getSecondaryTypesMerged()");
            Util.verbose("\t- current cache to merge:");
            Iterator entries = secondaryTypes.entrySet().iterator();
            while (entries.hasNext()) {
                Map.Entry entry2 = entries.next();
                String packName = (String)entry2.getKey();
                Util.verbose("\t\t+ " + packName + ':' + entry2.getValue());
            }
        }
        if ((indexedSecondaryTypes = (HashMap)secondaryTypes.remove(INDEXED_SECONDARY_TYPES)) == null) {
            return secondaryTypes;
        }
        Iterator entries = indexedSecondaryTypes.entrySet().iterator();
        while (entries.hasNext()) {
            entry = entries.next();
            IFile file = (IFile)entry.getKey();
            this.secondaryTypesRemoving(secondaryTypes, file);
            HashMap fileSecondaryTypes = (HashMap)entry.getValue();
            Iterator entries2 = fileSecondaryTypes.entrySet().iterator();
            while (entries2.hasNext()) {
                Map.Entry entry2 = entries2.next();
                String packageName = (String)entry2.getKey();
                HashMap cachedTypes = (HashMap)secondaryTypes.get(packageName);
                if (cachedTypes == null) {
                    secondaryTypes.put(packageName, entry2.getValue());
                    continue;
                }
                HashMap types = (HashMap)entry2.getValue();
                Iterator entries3 = types.entrySet().iterator();
                while (entries3.hasNext()) {
                    Map.Entry entry3 = entries3.next();
                    String typeName = (String)entry3.getKey();
                    cachedTypes.put(typeName, entry3.getValue());
                }
            }
        }
        if (VERBOSE) {
            Util.verbose("\t- secondary types cache merged:");
            entries = secondaryTypes.entrySet().iterator();
            while (entries.hasNext()) {
                entry = entries.next();
                String packName = (String)entry.getKey();
                Util.verbose("\t\t+ " + packName + ':' + entry.getValue());
            }
        }
        return secondaryTypes;
    }

    private Map secondaryTypesSearching(IJavaProject project, boolean waitForIndexes, IProgressMonitor monitor, PerProjectInfo projectInfo) throws JavaModelException {
        if (VERBOSE || BasicSearchEngine.VERBOSE) {
            StringBuffer buffer = new StringBuffer("JavaModelManager.secondaryTypesSearch(");
            buffer.append(project.getElementName());
            buffer.append(',');
            buffer.append(waitForIndexes);
            buffer.append(')');
            Util.verbose(buffer.toString());
        }
        final Hashtable secondaryTypes = new Hashtable(3);
        IRestrictedAccessTypeRequestor nameRequestor = new IRestrictedAccessTypeRequestor(){

            public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
                String key = packageName == null ? "" : new String(packageName);
                HashMap<String, String> types = (HashMap<String, String>)secondaryTypes.get(key);
                if (types == null) {
                    types = new HashMap<String, String>(3);
                }
                types.put(new String(simpleTypeName), path);
                secondaryTypes.put(key, types);
            }
        };
        IPackageFragmentRoot[] allRoots = project.getAllPackageFragmentRoots();
        int length = allRoots.length;
        int size = 0;
        IPackageFragmentRoot[] allSourceFolders = new IPackageFragmentRoot[length];
        int i = 0;
        while (i < length) {
            if (allRoots[i].getKind() == 1) {
                allSourceFolders[size++] = allRoots[i];
            }
            ++i;
        }
        if (size < length) {
            IPackageFragmentRoot[] iPackageFragmentRootArray = allSourceFolders;
            allSourceFolders = new IPackageFragmentRoot[size];
            System.arraycopy(iPackageFragmentRootArray, 0, allSourceFolders, 0, size);
        }
        new BasicSearchEngine().searchAllSecondaryTypeNames(allSourceFolders, nameRequestor, waitForIndexes, monitor);
        Iterator packages = secondaryTypes.values().iterator();
        while (packages.hasNext()) {
            HashMap types = (HashMap)packages.next();
            Iterator names = types.entrySet().iterator();
            while (names.hasNext()) {
                Map.Entry entry = names.next();
                String typeName = (String)entry.getKey();
                String path = (String)entry.getValue();
                if (Util.isJavaLikeFileName(path)) {
                    IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)new Path(path));
                    ICompilationUnit unit = JavaModelManager.createCompilationUnitFrom(file, null);
                    IType type = unit.getType(typeName);
                    types.put(typeName, type);
                    continue;
                }
                names.remove();
            }
        }
        if (projectInfo.secondaryTypes == null || projectInfo.secondaryTypes.get(INDEXED_SECONDARY_TYPES) != null) {
            projectInfo.secondaryTypes = secondaryTypes;
            if (VERBOSE || BasicSearchEngine.VERBOSE) {
                System.out.print(Thread.currentThread() + "\t-> secondary paths stored in cache: ");
                System.out.println();
                Iterator entries = secondaryTypes.entrySet().iterator();
                while (entries.hasNext()) {
                    Map.Entry entry = entries.next();
                    String qualifiedName = (String)entry.getKey();
                    Util.verbose("\t\t- " + qualifiedName + '-' + entry.getValue());
                }
            }
        }
        return projectInfo.secondaryTypes;
    }

    public void secondaryTypesRemoving(IFile file, boolean cleanIndexCache) {
        PerProjectInfo projectInfo;
        if (VERBOSE) {
            StringBuffer buffer = new StringBuffer("JavaModelManager.removeFromSecondaryTypesCache(");
            buffer.append(file.getName());
            buffer.append(')');
            Util.verbose(buffer.toString());
        }
        if (file != null && (projectInfo = this.getPerProjectInfo(file.getProject(), false)) != null && projectInfo.secondaryTypes != null) {
            if (VERBOSE) {
                Util.verbose("-> remove file from cache of project: " + file.getProject().getName());
            }
            this.secondaryTypesRemoving(projectInfo.secondaryTypes, file);
            HashMap indexingCache = (HashMap)projectInfo.secondaryTypes.get(INDEXED_SECONDARY_TYPES);
            if (!cleanIndexCache) {
                if (indexingCache == null) {
                    projectInfo.secondaryTypes.put(INDEXED_SECONDARY_TYPES, new HashMap());
                }
                return;
            }
            if (indexingCache != null) {
                Set keys = indexingCache.keySet();
                int filesSize = keys.size();
                int filesCount = 0;
                IFile[] removed = null;
                Iterator cachedFiles = keys.iterator();
                while (cachedFiles.hasNext()) {
                    IFile cachedFile = (IFile)cachedFiles.next();
                    if (!file.equals((Object)cachedFile)) continue;
                    if (removed == null) {
                        removed = new IFile[filesSize];
                    }
                    --filesSize;
                    removed[filesCount++] = cachedFile;
                }
                if (removed != null) {
                    int i = 0;
                    while (i < filesCount) {
                        indexingCache.remove(removed[i]);
                        ++i;
                    }
                }
            }
        }
    }

    private void secondaryTypesRemoving(Hashtable secondaryTypesMap, IFile file) {
        if (VERBOSE) {
            StringBuffer buffer = new StringBuffer("JavaModelManager.removeSecondaryTypesFromMap(");
            Iterator entries = secondaryTypesMap.entrySet().iterator();
            while (entries.hasNext()) {
                Map.Entry entry = entries.next();
                String qualifiedName = (String)entry.getKey();
                buffer.append(String.valueOf(qualifiedName) + ':' + entry.getValue());
            }
            buffer.append(',');
            buffer.append(file.getFullPath());
            buffer.append(')');
            Util.verbose(buffer.toString());
        }
        Set packageEntries = secondaryTypesMap.entrySet();
        int packagesSize = packageEntries.size();
        int removedPackagesCount = 0;
        String[] removedPackages = null;
        Iterator packages = packageEntries.iterator();
        while (packages.hasNext()) {
            Map.Entry entry = packages.next();
            String packName = (String)entry.getKey();
            if (packName == INDEXED_SECONDARY_TYPES) continue;
            HashMap types = (HashMap)entry.getValue();
            Set nameEntries = types.entrySet();
            int namesSize = nameEntries.size();
            int removedNamesCount = 0;
            String[] removedNames = null;
            Iterator names = nameEntries.iterator();
            while (names.hasNext()) {
                Map.Entry entry2 = names.next();
                String typeName = (String)entry2.getKey();
                JavaElement type = (JavaElement)entry2.getValue();
                if (!file.equals((Object)type.resource())) continue;
                if (removedNames == null) {
                    removedNames = new String[namesSize];
                }
                --namesSize;
                removedNames[removedNamesCount++] = typeName;
            }
            if (removedNames != null) {
                int i = 0;
                while (i < removedNamesCount) {
                    types.remove(removedNames[i]);
                    ++i;
                }
            }
            if (types.size() != 0) continue;
            if (removedPackages == null) {
                removedPackages = new String[packagesSize];
            }
            --packagesSize;
            removedPackages[removedPackagesCount++] = packName;
        }
        if (removedPackages != null) {
            int i = 0;
            while (i < removedPackagesCount) {
                secondaryTypesMap.remove(removedPackages[i]);
                ++i;
            }
        }
        if (VERBOSE) {
            Util.verbose("\t- new secondary types map:");
            Iterator entries = secondaryTypesMap.entrySet().iterator();
            while (entries.hasNext()) {
                Map.Entry entry = entries.next();
                String qualifiedName = (String)entry.getKey();
                Util.verbose("\t\t+ " + qualifiedName + ':' + entry.getValue());
            }
        }
    }

    protected void setBuildOrder(String[] javaBuildOrder) throws JavaModelException {
        String[] newOrder;
        if (!"compute".equals(JavaCore.getOption("org.eclipse.jdt.core.computeJavaBuildOrder"))) {
            return;
        }
        if (javaBuildOrder == null || javaBuildOrder.length <= 1) {
            return;
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IWorkspaceDescription description = workspace.getDescription();
        String[] wksBuildOrder = description.getBuildOrder();
        if (wksBuildOrder == null) {
            newOrder = javaBuildOrder;
        } else {
            int javaCount = javaBuildOrder.length;
            HashMap<String, String> newSet = new HashMap<String, String>(javaCount);
            int i = 0;
            while (i < javaCount) {
                newSet.put(javaBuildOrder[i], javaBuildOrder[i]);
                ++i;
            }
            int removed = 0;
            int oldCount = wksBuildOrder.length;
            int i2 = 0;
            while (i2 < oldCount) {
                if (newSet.containsKey(wksBuildOrder[i2])) {
                    wksBuildOrder[i2] = null;
                    ++removed;
                }
                ++i2;
            }
            newOrder = new String[oldCount - removed + javaCount];
            System.arraycopy(javaBuildOrder, 0, newOrder, 0, javaCount);
            int index = javaCount;
            int i3 = 0;
            while (i3 < oldCount) {
                if (wksBuildOrder[i3] != null) {
                    newOrder[index++] = wksBuildOrder[i3];
                }
                ++i3;
            }
        }
        description.setBuildOrder(newOrder);
        try {
            workspace.setDescription(description);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    public void setLastBuiltState(IProject project, Object state) {
        if (JavaProject.hasJavaNature(project)) {
            PerProjectInfo info = this.getPerProjectInfo(project, true);
            info.triedRead = true;
            info.savedState = state;
        }
        if (state == null) {
            try {
                File file = this.getSerializationFile(project);
                if (file != null && file.exists()) {
                    file.delete();
                }
            }
            catch (SecurityException securityException) {}
        }
    }

    public boolean storePreference(String optionName, String optionValue, IEclipsePreferences eclipsePreferences) {
        int optionLevel = this.getOptionLevel(optionName);
        if (optionLevel == 0) {
            return false;
        }
        switch (optionLevel) {
            case 2: {
                if (optionValue == null) {
                    eclipsePreferences.remove(optionName);
                    break;
                }
                eclipsePreferences.put(optionName, optionValue);
                break;
            }
            case 1: {
                eclipsePreferences.remove(optionName);
                String[] compatibleOptions = (String[])this.deprecatedOptions.get(optionName);
                int co = 0;
                int length = compatibleOptions.length;
                while (co < length) {
                    if (optionValue == null) {
                        eclipsePreferences.remove(compatibleOptions[co]);
                    } else {
                        eclipsePreferences.put(compatibleOptions[co], optionValue);
                    }
                    ++co;
                }
                break;
            }
            default: {
                return false;
            }
        }
        return true;
    }

    public void setOptions(Hashtable newOptions) {
        if (DEBUG_302850) {
            System.out.println("Entering in JavaModelManager.setOptions():");
            System.out.println(new CompilerOptions(newOptions).toString());
            System.out.println("\t- Call stack:");
            StackTraceElement[] elements = new Exception().getStackTrace();
            int i = 0;
            int n = elements.length;
            while (i < n) {
                System.out.println("\t\t+ " + elements[i]);
                ++i;
            }
        }
        Hashtable<String, String> cachedValue = newOptions == null ? null : new Hashtable<String, String>(newOptions);
        IEclipsePreferences defaultPreferences = this.getDefaultPreferences();
        IEclipsePreferences instancePreferences = this.getInstancePreferences();
        if (newOptions == null) {
            try {
                instancePreferences.clear();
            }
            catch (BackingStoreException backingStoreException) {}
        } else {
            Enumeration keys = newOptions.keys();
            while (keys.hasMoreElements()) {
                String key = (String)keys.nextElement();
                int optionLevel = this.getOptionLevel(key);
                if (optionLevel == 0) continue;
                if (key.equals("org.eclipse.jdt.core.encoding")) {
                    if (cachedValue == null) continue;
                    cachedValue.put(key, JavaCore.getEncoding());
                    continue;
                }
                String value = (String)newOptions.get(key);
                String defaultValue = defaultPreferences.get(key, null);
                if (defaultValue != null && defaultValue.equals(value)) {
                    value = null;
                }
                this.storePreference(key, value, instancePreferences);
            }
            try {
                instancePreferences.flush();
            }
            catch (BackingStoreException backingStoreException) {}
        }
        Util.fixTaskTags(cachedValue);
        this.optionsCache = cachedValue;
    }

    public void startup() throws CoreException {
        try {
            this.configurePluginDebugOptions();
            this.cache = new JavaModelCache();
            JavaCore.getPlugin().getStateLocation();
            this.initializePreferences();
            this.propertyListener = new IEclipsePreferences.IPreferenceChangeListener(){

                public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
                    JavaModelManager.this.optionsCache = null;
                }
            };
            InstanceScope.INSTANCE.getNode("org.eclipse.jdt.core").addPreferenceChangeListener(this.propertyListener);
            this.resourcesPropertyListener = new IEclipsePreferences.IPreferenceChangeListener(){

                public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
                    if ("encoding".equals(event.getKey())) {
                        JavaModelManager.this.optionsCache = null;
                    }
                }
            };
            String resourcesPluginId = ResourcesPlugin.getPlugin().getBundle().getSymbolicName();
            InstanceScope.INSTANCE.getNode(resourcesPluginId).addPreferenceChangeListener(this.resourcesPropertyListener);
            Platform.getContentTypeManager().addContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
            long start = -1L;
            if (VERBOSE) {
                start = System.currentTimeMillis();
            }
            this.loadVariablesAndContainers();
            if (VERBOSE) {
                this.traceVariableAndContainers("Loaded", start);
            }
            this.deltaState.initializeRootsWithPreviousSession();
            final IWorkspace workspace = ResourcesPlugin.getWorkspace();
            workspace.addResourceChangeListener((IResourceChangeListener)this.deltaState, 63);
            this.startIndexing();
            Job processSavedState = new Job(Messages.savedState_jobName){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        workspace.run(new IWorkspaceRunnable(this, workspace){
                            final /* synthetic */ 19 this$1;
                            private final /* synthetic */ IWorkspace val$workspace;
                            {
                                this.this$1 = var1_1;
                                this.val$workspace = iWorkspace;
                            }

                            public void run(IProgressMonitor progress) throws CoreException {
                                ISavedState savedState = this.val$workspace.addSaveParticipant("org.eclipse.jdt.core", (ISaveParticipant)19.access$0(this.this$1));
                                if (savedState != null) {
                                    19.access$0(this.this$1).deltaState.getDeltaProcessor().overridenEventType = 1;
                                    savedState.processResourceChangeEvents((IResourceChangeListener)19.access$0(this.this$1).deltaState);
                                }
                            }
                        }, monitor);
                    }
                    catch (CoreException e) {
                        return e.getStatus();
                    }
                    return Status.OK_STATUS;
                }

                static /* synthetic */ JavaModelManager access$0(19 var0) {
                    return var0.JavaModelManager.this;
                }
            };
            processSavedState.setSystem(true);
            processSavedState.setPriority(20);
            processSavedState.schedule();
        }
        catch (RuntimeException e) {
            this.shutdown();
            throw e;
        }
    }

    private void startIndexing() {
        if (this.indexManager != null) {
            this.indexManager.reset();
        }
    }

    public void shutdown() {
        IEclipsePreferences preferences = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.core");
        try {
            preferences.flush();
        }
        catch (BackingStoreException e) {
            Util.log(e, "Could not save JavaCore preferences");
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        workspace.removeResourceChangeListener((IResourceChangeListener)this.deltaState);
        workspace.removeSaveParticipant("org.eclipse.jdt.core");
        Platform.getContentTypeManager().removeContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
        if (this.indexManager != null) {
            this.indexManager.shutdown();
        }
        preferences.removePreferenceChangeListener(this.propertyListener);
        ((IEclipsePreferences)this.preferencesLookup[1].parent()).removeNodeChangeListener(this.defaultNodeListener);
        this.preferencesLookup[1] = null;
        ((IEclipsePreferences)this.preferencesLookup[0].parent()).removeNodeChangeListener(this.instanceNodeListener);
        this.preferencesLookup[0].removePreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this.instancePreferencesListener);
        this.preferencesLookup[0] = null;
        String resourcesPluginId = ResourcesPlugin.getPlugin().getBundle().getSymbolicName();
        InstanceScope.INSTANCE.getNode(resourcesPluginId).removePreferenceChangeListener(this.resourcesPropertyListener);
        try {
            Job.getJobManager().join((Object)"org.eclipse.jdt.core", null);
        }
        catch (InterruptedException interruptedException) {}
    }

    public synchronized IPath variableGet(String variableName) {
        HashSet initializations = this.variableInitializationInProgress();
        if (initializations.contains(variableName)) {
            return VARIABLE_INITIALIZATION_IN_PROGRESS;
        }
        return (IPath)this.variables.get(variableName);
    }

    private synchronized IPath variableGetDefaultToPreviousSession(String variableName) {
        IPath variablePath = (IPath)this.variables.get(variableName);
        if (variablePath == null) {
            return this.getPreviousSessionVariable(variableName);
        }
        return variablePath;
    }

    private HashSet variableInitializationInProgress() {
        HashSet initializations = (HashSet)this.variableInitializationInProgress.get();
        if (initializations == null) {
            initializations = new HashSet();
            this.variableInitializationInProgress.set(initializations);
        }
        return initializations;
    }

    public synchronized String[] variableNames() {
        int length = this.variables.size();
        String[] result = new String[length];
        Iterator vars = this.variables.keySet().iterator();
        int index = 0;
        while (vars.hasNext()) {
            result[index++] = (String)vars.next();
        }
        return result;
    }

    public synchronized void variablePut(String variableName, IPath variablePath) {
        HashSet initializations = this.variableInitializationInProgress();
        if (variablePath == VARIABLE_INITIALIZATION_IN_PROGRESS) {
            initializations.add(variableName);
            return;
        }
        initializations.remove(variableName);
        if (variablePath == null) {
            this.variables.put(variableName, CP_ENTRY_IGNORE_PATH);
            this.variablesWithInitializer.remove(variableName);
            this.deprecatedVariables.remove(variableName);
        } else {
            this.variables.put(variableName, variablePath);
        }
        this.previousSessionVariables.remove(variableName);
    }

    public void variablePreferencesPut(String variableName, IPath variablePath) {
        String variableKey = CP_VARIABLE_PREFERENCES_PREFIX + variableName;
        if (variablePath == null) {
            this.getInstancePreferences().remove(variableKey);
        } else {
            this.getInstancePreferences().put(variableKey, variablePath.toString());
        }
        try {
            this.getInstancePreferences().flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }

    public boolean variablePutIfInitializingWithSameValue(String[] variableNames, IPath[] variablePaths) {
        if (variableNames.length != 1) {
            return false;
        }
        String variableName = variableNames[0];
        IPath oldPath = this.variableGetDefaultToPreviousSession(variableName);
        if (oldPath == null) {
            return false;
        }
        IPath newPath = variablePaths[0];
        if (!oldPath.equals((Object)newPath)) {
            return false;
        }
        this.variablePut(variableName, newPath);
        return true;
    }

    public void contentTypeChanged(IContentTypeManager.ContentTypeChangeEvent event) {
        IJavaProject[] projects;
        Util.resetJavaLikeExtensions();
        try {
            projects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        int i = 0;
        int length = projects.length;
        while (i < length) {
            IJavaProject project = projects[i];
            PerProjectInfo projectInfo = this.getPerProjectInfo(project.getProject(), false);
            if (projectInfo != null) {
                projectInfo.secondaryTypes = null;
            }
            ++i;
        }
    }

    public synchronized String cacheToString(String prefix) {
        return this.cache.toStringFillingRation(prefix);
    }

    public LRUCache.Stats debugNewOpenableCacheStats() {
        return new LRUCache.Stats(this.cache.openableCache);
    }

    public int getOpenableCacheSize() {
        return this.cache.openableCache.getSpaceLimit();
    }

    public static class CompilationParticipants {
        private static final int MAX_SOURCE_LEVEL = 7;
        private Object[][] registeredParticipants = null;
        private HashSet managedMarkerTypes;

        public CompilationParticipant[] getCompilationParticipants(IJavaProject project) {
            Object[][] participantsPerSource = this.getRegisteredParticipants();
            if (participantsPerSource == NO_PARTICIPANTS) {
                return null;
            }
            String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
            int sourceLevelIndex = this.indexForSourceLevel(sourceLevel);
            Object[] participants = participantsPerSource[sourceLevelIndex];
            int length = participants.length;
            CompilationParticipant[] result = new CompilationParticipant[length];
            int index = 0;
            int i = 0;
            while (i < length) {
                CompilationParticipant participant;
                if (participants[i] instanceof IConfigurationElement) {
                    IConfigurationElement configElement = (IConfigurationElement)participants[i];
                    int participantIndex = i;
                    SafeRunner.run((ISafeRunnable)new ISafeRunnable(this, configElement, sourceLevelIndex, participantsPerSource, participantIndex){
                        final /* synthetic */ CompilationParticipants this$1;
                        private final /* synthetic */ IConfigurationElement val$configElement;
                        private final /* synthetic */ int val$sourceLevelIndex;
                        private final /* synthetic */ Object[][] val$participantsPerSource;
                        private final /* synthetic */ int val$participantIndex;
                        {
                            this.this$1 = compilationParticipants;
                            this.val$configElement = iConfigurationElement;
                            this.val$sourceLevelIndex = n;
                            this.val$participantsPerSource = objectArray;
                            this.val$participantIndex = n2;
                        }

                        public void handleException(Throwable exception) {
                            Util.log(exception, "Exception occurred while creating compilation participant");
                        }

                        public void run() throws Exception {
                            Object executableExtension = this.val$configElement.createExecutableExtension("class");
                            int j = this.val$sourceLevelIndex;
                            while (j < 7) {
                                this.val$participantsPerSource[j][this.val$participantIndex] = executableExtension;
                                ++j;
                            }
                        }
                    });
                }
                if (participants[i] instanceof CompilationParticipant && (participant = (CompilationParticipant)participants[i]).isActive(project)) {
                    result[index++] = participant;
                }
                ++i;
            }
            if (index == 0) {
                return null;
            }
            if (index < length) {
                CompilationParticipant[] compilationParticipantArray = result;
                result = new CompilationParticipant[index];
                System.arraycopy(compilationParticipantArray, 0, result, 0, index);
            }
            return result;
        }

        public HashSet managedMarkerTypes() {
            if (this.managedMarkerTypes == null) {
                this.getRegisteredParticipants();
            }
            return this.managedMarkerTypes;
        }

        private synchronized Object[][] getRegisteredParticipants() {
            IConfigurationElement[] configElements;
            if (this.registeredParticipants != null) {
                return this.registeredParticipants;
            }
            this.managedMarkerTypes = new HashSet();
            IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.jdt.core", JavaModelManager.COMPILATION_PARTICIPANT_EXTPOINT_ID);
            if (extension == null) {
                this.registeredParticipants = NO_PARTICIPANTS;
                return NO_PARTICIPANTS;
            }
            ArrayList<IConfigurationElement> modifyingEnv = new ArrayList<IConfigurationElement>();
            ArrayList<IConfigurationElement> creatingProblems = new ArrayList<IConfigurationElement>();
            ArrayList<IConfigurationElement> others = new ArrayList<IConfigurationElement>();
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    IConfigurationElement configElement = configElements[j];
                    String elementName = configElement.getName();
                    if (JavaModelManager.COMPILATION_PARTICIPANT_EXTPOINT_ID.equals(elementName)) {
                        if (JavaModelManager.TRUE.equals(configElement.getAttribute("modifiesEnvironment"))) {
                            modifyingEnv.add(configElement);
                        } else if (JavaModelManager.TRUE.equals(configElement.getAttribute("createsProblems"))) {
                            creatingProblems.add(configElement);
                        } else {
                            others.add(configElement);
                        }
                        IConfigurationElement[] managedMarkers = configElement.getChildren("managedMarker");
                        int k = 0;
                        int length = managedMarkers.length;
                        while (k < length) {
                            IConfigurationElement element = managedMarkers[k];
                            String markerType = element.getAttribute("markerType");
                            if (markerType != null) {
                                this.managedMarkerTypes.add(markerType);
                            }
                            ++k;
                        }
                    }
                    ++j;
                }
                ++i;
            }
            int size = modifyingEnv.size() + creatingProblems.size() + others.size();
            if (size == 0) {
                this.registeredParticipants = NO_PARTICIPANTS;
                return NO_PARTICIPANTS;
            }
            configElements = new IConfigurationElement[size];
            int index = 0;
            index = this.sortParticipants(modifyingEnv, configElements, index);
            index = this.sortParticipants(creatingProblems, configElements, index);
            index = this.sortParticipants(others, configElements, index);
            Object[][] result = new Object[7][];
            int length = configElements.length;
            int i2 = 0;
            while (i2 < 7) {
                result[i2] = new Object[length];
                ++i2;
            }
            i2 = 0;
            while (i2 < length) {
                int sourceLevelIndex;
                String sourceLevel = configElements[i2].getAttribute("requiredSourceLevel");
                int j = sourceLevelIndex = this.indexForSourceLevel(sourceLevel);
                while (j < 7) {
                    result[j][i2] = configElements[i2];
                    ++j;
                }
                ++i2;
            }
            this.registeredParticipants = result;
            return result;
        }

        private int indexForSourceLevel(String sourceLevel) {
            if (sourceLevel == null) {
                return 0;
            }
            int majVersion = (int)(CompilerOptions.versionToJdkLevel(sourceLevel) >>> 16);
            switch (majVersion) {
                case 46: {
                    return 1;
                }
                case 47: {
                    return 2;
                }
                case 48: {
                    return 3;
                }
                case 49: {
                    return 4;
                }
                case 50: {
                    return 5;
                }
                case 51: {
                    return 6;
                }
            }
            return 0;
        }

        private int sortParticipants(ArrayList group, IConfigurationElement[] configElements, int index) {
            int size = group.size();
            if (size == 0) {
                return index;
            }
            Object[] elements = group.toArray();
            Util.sort(elements, new Util.Comparer(this){
                final /* synthetic */ CompilationParticipants this$1;
                {
                    this.this$1 = compilationParticipants;
                }

                public int compare(Object a, Object b) {
                    if (a == b) {
                        return 0;
                    }
                    String id = ((IConfigurationElement)a).getAttribute("id");
                    if (id == null) {
                        return -1;
                    }
                    IConfigurationElement[] requiredElements = ((IConfigurationElement)b).getChildren("requires");
                    int i = 0;
                    int length = requiredElements.length;
                    while (i < length) {
                        IConfigurationElement required = requiredElements[i];
                        if (id.equals(required.getAttribute("id"))) {
                            return 1;
                        }
                        ++i;
                    }
                    return -1;
                }
            });
            int i = 0;
            while (i < size) {
                configElements[index + i] = (IConfigurationElement)elements[i];
                ++i;
            }
            return index + size;
        }
    }

    public static class EclipsePreferencesListener
    implements IEclipsePreferences.IPreferenceChangeListener {
        public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
            String propertyName = event.getKey();
            if (propertyName.startsWith("org.eclipse.jdt.core")) {
                Object manager;
                if (propertyName.startsWith(JavaModelManager.CP_VARIABLE_PREFERENCES_PREFIX)) {
                    String varName = propertyName.substring(JavaModelManager.CP_VARIABLE_PREFERENCES_PREFIX.length());
                    manager = JavaModelManager.getJavaModelManager();
                    if (((JavaModelManager)manager).variablesWithInitializer.contains(varName)) {
                        String oldValue = (String)event.getOldValue();
                        if (oldValue == null) {
                            ((JavaModelManager)manager).variablesWithInitializer.remove(varName);
                        } else {
                            ((JavaModelManager)manager).getInstancePreferences().put(varName, oldValue);
                        }
                    } else {
                        String newValue = (String)event.getNewValue();
                        Path newPath = newValue != null && !(newValue = newValue.trim()).equals(JavaModelManager.CP_ENTRY_IGNORE) ? new Path(newValue) : null;
                        try {
                            SetVariablesOperation operation = new SetVariablesOperation(new String[]{varName}, new IPath[]{newPath}, false);
                            operation.runOperation(null);
                        }
                        catch (JavaModelException e) {
                            Util.log((Throwable)((Object)e), "Could not set classpath variable " + varName + " to " + newPath);
                        }
                    }
                } else if (propertyName.startsWith(JavaModelManager.CP_CONTAINER_PREFERENCES_PREFIX)) {
                    JavaModelManager.recreatePersistedContainer(propertyName, (String)event.getNewValue(), false);
                } else if (propertyName.equals("org.eclipse.jdt.core.builder.cleanOutputFolder") || propertyName.equals("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter") || propertyName.equals("org.eclipse.jdt.core.builder.duplicateResourceTask") || propertyName.equals("org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder") || propertyName.equals("org.eclipse.jdt.core.builder.invalidClasspath") || propertyName.equals("org.eclipse.jdt.core.classpath.exclusionPatterns") || propertyName.equals("org.eclipse.jdt.core.classpath.multipleOutputLocations") || propertyName.equals("org.eclipse.jdt.core.incompleteClasspath") || propertyName.equals("org.eclipse.jdt.core.circularClasspath") || propertyName.equals("org.eclipse.jdt.core.incompatibleJDKLevel")) {
                    JavaModelManager manager2 = JavaModelManager.getJavaModelManager();
                    JavaModel model = manager2.getJavaModel();
                    try {
                        IJavaProject[] projects = model.getJavaProjects();
                        int i = 0;
                        int pl = projects.length;
                        while (i < pl) {
                            JavaProject javaProject = (JavaProject)projects[i];
                            manager2.deltaState.addClasspathValidation(javaProject);
                            try {
                                javaProject.getProject().touch(null);
                            }
                            catch (CoreException coreException) {}
                            ++i;
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                } else if (propertyName.startsWith(JavaModelManager.CP_USERLIBRARY_PREFERENCES_PREFIX)) {
                    String libName = propertyName.substring(JavaModelManager.CP_USERLIBRARY_PREFERENCES_PREFIX.length());
                    manager = JavaModelManager.getUserLibraryManager();
                    ((UserLibraryManager)manager).updateUserLibrary(libName, (String)event.getNewValue());
                }
            }
            try {
                IJavaProject[] projects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
                int i = 0;
                int length = projects.length;
                while (i < length) {
                    ((JavaProject)projects[i]).resetCaches();
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    public static class PerProjectInfo {
        private static final int JAVADOC_CACHE_INITIAL_SIZE = 10;
        static final IJavaModelStatus NEED_RESOLUTION = new JavaModelStatus();
        public IProject project;
        public Object savedState = null;
        public boolean triedRead = false;
        public IClasspathEntry[] rawClasspath;
        public IClasspathEntry[] referencedEntries;
        public IJavaModelStatus rawClasspathStatus;
        public int rawTimeStamp = 0;
        public boolean writtingRawClasspath = false;
        public IClasspathEntry[] resolvedClasspath;
        public IJavaModelStatus unresolvedEntryStatus;
        public Map rootPathToRawEntries;
        public Map rootPathToResolvedEntries;
        public IPath outputLocation;
        public IEclipsePreferences preferences;
        public Hashtable options;
        public Hashtable secondaryTypes;
        public LRUCache javadocCache;

        public PerProjectInfo(IProject project) {
            this.project = project;
            this.javadocCache = new LRUCache(10);
        }

        public synchronized IClasspathEntry[] getResolvedClasspath() {
            if (this.unresolvedEntryStatus == NEED_RESOLUTION) {
                return null;
            }
            return this.resolvedClasspath;
        }

        public void forgetExternalTimestampsAndIndexes() {
            IClasspathEntry[] classpath = this.resolvedClasspath;
            if (classpath == null) {
                return;
            }
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            IndexManager indexManager = manager.indexManager;
            Hashtable externalTimeStamps = manager.deltaState.getExternalLibTimeStamps();
            HashMap rootInfos = JavaModelManager.getDeltaState().otherRoots;
            int i = 0;
            int length = classpath.length;
            while (i < length) {
                IPath path;
                IClasspathEntry entry = classpath[i];
                if (entry.getEntryKind() == 1 && rootInfos.get(path = entry.getPath()) == null) {
                    externalTimeStamps.remove(path);
                    indexManager.removeIndex(path);
                }
                ++i;
            }
        }

        public void rememberExternalLibTimestamps() {
            IClasspathEntry[] classpath = this.resolvedClasspath;
            if (classpath == null) {
                return;
            }
            Hashtable externalTimeStamps = JavaModelManager.getJavaModelManager().deltaState.getExternalLibTimeStamps();
            int i = 0;
            int length = classpath.length;
            while (i < length) {
                Object target;
                IPath path;
                IClasspathEntry entry = classpath[i];
                if (entry.getEntryKind() == 1 && externalTimeStamps.get(path = entry.getPath()) == null && (target = JavaModel.getExternalTarget(path, true)) instanceof File) {
                    long timestamp = DeltaProcessor.getTimeStamp((File)target);
                    externalTimeStamps.put(path, new Long(timestamp));
                }
                ++i;
            }
        }

        public synchronized ClasspathChange resetResolvedClasspath() {
            JavaModelManager.getJavaModelManager().resetClasspathListCache();
            return this.setResolvedClasspath(null, null, null, null, this.rawTimeStamp, true);
        }

        private ClasspathChange setClasspath(IClasspathEntry[] newRawClasspath, IClasspathEntry[] referencedEntries, IPath newOutputLocation, IJavaModelStatus newRawClasspathStatus, IClasspathEntry[] newResolvedClasspath, Map newRootPathToRawEntries, Map newRootPathToResolvedEntries, IJavaModelStatus newUnresolvedEntryStatus, boolean addClasspathChange) {
            ClasspathChange classpathChange;
            ClasspathChange classpathChange2 = classpathChange = addClasspathChange ? this.addClasspathChange() : null;
            if (referencedEntries != null) {
                this.referencedEntries = referencedEntries;
            }
            if (this.referencedEntries == null) {
                this.referencedEntries = ClasspathEntry.NO_ENTRIES;
            }
            this.rawClasspath = newRawClasspath;
            this.outputLocation = newOutputLocation;
            this.rawClasspathStatus = newRawClasspathStatus;
            this.resolvedClasspath = newResolvedClasspath;
            this.rootPathToRawEntries = newRootPathToRawEntries;
            this.rootPathToResolvedEntries = newRootPathToResolvedEntries;
            this.unresolvedEntryStatus = newUnresolvedEntryStatus;
            this.javadocCache = new LRUCache(10);
            return classpathChange;
        }

        protected ClasspathChange addClasspathChange() {
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            ClasspathChange classpathChange = manager.deltaState.addClasspathChange(this.project, this.rawClasspath, this.outputLocation, this.resolvedClasspath);
            return classpathChange;
        }

        public ClasspathChange setRawClasspath(IClasspathEntry[] newRawClasspath, IPath newOutputLocation, IJavaModelStatus newRawClasspathStatus) {
            return this.setRawClasspath(newRawClasspath, null, newOutputLocation, newRawClasspathStatus);
        }

        public synchronized ClasspathChange setRawClasspath(IClasspathEntry[] newRawClasspath, IClasspathEntry[] referencedEntries, IPath newOutputLocation, IJavaModelStatus newRawClasspathStatus) {
            ++this.rawTimeStamp;
            return this.setClasspath(newRawClasspath, referencedEntries, newOutputLocation, newRawClasspathStatus, null, null, null, null, true);
        }

        public ClasspathChange setResolvedClasspath(IClasspathEntry[] newResolvedClasspath, Map newRootPathToRawEntries, Map newRootPathToResolvedEntries, IJavaModelStatus newUnresolvedEntryStatus, int timeStamp, boolean addClasspathChange) {
            return this.setResolvedClasspath(newResolvedClasspath, null, newRootPathToRawEntries, newRootPathToResolvedEntries, newUnresolvedEntryStatus, timeStamp, addClasspathChange);
        }

        public synchronized ClasspathChange setResolvedClasspath(IClasspathEntry[] newResolvedClasspath, IClasspathEntry[] referencedEntries, Map newRootPathToRawEntries, Map newRootPathToResolvedEntries, IJavaModelStatus newUnresolvedEntryStatus, int timeStamp, boolean addClasspathChange) {
            if (this.rawTimeStamp != timeStamp) {
                return null;
            }
            return this.setClasspath(this.rawClasspath, referencedEntries, this.outputLocation, this.rawClasspathStatus, newResolvedClasspath, newRootPathToRawEntries, newRootPathToResolvedEntries, newUnresolvedEntryStatus, addClasspathChange);
        }

        public synchronized IClasspathEntry[][] readAndCacheClasspath(JavaProject javaProject) {
            IClasspathEntry entry;
            IJavaModelStatus status;
            IClasspathEntry[][] classpath;
            try {
                classpath = javaProject.readFileEntriesWithException(null);
                status = JavaModelStatus.VERIFIED_OK;
            }
            catch (CoreException coreException) {
                classpath = new IClasspathEntry[][]{JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                status = new JavaModelStatus(1000, Messages.bind(Messages.classpath_cannotReadClasspathFile, javaProject.getElementName()));
            }
            catch (IOException e) {
                classpath = new IClasspathEntry[][]{JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                status = Messages.file_badFormat.equals(e.getMessage()) ? new JavaModelStatus(1000, Messages.bind(Messages.classpath_xmlFormatError, javaProject.getElementName(), Messages.file_badFormat)) : new JavaModelStatus(1000, Messages.bind(Messages.classpath_cannotReadClasspathFile, javaProject.getElementName()));
            }
            catch (ClasspathEntry.AssertionFailedException e) {
                classpath = new IClasspathEntry[][]{JavaProject.INVALID_CLASSPATH, ClasspathEntry.NO_ENTRIES};
                status = new JavaModelStatus(1000, Messages.bind(Messages.classpath_illegalEntryInClasspathFile, new String[]{javaProject.getElementName(), e.getMessage()}));
            }
            int rawClasspathLength = classpath[0].length;
            IPath output = null;
            if (rawClasspathLength > 0 && (entry = classpath[0][rawClasspathLength - 1]).getContentKind() == 10) {
                output = entry.getPath();
                IClasspathEntry[] copy = new IClasspathEntry[rawClasspathLength - 1];
                System.arraycopy(classpath[0], 0, copy, 0, copy.length);
                classpath[0] = copy;
            }
            this.setRawClasspath(classpath[0], classpath[1], output, status);
            return classpath;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append("Info for ");
            buffer.append(this.project.getFullPath());
            buffer.append("\nRaw classpath:\n");
            if (this.rawClasspath == null) {
                buffer.append("  <null>\n");
            } else {
                int i = 0;
                int length = this.rawClasspath.length;
                while (i < length) {
                    buffer.append("  ");
                    buffer.append(this.rawClasspath[i]);
                    buffer.append('\n');
                    ++i;
                }
            }
            buffer.append("Resolved classpath:\n");
            IClasspathEntry[] resolvedCP = this.resolvedClasspath;
            if (resolvedCP == null) {
                buffer.append("  <null>\n");
            } else {
                int i = 0;
                int length = resolvedCP.length;
                while (i < length) {
                    buffer.append("  ");
                    buffer.append(resolvedCP[i]);
                    buffer.append('\n');
                    ++i;
                }
            }
            buffer.append("Resolved classpath status: ");
            if (this.unresolvedEntryStatus == NEED_RESOLUTION) {
                buffer.append("NEED RESOLUTION");
            } else {
                buffer.append(this.unresolvedEntryStatus == null ? "<null>\n" : this.unresolvedEntryStatus.toString());
            }
            buffer.append("Output location:\n  ");
            if (this.outputLocation == null) {
                buffer.append("<null>");
            } else {
                buffer.append(this.outputLocation);
            }
            return buffer.toString();
        }

        public boolean writeAndCacheClasspath(JavaProject javaProject, IClasspathEntry[] newRawClasspath, IClasspathEntry[] newReferencedEntries, IPath newOutputLocation) throws JavaModelException {
            try {
                this.writtingRawClasspath = true;
                if (newReferencedEntries == null) {
                    newReferencedEntries = this.referencedEntries;
                }
                if (!javaProject.writeFileEntries(newRawClasspath, newReferencedEntries, newOutputLocation)) {
                    return false;
                }
                this.setRawClasspath(newRawClasspath, newReferencedEntries, newOutputLocation, JavaModelStatus.VERIFIED_OK);
            }
            finally {
                this.writtingRawClasspath = false;
            }
            return true;
        }

        public boolean writeAndCacheClasspath(JavaProject javaProject, IClasspathEntry[] newRawClasspath, IPath newOutputLocation) throws JavaModelException {
            return this.writeAndCacheClasspath(javaProject, newRawClasspath, null, newOutputLocation);
        }
    }

    public static class PerWorkingCopyInfo
    implements IProblemRequestor {
        int useCount = 0;
        IProblemRequestor problemRequestor;
        CompilationUnit workingCopy;

        public PerWorkingCopyInfo(CompilationUnit workingCopy, IProblemRequestor problemRequestor) {
            this.workingCopy = workingCopy;
            this.problemRequestor = problemRequestor;
        }

        public void acceptProblem(IProblem problem) {
            IProblemRequestor requestor = this.getProblemRequestor();
            if (requestor == null) {
                return;
            }
            requestor.acceptProblem(problem);
        }

        public void beginReporting() {
            IProblemRequestor requestor = this.getProblemRequestor();
            if (requestor == null) {
                return;
            }
            requestor.beginReporting();
        }

        public void endReporting() {
            IProblemRequestor requestor = this.getProblemRequestor();
            if (requestor == null) {
                return;
            }
            requestor.endReporting();
        }

        public IProblemRequestor getProblemRequestor() {
            if (this.problemRequestor == null && this.workingCopy.owner != null) {
                return this.workingCopy.owner.getProblemRequestor(this.workingCopy);
            }
            return this.problemRequestor;
        }

        public ICompilationUnit getWorkingCopy() {
            return this.workingCopy;
        }

        public boolean isActive() {
            IProblemRequestor requestor = this.getProblemRequestor();
            return requestor != null && requestor.isActive();
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append("Info for ");
            buffer.append(this.workingCopy.toStringWithAncestors());
            buffer.append("\nUse count = ");
            buffer.append(this.useCount);
            buffer.append("\nProblem requestor:\n  ");
            buffer.append(this.problemRequestor);
            if (this.problemRequestor == null) {
                IProblemRequestor requestor = this.getProblemRequestor();
                buffer.append("\nOwner problem requestor:\n  ");
                buffer.append(requestor);
            }
            return buffer.toString();
        }
    }

    private static final class PersistedClasspathContainer
    implements IClasspathContainer {
        private final IPath containerPath;
        private final IClasspathEntry[] entries;
        private final IJavaProject project;

        PersistedClasspathContainer(IJavaProject project, IPath containerPath, IClasspathEntry[] entries) {
            this.containerPath = containerPath;
            this.entries = entries;
            this.project = project;
        }

        public IClasspathEntry[] getClasspathEntries() {
            return this.entries;
        }

        public String getDescription() {
            return "Persisted container [" + this.containerPath + " for project [" + this.project.getElementName() + "]]";
        }

        public int getKind() {
            return 0;
        }

        public IPath getPath() {
            return this.containerPath;
        }

        public String toString() {
            return this.getDescription();
        }
    }

    private final class VariablesAndContainersLoadHelper {
        private static final int ARRAY_INCREMENT = 200;
        private IClasspathEntry[] allClasspathEntries = null;
        private int allClasspathEntryCount = 0;
        private final Map allPaths = new HashMap();
        private String[] allStrings = null;
        private int allStringsCount = 0;
        private final DataInputStream in;

        VariablesAndContainersLoadHelper(DataInputStream in) {
            this.in = in;
        }

        void load() throws IOException {
            this.loadProjects(JavaModelManager.this.getJavaModel());
            this.loadVariables();
        }

        private IAccessRule loadAccessRule() throws IOException {
            int problemId = this.loadInt();
            IPath pattern = this.loadPath();
            return new ClasspathAccessRule(pattern.toString().toCharArray(), problemId);
        }

        private IAccessRule[] loadAccessRules() throws IOException {
            int count = this.loadInt();
            if (count == 0) {
                return ClasspathEntry.NO_ACCESS_RULES;
            }
            IAccessRule[] rules = new IAccessRule[count];
            int i = 0;
            while (i < count) {
                rules[i] = this.loadAccessRule();
                ++i;
            }
            return rules;
        }

        private IClasspathAttribute loadAttribute() throws IOException {
            String name = this.loadString();
            String value = this.loadString();
            return new ClasspathAttribute(name, value);
        }

        private IClasspathAttribute[] loadAttributes() throws IOException {
            int count = this.loadInt();
            if (count == 0) {
                return ClasspathEntry.NO_EXTRA_ATTRIBUTES;
            }
            IClasspathAttribute[] attributes = new IClasspathAttribute[count];
            int i = 0;
            while (i < count) {
                attributes[i] = this.loadAttribute();
                ++i;
            }
            return attributes;
        }

        private boolean loadBoolean() throws IOException {
            return this.in.readBoolean();
        }

        private IClasspathEntry[] loadClasspathEntries() throws IOException {
            int count = this.loadInt();
            IClasspathEntry[] entries = new IClasspathEntry[count];
            int i = 0;
            while (i < count) {
                entries[i] = this.loadClasspathEntry();
                ++i;
            }
            return entries;
        }

        private IClasspathEntry loadClasspathEntry() throws IOException {
            int id = this.loadInt();
            if (id < 0 || id > this.allClasspathEntryCount) {
                throw new IOException("Unexpected classpathentry id");
            }
            if (id < this.allClasspathEntryCount) {
                return this.allClasspathEntries[id];
            }
            int contentKind = this.loadInt();
            int entryKind = this.loadInt();
            IPath path = this.loadPath();
            IPath[] inclusionPatterns = this.loadPaths();
            IPath[] exclusionPatterns = this.loadPaths();
            IPath sourceAttachmentPath = this.loadPath();
            IPath sourceAttachmentRootPath = this.loadPath();
            IPath specificOutputLocation = this.loadPath();
            boolean isExported = this.loadBoolean();
            IAccessRule[] accessRules = this.loadAccessRules();
            boolean combineAccessRules = this.loadBoolean();
            IClasspathAttribute[] extraAttributes = this.loadAttributes();
            ClasspathEntry entry = new ClasspathEntry(contentKind, entryKind, path, inclusionPatterns, exclusionPatterns, sourceAttachmentPath, sourceAttachmentRootPath, specificOutputLocation, isExported, accessRules, combineAccessRules, extraAttributes);
            IClasspathEntry[] array = this.allClasspathEntries;
            if (array == null || id == array.length) {
                array = new IClasspathEntry[id + 200];
                if (id != 0) {
                    System.arraycopy(this.allClasspathEntries, 0, array, 0, id);
                }
                this.allClasspathEntries = array;
            }
            array[id] = entry;
            this.allClasspathEntryCount = id + 1;
            return entry;
        }

        private void loadContainers(IJavaProject project) throws IOException {
            boolean projectIsAccessible = project.getProject().isAccessible();
            int count = this.loadInt();
            int i = 0;
            while (i < count) {
                IPath path = this.loadPath();
                IClasspathEntry[] entries = this.loadClasspathEntries();
                if (projectIsAccessible) {
                    PersistedClasspathContainer container = new PersistedClasspathContainer(project, path, entries);
                    JavaModelManager.this.containerPut(project, path, container);
                    HashMap<IPath, PersistedClasspathContainer> oldContainers = (HashMap<IPath, PersistedClasspathContainer>)JavaModelManager.this.previousSessionContainers.get(project);
                    if (oldContainers == null) {
                        oldContainers = new HashMap<IPath, PersistedClasspathContainer>();
                        JavaModelManager.this.previousSessionContainers.put(project, oldContainers);
                    }
                    oldContainers.put(path, container);
                }
                ++i;
            }
        }

        private int loadInt() throws IOException {
            return this.in.readInt();
        }

        private IPath loadPath() throws IOException {
            if (this.loadBoolean()) {
                return null;
            }
            String portableString = this.loadString();
            IPath path = (IPath)this.allPaths.get(portableString);
            if (path == null) {
                path = Path.fromPortableString((String)portableString);
                this.allPaths.put(portableString, path);
            }
            return path;
        }

        private IPath[] loadPaths() throws IOException {
            int count = this.loadInt();
            IPath[] pathArray = new IPath[count];
            int i = 0;
            while (i < count) {
                pathArray[i] = this.loadPath();
                ++i;
            }
            return pathArray;
        }

        private void loadProjects(IJavaModel model) throws IOException {
            int count = this.loadInt();
            int i = 0;
            while (i < count) {
                String projectName = this.loadString();
                this.loadContainers(model.getJavaProject(projectName));
                ++i;
            }
        }

        private String loadString() throws IOException {
            int id = this.loadInt();
            if (id < 0 || id > this.allStringsCount) {
                throw new IOException("Unexpected string id");
            }
            if (id < this.allStringsCount) {
                return this.allStrings[id];
            }
            String string = this.in.readUTF();
            String[] array = this.allStrings;
            if (array == null || id == array.length) {
                array = new String[id + 200];
                if (id != 0) {
                    System.arraycopy(this.allStrings, 0, array, 0, id);
                }
                this.allStrings = array;
            }
            array[id] = string;
            this.allStringsCount = id + 1;
            return string;
        }

        private void loadVariables() throws IOException {
            int size = this.loadInt();
            HashMap<String, IPath> loadedVars = new HashMap<String, IPath>(size);
            int i = 0;
            while (i < size) {
                String varName = this.loadString();
                IPath varPath = this.loadPath();
                if (varPath != null) {
                    loadedVars.put(varName, varPath);
                }
                ++i;
            }
            JavaModelManager.this.previousSessionVariables.putAll(loadedVars);
            JavaModelManager.this.variables.putAll(loadedVars);
        }
    }

    private final class VariablesAndContainersSaveHelper {
        private final HashtableOfObjectToInt classpathEntryIds = new HashtableOfObjectToInt();
        private final DataOutputStream out;
        private final HashtableOfObjectToInt stringIds;

        VariablesAndContainersSaveHelper(DataOutputStream out) {
            this.out = out;
            this.stringIds = new HashtableOfObjectToInt();
        }

        void save(ISaveContext context) throws IOException, JavaModelException {
            this.saveProjects(JavaModelManager.this.getJavaModel().getJavaProjects());
            HashMap varsToSave = null;
            Iterator iterator = JavaModelManager.this.variables.entrySet().iterator();
            IEclipsePreferences defaultPreferences = JavaModelManager.this.getDefaultPreferences();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                String varName = (String)entry.getKey();
                if (defaultPreferences.get(JavaModelManager.CP_VARIABLE_PREFERENCES_PREFIX + varName, null) == null && !CP_ENTRY_IGNORE_PATH.equals(entry.getValue())) continue;
                if (varsToSave == null) {
                    varsToSave = new HashMap(JavaModelManager.this.variables);
                }
                varsToSave.remove(varName);
            }
            this.saveVariables(varsToSave != null ? varsToSave : JavaModelManager.this.variables);
        }

        private void saveAccessRule(ClasspathAccessRule rule) throws IOException {
            this.saveInt(rule.problemId);
            this.savePath(rule.getPattern());
        }

        private void saveAccessRules(IAccessRule[] rules) throws IOException {
            int count = rules == null ? 0 : rules.length;
            this.saveInt(count);
            int i = 0;
            while (i < count) {
                this.saveAccessRule((ClasspathAccessRule)rules[i]);
                ++i;
            }
        }

        private void saveAttribute(IClasspathAttribute attribute) throws IOException {
            this.saveString(attribute.getName());
            this.saveString(attribute.getValue());
        }

        private void saveAttributes(IClasspathAttribute[] attributes) throws IOException {
            int count = attributes == null ? 0 : attributes.length;
            this.saveInt(count);
            int i = 0;
            while (i < count) {
                this.saveAttribute(attributes[i]);
                ++i;
            }
        }

        private void saveClasspathEntries(IClasspathEntry[] entries) throws IOException {
            int count = entries == null ? 0 : entries.length;
            this.saveInt(count);
            int i = 0;
            while (i < count) {
                this.saveClasspathEntry(entries[i]);
                ++i;
            }
        }

        private void saveClasspathEntry(IClasspathEntry entry) throws IOException {
            if (this.saveNewId(entry, this.classpathEntryIds)) {
                this.saveInt(entry.getContentKind());
                this.saveInt(entry.getEntryKind());
                this.savePath(entry.getPath());
                this.savePaths(entry.getInclusionPatterns());
                this.savePaths(entry.getExclusionPatterns());
                this.savePath(entry.getSourceAttachmentPath());
                this.savePath(entry.getSourceAttachmentRootPath());
                this.savePath(entry.getOutputLocation());
                this.out.writeBoolean(entry.isExported());
                this.saveAccessRules(entry.getAccessRules());
                this.out.writeBoolean(entry.combineAccessRules());
                this.saveAttributes(entry.getExtraAttributes());
            }
        }

        private void saveContainers(IJavaProject project, Map containerMap) throws IOException {
            this.saveInt(containerMap.size());
            Iterator i = containerMap.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry entry = i.next();
                IPath path = (IPath)entry.getKey();
                IClasspathContainer container = (IClasspathContainer)entry.getValue();
                IClasspathEntry[] cpEntries = null;
                if (container == null) {
                    container = JavaModelManager.this.getPreviousSessionContainer(path, project);
                }
                if (container != null) {
                    cpEntries = container.getClasspathEntries();
                }
                this.savePath(path);
                this.saveClasspathEntries(cpEntries);
            }
        }

        private void saveInt(int value) throws IOException {
            this.out.writeInt(value);
        }

        private boolean saveNewId(Object key, HashtableOfObjectToInt map) throws IOException {
            int id = map.get(key);
            if (id == -1) {
                int newId = map.size();
                map.put(key, newId);
                this.saveInt(newId);
                return true;
            }
            this.saveInt(id);
            return false;
        }

        private void savePath(IPath path) throws IOException {
            if (path == null) {
                this.out.writeBoolean(true);
            } else {
                this.out.writeBoolean(false);
                this.saveString(path.toPortableString());
            }
        }

        private void savePaths(IPath[] paths) throws IOException {
            int count = paths == null ? 0 : paths.length;
            this.saveInt(count);
            int i = 0;
            while (i < count) {
                this.savePath(paths[i]);
                ++i;
            }
        }

        private void saveProjects(IJavaProject[] projects) throws IOException, JavaModelException {
            int count = projects.length;
            this.saveInt(count);
            int i = 0;
            while (i < count) {
                IJavaProject project = projects[i];
                this.saveString(project.getElementName());
                Map containerMap = (HashMap)JavaModelManager.this.containers.get(project);
                containerMap = containerMap == null ? Collections.EMPTY_MAP : new HashMap(containerMap);
                this.saveContainers(project, containerMap);
                ++i;
            }
        }

        private void saveString(String string) throws IOException {
            if (this.saveNewId(string, this.stringIds)) {
                this.out.writeUTF(string);
            }
        }

        private void saveVariables(Map map) throws IOException {
            this.saveInt(map.size());
            Iterator i = map.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry entry = i.next();
                String varName = (String)entry.getKey();
                IPath varPath = (IPath)entry.getValue();
                this.saveString(varName);
                this.savePath(varPath);
            }
        }
    }

    static class ZipCache {
        private Map map = new HashMap();
        Object owner;

        ZipCache(Object owner) {
            this.owner = owner;
        }

        public void flush() {
            Thread currentThread = Thread.currentThread();
            Iterator iterator = this.map.values().iterator();
            while (iterator.hasNext()) {
                try {
                    ZipFile zipFile = (ZipFile)iterator.next();
                    if (ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + currentThread + ") [JavaModelManager.flushZipFiles()] Closing ZipFile on " + zipFile.getName());
                    }
                    zipFile.close();
                }
                catch (IOException iOException) {}
            }
        }

        public ZipFile getCache(IPath path) {
            return (ZipFile)this.map.get(path);
        }

        public void setCache(IPath path, ZipFile zipFile) {
            this.map.put(path, zipFile);
        }
    }
}

