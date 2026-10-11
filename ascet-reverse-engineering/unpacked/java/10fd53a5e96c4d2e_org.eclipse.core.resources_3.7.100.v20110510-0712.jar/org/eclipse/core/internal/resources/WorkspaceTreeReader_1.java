/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.eclipse.core.internal.events.BuilderPersistentInfo;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.SaveManager;
import org.eclipse.core.internal.resources.SavedState;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceTreeReader;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeReader;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WorkspaceTreeReader_1
extends WorkspaceTreeReader {
    protected Workspace workspace;

    public WorkspaceTreeReader_1(Workspace workspace) {
        this.workspace = workspace;
    }

    protected int getVersion() {
        return 67305985;
    }

    protected void linkBuildersToTrees(List<BuilderPersistentInfo> buildersToBeLinked, ElementTree[] trees, int index, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            ArrayList<BuilderPersistentInfo> infos = null;
            String projectName = null;
            int i = 0;
            while (i < buildersToBeLinked.size()) {
                BuilderPersistentInfo info = buildersToBeLinked.get(i);
                if (!info.getProjectName().equals(projectName)) {
                    if (infos != null) {
                        IProject project = this.workspace.getRoot().getProject(projectName);
                        this.workspace.getBuildManager().setBuildersPersistentInfo(project, infos);
                    }
                    projectName = info.getProjectName();
                    infos = new ArrayList<BuilderPersistentInfo>(5);
                }
                info.setLastBuildTree(trees[index++]);
                infos.add(info);
                ++i;
            }
            if (infos != null) {
                IProject project = this.workspace.getRoot().getProject(projectName);
                this.workspace.getBuildManager().setBuildersPersistentInfo(project, infos);
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void linkPluginsSavedStateToTrees(List<SavedState> states, ElementTree[] trees, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            int i = 0;
            while (i < states.size()) {
                SavedState state = states.get(i);
                SaveManager saveManager = this.workspace.getSaveManager();
                if (!saveManager.isOldPluginTree(state.pluginId)) {
                    state.oldTree = trees[i];
                } else {
                    saveManager.clearDeltaExpiration(state.pluginId);
                }
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    protected BuilderPersistentInfo readBuilderInfo(IProject project, DataInputStream input, int index) throws IOException {
        String projectName = input.readUTF();
        if (project != null) {
            projectName = project.getName();
        }
        String builderName = input.readUTF();
        return new BuilderPersistentInfo(projectName, builderName, index);
    }

    protected void readBuildersPersistentInfo(IProject project, DataInputStream input, List<BuilderPersistentInfo> builders, IProgressMonitor monitor) throws IOException {
        monitor = Policy.monitorFor(monitor);
        try {
            int builderCount = input.readInt();
            int i = 0;
            while (i < builderCount) {
                builders.add(this.readBuilderInfo(project, input, i));
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void readPluginsSavedStates(DataInputStream input, HashMap<String, SavedState> savedStates, List<SavedState> plugins, IProgressMonitor monitor) throws IOException, CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            int stateCount = input.readInt();
            int i = 0;
            while (i < stateCount) {
                String pluginId = input.readUTF();
                SavedState state = new SavedState(this.workspace, pluginId, null, null);
                savedStates.put(pluginId, state);
                plugins.add(state);
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public ElementTree readSnapshotTree(DataInputStream input, ElementTree complete, IProgressMonitor monitor) throws CoreException {
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

    @Override
    public void readTree(DataInputStream input, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            try {
                String message = Messages.resources_reading;
                monitor.beginTask(message, 100);
                this.readWorkspaceFields(input, Policy.subMonitorFor(monitor, Policy.opWork * 20 / 100));
                HashMap<String, SavedState> savedStates = new HashMap<String, SavedState>(20);
                ArrayList<SavedState> pluginsToBeLinked = new ArrayList<SavedState>(20);
                this.readPluginsSavedStates(input, savedStates, pluginsToBeLinked, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                this.workspace.getSaveManager().setPluginsSavedState(savedStates);
                ArrayList<BuilderPersistentInfo> buildersToBeLinked = new ArrayList<BuilderPersistentInfo>(20);
                this.readBuildersPersistentInfo(null, input, buildersToBeLinked, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                ElementTree[] trees = this.readTrees((IPath)Path.ROOT, input, Policy.subMonitorFor(monitor, Policy.opWork * 40 / 100));
                this.linkPluginsSavedStateToTrees(pluginsToBeLinked, trees, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                this.linkBuildersToTrees(buildersToBeLinked, trees, pluginsToBeLinked.size(), Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
            }
            catch (IOException e) {
                String message = Messages.resources_readWorkspaceTree;
                throw new ResourceException(567, null, message, e);
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void readTree(IProject project, DataInputStream input, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            try {
                String message = Messages.resources_reading;
                monitor.beginTask(message, 10);
                int numBuilders = input.readInt();
                String[] builderNames = new String[numBuilders];
                int i = 0;
                while (i < numBuilders) {
                    String builderName;
                    builderNames[i] = builderName = input.readUTF();
                    ++i;
                }
                monitor.worked(1);
                ElementTree[] trees = this.readTrees(project.getFullPath(), input, Policy.subMonitorFor(monitor, 8));
                if (numBuilders > 0) {
                    ArrayList<BuilderPersistentInfo> infos = new ArrayList<BuilderPersistentInfo>(trees.length * 2 + 1);
                    int i2 = 0;
                    while (i2 < numBuilders) {
                        BuilderPersistentInfo info = new BuilderPersistentInfo(project.getName(), builderNames[i2], -1);
                        info.setLastBuildTree(trees[i2]);
                        infos.add(info);
                        ++i2;
                    }
                    this.workspace.getBuildManager().setBuildersPersistentInfo(project, infos);
                }
                monitor.worked(1);
            }
            catch (IOException e) {
                String message = Messages.resources_readProjectTree;
                throw new ResourceException(567, null, message, e);
            }
        }
        finally {
            monitor.done();
        }
    }

    protected ElementTree[] readTrees(IPath root, DataInputStream input, IProgressMonitor monitor) throws IOException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = Messages.resources_reading;
            monitor.beginTask(message, 4);
            ElementTreeReader treeReader = new ElementTreeReader(this.workspace.getSaveManager());
            String newProjectName = "";
            if (this.renameProjectNode) {
                newProjectName = root.segment(0);
            }
            ElementTree[] trees = treeReader.readDeltaChain(input, newProjectName);
            monitor.worked(3);
            if (root.isRoot()) {
                ElementTree newTree = trees[trees.length - 1];
                newTree.setTreeData(this.workspace.tree.getTreeData());
                this.workspace.tree = newTree;
            } else {
                this.workspace.linkTrees(root, trees);
            }
            monitor.worked(1);
            ElementTree[] elementTreeArray = trees;
            return elementTreeArray;
        }
        finally {
            monitor.done();
        }
    }

    protected void readWorkspaceFields(DataInputStream input, IProgressMonitor monitor) throws IOException, CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            this.workspace.nextNodeId = input.readLong();
            input.readLong();
            this.workspace.nextMarkerId = input.readLong();
            ((Synchronizer)this.workspace.getSynchronizer()).readPartners(input);
        }
        finally {
            monitor.done();
        }
    }
}

