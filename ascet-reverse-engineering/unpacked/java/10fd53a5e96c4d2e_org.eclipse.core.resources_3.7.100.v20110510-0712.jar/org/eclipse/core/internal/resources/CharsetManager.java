/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.Bundle
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.resources;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.resources.CharsetDeltaJob;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.jobs.Job;
import org.osgi.framework.Bundle;
import org.osgi.service.prefs.BackingStoreException;

public class CharsetManager
implements IManager {
    private static final String PROJECT_KEY = "<project>";
    private CharsetDeltaJob charsetListener;
    CharsetManagerJob job;
    private IResourceChangeListener resourceChangeListener;
    protected final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");
    Workspace workspace;

    public CharsetManager(Workspace workspace) {
        this.workspace = workspace;
    }

    void flushPreferences(org.osgi.service.prefs.Preferences projectPrefs, boolean shouldDisableCharsetDeltaJob) throws BackingStoreException {
        if (projectPrefs != null) {
            try {
                if (shouldDisableCharsetDeltaJob) {
                    this.charsetListener.setDisabled(true);
                }
                projectPrefs.flush();
            }
            finally {
                if (shouldDisableCharsetDeltaJob) {
                    this.charsetListener.setDisabled(false);
                }
            }
        }
    }

    public String getCharsetFor(IPath resourcePath, boolean recurse) {
        Assert.isLegal((resourcePath.segmentCount() >= 1 ? 1 : 0) != 0);
        IProject project = this.workspace.getRoot().getProject(resourcePath.segment(0));
        org.osgi.service.prefs.Preferences prefs = this.getPreferences(project, false, false);
        org.osgi.service.prefs.Preferences derivedPrefs = this.getPreferences(project, false, true);
        if (prefs == null && derivedPrefs == null) {
            return recurse ? ResourcesPlugin.getEncoding() : null;
        }
        return this.internalGetCharsetFor(prefs, derivedPrefs, resourcePath, recurse);
    }

    static String getKeyFor(IPath resourcePath) {
        return resourcePath.segmentCount() > 1 ? resourcePath.removeFirstSegments(1).toString() : PROJECT_KEY;
    }

    org.osgi.service.prefs.Preferences getPreferences(IProject project, boolean create, boolean isDerived) {
        return this.getPreferences(project, create, isDerived, this.isDerivedEncodingStoredSeparately(project));
    }

    org.osgi.service.prefs.Preferences getPreferences(IProject project, boolean create, boolean isDerived, boolean isDerivedEncodingStoredSeparately) {
        org.osgi.service.prefs.Preferences node;
        block8: {
            String qualifier;
            block7: {
                block6: {
                    boolean localIsDerived = isDerivedEncodingStoredSeparately ? isDerived : false;
                    String string = qualifier = localIsDerived ? "org.eclipse.core.resources.derived" : "org.eclipse.core.resources";
                    if (create) {
                        return new ProjectScope(project).getNode(qualifier).node("encoding");
                    }
                    node = Platform.getPreferencesService().getRootNode().node("project");
                    try {
                        if (node.nodeExists(project.getName())) break block6;
                        return null;
                    }
                    catch (BackingStoreException e) {
                        String message = Messages.resources_readingEncoding;
                        Policy.log(new ResourceStatus(383, project.getFullPath(), message, e));
                        return null;
                    }
                }
                node = node.node(project.getName());
                if (node.nodeExists(qualifier)) break block7;
                return null;
            }
            node = node.node(qualifier);
            if (node.nodeExists("encoding")) break block8;
            return null;
        }
        return node.node("encoding");
    }

    /*
     * Unable to fully structure code
     */
    private String internalGetCharsetFor(org.osgi.service.prefs.Preferences prefs, org.osgi.service.prefs.Preferences derivedPrefs, IPath resourcePath, boolean recurse) {
        charset = null;
        if (prefs != null) {
            charset = prefs.get(CharsetManager.getKeyFor(resourcePath), null);
        }
        if (charset == null && derivedPrefs != null) {
            charset = derivedPrefs.get(CharsetManager.getKeyFor(resourcePath), null);
        }
        if (recurse) ** GOTO lbl13
        return charset;
lbl-1000:
        // 1 sources

        {
            resourcePath = resourcePath.removeLastSegments(1);
            if (prefs != null) {
                charset = prefs.get(CharsetManager.getKeyFor(resourcePath), null);
            }
            if (charset != null || derivedPrefs == null) continue;
            charset = derivedPrefs.get(CharsetManager.getKeyFor(resourcePath), null);
lbl13:
            // 3 sources

            ** while (charset == null && resourcePath.segmentCount() > 1)
        }
lbl14:
        // 1 sources

        return charset == null ? ResourcesPlugin.getEncoding() : charset;
    }

    private boolean isDerivedEncodingStoredSeparately(IProject project) {
        org.osgi.service.prefs.Preferences node;
        block5: {
            block4: {
                node = Platform.getPreferencesService().getRootNode().node("project");
                try {
                    if (node.nodeExists(project.getName())) break block4;
                    return false;
                }
                catch (BackingStoreException e) {
                    String message = Messages.resources_readingEncoding;
                    Policy.log(new ResourceStatus(383, project.getFullPath(), message, e));
                    return false;
                }
            }
            node = node.node(project.getName());
            if (node.nodeExists("org.eclipse.core.resources")) break block5;
            return false;
        }
        node = node.node("org.eclipse.core.resources");
        return node.getBoolean("separateDerivedEncodings", false);
    }

    protected void mergeEncodingPreferences(IProject project) {
        org.osgi.service.prefs.Preferences projectRegularPrefs = null;
        org.osgi.service.prefs.Preferences projectDerivedPrefs = this.getPreferences(project, false, true, true);
        if (projectDerivedPrefs == null) {
            return;
        }
        try {
            boolean prefsChanged = false;
            String[] affectedResources = projectDerivedPrefs.keys();
            int i = 0;
            while (i < affectedResources.length) {
                String path = affectedResources[i];
                String value = projectDerivedPrefs.get(path, null);
                projectDerivedPrefs.remove(path);
                if (projectRegularPrefs == null) {
                    projectRegularPrefs = this.getPreferences(project, true, false, false);
                }
                projectRegularPrefs.put(path, value);
                prefsChanged = true;
                ++i;
            }
            if (prefsChanged) {
                HashMap<IProject, Boolean> projectsToSave = new HashMap<IProject, Boolean>();
                projectsToSave.put(project, Boolean.TRUE);
                this.job.addChanges(projectsToSave);
            }
        }
        catch (BackingStoreException e) {
            String message = Messages.resources_readingEncoding;
            Policy.log(new ResourceStatus(383, project.getFullPath(), message, e));
        }
    }

    public void projectPreferencesChanged(IProject project) {
        this.charsetListener.charsetPreferencesChanged(project);
    }

    public void setCharsetFor(IPath resourcePath, String newCharset) throws CoreException {
        if (resourcePath.segmentCount() == 0) {
            Preferences resourcesPreferences = ResourcesPlugin.getPlugin().getPluginPreferences();
            if (newCharset != null) {
                resourcesPreferences.setValue("encoding", newCharset);
            } else {
                resourcesPreferences.setToDefault("encoding");
            }
            ResourcesPlugin.getPlugin().savePluginPreferences();
            return;
        }
        IResource resource = this.workspace.getRoot().findMember(resourcePath);
        if (resource != null) {
            try {
                org.osgi.service.prefs.Preferences encodingSettings = this.getPreferences(resource.getProject(), true, resource.isDerived(512));
                if (newCharset == null || newCharset.trim().length() == 0) {
                    encodingSettings.remove(CharsetManager.getKeyFor(resourcePath));
                } else {
                    encodingSettings.put(CharsetManager.getKeyFor(resourcePath), newCharset);
                }
                this.flushPreferences(encodingSettings, true);
            }
            catch (BackingStoreException e) {
                IProject project = this.workspace.getRoot().getProject(resourcePath.segment(0));
                String message = Messages.resources_savingEncoding;
                throw new ResourceException(382, project.getFullPath(), message, e);
            }
        }
    }

    public void shutdown(IProgressMonitor monitor) {
        this.workspace.removeResourceChangeListener(this.resourceChangeListener);
        if (this.charsetListener != null) {
            this.charsetListener.shutdown();
        }
    }

    protected void splitEncodingPreferences(IProject project) {
        org.osgi.service.prefs.Preferences projectRegularPrefs = this.getPreferences(project, false, false, false);
        org.osgi.service.prefs.Preferences projectDerivedPrefs = null;
        if (projectRegularPrefs == null) {
            return;
        }
        try {
            boolean prefsChanged = false;
            String[] affectedResources = projectRegularPrefs.keys();
            int i = 0;
            while (i < affectedResources.length) {
                String path = affectedResources[i];
                IResource resource = project.findMember(path);
                if (resource != null && resource.isDerived(512)) {
                    String value = projectRegularPrefs.get(path, null);
                    projectRegularPrefs.remove(path);
                    if (projectDerivedPrefs == null) {
                        projectDerivedPrefs = this.getPreferences(project, true, true, true);
                    }
                    projectDerivedPrefs.put(path, value);
                    prefsChanged = true;
                }
                ++i;
            }
            if (prefsChanged) {
                HashMap<IProject, Boolean> projectsToSave = new HashMap<IProject, Boolean>();
                projectsToSave.put(project, Boolean.TRUE);
                this.job.addChanges(projectsToSave);
            }
        }
        catch (BackingStoreException e) {
            String message = Messages.resources_readingEncoding;
            Policy.log(new ResourceStatus(383, project.getFullPath(), message, e));
        }
    }

    public void startup(IProgressMonitor monitor) {
        this.job = new CharsetManagerJob();
        this.resourceChangeListener = new ResourceChangeListener();
        this.workspace.addResourceChangeListener(this.resourceChangeListener, 1);
        this.charsetListener = new CharsetDeltaJob(this.workspace);
        this.charsetListener.startup();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class CharsetManagerJob
    extends Job {
        private static final int CHARSET_UPDATE_DELAY = 500;
        private List<Map.Entry<IProject, Boolean>> asyncChanges;

        public CharsetManagerJob() {
            super(Messages.resources_charsetUpdating);
            this.asyncChanges = new ArrayList<Map.Entry<IProject, Boolean>>();
            this.setSystem(true);
            this.setPriority(10);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addChanges(Map<IProject, Boolean> newChanges) {
            if (newChanges.isEmpty()) {
                return;
            }
            List<Map.Entry<IProject, Boolean>> list = this.asyncChanges;
            synchronized (list) {
                this.asyncChanges.addAll(newChanges.entrySet());
                this.asyncChanges.notify();
            }
            this.schedule(500L);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public Map.Entry<IProject, Boolean> getNextChange() {
            List<Map.Entry<IProject, Boolean>> list = this.asyncChanges;
            synchronized (list) {
                return this.asyncChanges.isEmpty() ? null : this.asyncChanges.remove(this.asyncChanges.size() - 1);
            }
        }

        /*
         * Exception decompiling
         */
        protected IStatus run(IProgressMonitor monitor) {
            /*
             * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
             * 
             * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 13[WHILELOOP]
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
             *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
             *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:923)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1035)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
             *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
             *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
             *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
             *     at org.benf.cfr.reader.Main.main(Main.java:54)
             */
            throw new IllegalStateException("Decompilation failed");
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean shouldRun() {
            List<Map.Entry<IProject, Boolean>> list = this.asyncChanges;
            synchronized (list) {
                return !this.asyncChanges.isEmpty();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ResourceChangeListener
    implements IResourceChangeListener {
        private boolean moveSettingsIfDerivedChanged(IResourceDelta parent, IProject currentProject, org.osgi.service.prefs.Preferences projectPrefs, String[] affectedResources) {
            int i;
            boolean resourceChanges = false;
            if ((parent.getFlags() & 0x400000) != 0) {
                IPath parentPath = parent.getResource().getProjectRelativePath();
                i = 0;
                while (i < affectedResources.length) {
                    IResource member;
                    Path affectedPath = new Path(affectedResources[i]);
                    if (parentPath.isPrefixOf((IPath)affectedPath) && (member = currentProject.findMember((IPath)affectedPath)) != null) {
                        org.osgi.service.prefs.Preferences targetPrefs = CharsetManager.this.getPreferences(currentProject, true, member.isDerived(512));
                        if (!projectPrefs.absolutePath().equals(targetPrefs.absolutePath())) {
                            String currentValue = projectPrefs.get(affectedResources[i], null);
                            projectPrefs.remove(affectedResources[i]);
                            targetPrefs.put(affectedResources[i], currentValue);
                            resourceChanges = true;
                        }
                    }
                    ++i;
                }
            }
            IResourceDelta[] children = parent.getAffectedChildren();
            i = 0;
            while (i < children.length) {
                resourceChanges = this.moveSettingsIfDerivedChanged(children[i], currentProject, projectPrefs, affectedResources) || resourceChanges;
                ++i;
            }
            return resourceChanges;
        }

        private void processEntryChanges(IResourceDelta projectDelta, Map<IProject, Boolean> projectsToSave) {
            IProject currentProject = (IProject)projectDelta.getResource();
            org.osgi.service.prefs.Preferences projectRegularPrefs = CharsetManager.this.getPreferences(currentProject, false, false, true);
            org.osgi.service.prefs.Preferences projectDerivedPrefs = CharsetManager.this.getPreferences(currentProject, false, true, true);
            HashMap<Boolean, String[]> affectedResourcesMap = new HashMap<Boolean, String[]>();
            try {
                if (projectRegularPrefs == null) {
                    affectedResourcesMap.put(Boolean.FALSE, new String[0]);
                } else {
                    affectedResourcesMap.put(Boolean.FALSE, projectRegularPrefs.keys());
                }
                if (projectDerivedPrefs == null) {
                    affectedResourcesMap.put(Boolean.TRUE, new String[0]);
                } else {
                    affectedResourcesMap.put(Boolean.TRUE, projectDerivedPrefs.keys());
                }
            }
            catch (BackingStoreException e) {
                String message = Messages.resources_readingEncoding;
                Policy.log(new ResourceStatus(383, currentProject.getFullPath(), message, e));
                return;
            }
            for (Boolean isDerived : affectedResourcesMap.keySet()) {
                String[] affectedResources = (String[])affectedResourcesMap.get(isDerived);
                org.osgi.service.prefs.Preferences projectPrefs = isDerived != false ? projectDerivedPrefs : projectRegularPrefs;
                int i = 0;
                while (i < affectedResources.length) {
                    IResourceDelta memberDelta = projectDelta.findMember((IPath)new Path(affectedResources[i]));
                    if (memberDelta != null && memberDelta.getKind() == 2) {
                        boolean shouldDisableCharsetDeltaJobForCurrentProject = false;
                        String currentValue = projectPrefs.get(affectedResources[i], null);
                        projectPrefs.remove(affectedResources[i]);
                        if ((memberDelta.getFlags() & 0x2000) != 0) {
                            IPath movedToPath = memberDelta.getMovedToPath();
                            IResource resource = CharsetManager.this.workspace.getRoot().findMember(movedToPath);
                            if (resource != null) {
                                org.osgi.service.prefs.Preferences encodingSettings = CharsetManager.this.getPreferences(resource.getProject(), true, resource.isDerived(512));
                                if (currentValue == null || currentValue.trim().length() == 0) {
                                    encodingSettings.remove(CharsetManager.getKeyFor(movedToPath));
                                } else {
                                    encodingSettings.put(CharsetManager.getKeyFor(movedToPath), currentValue);
                                }
                                IProject targetProject = CharsetManager.this.workspace.getRoot().getProject(movedToPath.segment(0));
                                if (targetProject.equals(currentProject)) {
                                    shouldDisableCharsetDeltaJobForCurrentProject = true;
                                } else {
                                    projectsToSave.put(targetProject, Boolean.FALSE);
                                }
                            }
                        }
                        projectsToSave.put(currentProject, shouldDisableCharsetDeltaJobForCurrentProject);
                    }
                    ++i;
                }
                if (!this.moveSettingsIfDerivedChanged(projectDelta, currentProject, projectPrefs, affectedResources)) continue;
                projectsToSave.put(currentProject, Boolean.TRUE);
            }
        }

        @Override
        public void resourceChanged(IResourceChangeEvent event) {
            IResourceDelta delta = event.getDelta();
            if (delta == null) {
                return;
            }
            IResourceDelta[] projectDeltas = delta.getAffectedChildren();
            HashMap<IProject, Boolean> projectsToSave = new HashMap<IProject, Boolean>();
            int i = 0;
            while (i < projectDeltas.length) {
                if (projectDeltas[i].getKind() == 4 && (projectDeltas[i].getFlags() & 0x4000) == 0) {
                    this.processEntryChanges(projectDeltas[i], projectsToSave);
                }
                ++i;
            }
            CharsetManager.this.job.addChanges(projectsToSave);
        }
    }
}

