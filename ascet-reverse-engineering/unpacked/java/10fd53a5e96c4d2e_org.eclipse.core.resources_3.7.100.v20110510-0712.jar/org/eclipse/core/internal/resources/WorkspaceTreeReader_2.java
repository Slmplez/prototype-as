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
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.events.BuilderPersistentInfo;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.SavedState;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceTreeReader_1;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WorkspaceTreeReader_2
extends WorkspaceTreeReader_1 {
    private List<BuilderPersistentInfo> builderInfos;

    public WorkspaceTreeReader_2(Workspace workspace) {
        super(workspace);
    }

    @Override
    protected int getVersion() {
        return 67305986;
    }

    @Override
    protected void readBuildersPersistentInfo(IProject project, DataInputStream input, List<BuilderPersistentInfo> builders, IProgressMonitor monitor) throws IOException {
        monitor = Policy.monitorFor(monitor);
        try {
            int builderCount = input.readInt();
            int i = 0;
            while (i < builderCount) {
                BuilderPersistentInfo info = this.readBuilderInfo(project, input, i);
                int n = input.readInt();
                IProject[] projects = new IProject[n];
                int j = 0;
                while (j < n) {
                    projects[j] = this.workspace.getRoot().getProject(input.readUTF());
                    ++j;
                }
                info.setInterestingProjects(projects);
                builders.add(info);
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void readTree(DataInputStream input, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            try {
                String message = Messages.resources_reading;
                monitor.beginTask(message, 100);
                this.builderInfos = new ArrayList<BuilderPersistentInfo>(20);
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
                if (input.available() > 0) {
                    buildersToBeLinked.clear();
                    this.readBuildersPersistentInfo(null, input, buildersToBeLinked, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                    this.linkBuildersToTrees(buildersToBeLinked, trees, 0, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                    Iterator<BuilderPersistentInfo> it = this.builderInfos.iterator();
                    while (it.hasNext()) {
                        it.next().setConfigName(input.readUTF());
                    }
                }
                this.setBuilderInfos(this.builderInfos);
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

    @Override
    public void readTree(IProject project, DataInputStream input, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            try {
                String message = Messages.resources_reading;
                monitor.beginTask(message, 10);
                this.builderInfos = new ArrayList<BuilderPersistentInfo>(20);
                ArrayList<BuilderPersistentInfo> buildersToBeLinked = new ArrayList<BuilderPersistentInfo>(20);
                this.readBuildersPersistentInfo(project, input, buildersToBeLinked, Policy.subMonitorFor(monitor, 1));
                ElementTree[] trees = this.readTrees(project.getFullPath(), input, Policy.subMonitorFor(monitor, 8));
                this.linkBuildersToTrees(buildersToBeLinked, trees, 0, Policy.subMonitorFor(monitor, 1));
                if (input.available() > 0) {
                    ArrayList<BuilderPersistentInfo> infos = new ArrayList<BuilderPersistentInfo>(5);
                    this.readBuildersPersistentInfo(project, input, infos, Policy.subMonitorFor(monitor, 1));
                    this.linkBuildersToTrees(infos, trees, 0, Policy.subMonitorFor(monitor, 1));
                    Iterator<BuilderPersistentInfo> it = this.builderInfos.iterator();
                    while (it.hasNext()) {
                        it.next().setConfigName(input.readUTF());
                    }
                }
                this.setBuilderInfos(this.builderInfos);
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

    @Override
    protected void linkBuildersToTrees(List<BuilderPersistentInfo> buildersToBeLinked, ElementTree[] trees, int index, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            int i = 0;
            while (i < buildersToBeLinked.size()) {
                BuilderPersistentInfo info = buildersToBeLinked.get(i);
                info.setLastBuildTree(trees[index++]);
                this.builderInfos.add(info);
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    private void setBuilderInfos(List<BuilderPersistentInfo> infos) {
        HashMap groupedInfos = new HashMap();
        for (BuilderPersistentInfo info : infos) {
            if (!groupedInfos.containsKey(info.getProjectName())) {
                groupedInfos.put(info.getProjectName(), new ArrayList());
            }
            ((List)groupedInfos.get(info.getProjectName())).add(info);
        }
        for (Map.Entry entry : groupedInfos.entrySet()) {
            IProject proj = this.workspace.getRoot().getProject((String)entry.getKey());
            this.workspace.getBuildManager().setBuildersPersistentInfo(proj, (List)entry.getValue());
        }
    }
}

