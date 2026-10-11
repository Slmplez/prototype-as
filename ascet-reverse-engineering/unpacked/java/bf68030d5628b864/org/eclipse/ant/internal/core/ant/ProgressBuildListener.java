/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildEvent
 *  org.apache.tools.ant.BuildListener
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.Target
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.taskdefs.Ant
 *  org.apache.tools.ant.taskdefs.CallTarget
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.ant.internal.core.ant;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.tools.ant.BuildEvent;
import org.apache.tools.ant.BuildListener;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.Target;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.taskdefs.Ant;
import org.apache.tools.ant.taskdefs.CallTarget;
import org.eclipse.ant.internal.core.ant.InternalAntMessages;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubProgressMonitor;

public class ProgressBuildListener
implements BuildListener {
    protected Map projects = new HashMap();
    protected Project mainProject;
    protected Project parentProject;
    private Thread currentTaskThread;

    public ProgressBuildListener(Project project, List targetNames, IProgressMonitor monitor) {
        this.mainProject = project;
        ProjectMonitors monitors = new ProjectMonitors();
        IProgressMonitor localmonitor = monitor;
        if (localmonitor == null) {
            localmonitor = new NullProgressMonitor();
        }
        monitors.setMainMonitor(localmonitor);
        this.projects.put(this.mainProject, monitors);
        ArrayList<Target> targets = new ArrayList<Target>(targetNames.size());
        int i = 0;
        while (i < targetNames.size()) {
            String targetName = (String)targetNames.get(i);
            Target target = (Target)this.mainProject.getTargets().get(targetName);
            if (target != null) {
                targets.add(target);
            }
            ++i;
        }
        int work = this.computeWork(targets);
        monitors.getMainMonitor().beginTask("", work);
    }

    public void buildStarted(BuildEvent event) {
        this.checkCanceled();
    }

    protected int computeWork(List targets) {
        int result = 0;
        int i = 0;
        while (i < targets.size()) {
            result += this.countTarget((Target)targets.get(i), new ArrayList());
            ++i;
        }
        return result;
    }

    protected int countTarget(Target target, List alreadySeen) {
        int result = 1;
        Project project = target.getProject();
        Hashtable targets = project.getTargets();
        Enumeration dependencies = target.getDependencies();
        while (dependencies.hasMoreElements()) {
            String targetName = (String)dependencies.nextElement();
            if (alreadySeen.contains(targetName)) {
                return result;
            }
            alreadySeen.add(targetName);
            Target dependency = (Target)targets.get(targetName);
            if (dependency == null) continue;
            result += this.countTarget(dependency, alreadySeen);
        }
        Task[] tasks = target.getTasks();
        int i = 0;
        while (i < tasks.length) {
            if (tasks[i] instanceof CallTarget) {
                result += targets.size() - 1;
            }
            ++i;
        }
        return result;
    }

    public void buildFinished(BuildEvent event) {
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(this.mainProject);
        monitors.getMainMonitor().done();
        Set keys = this.projects.keySet();
        Iterator itr = keys.iterator();
        while (itr.hasNext()) {
            Project project = (Project)itr.next();
            project.removeBuildListener((BuildListener)this);
            project.getReferences().remove("eclipse.progress.monitor");
        }
    }

    public void targetStarted(BuildEvent event) {
        this.checkCanceled();
        Project currentProject = event.getProject();
        if (currentProject == null) {
            return;
        }
        Target target = event.getTarget();
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(currentProject);
        if (monitors == null) {
            monitors = this.createMonitors(currentProject, target);
        }
        monitors.setTargetMonitor(this.subMonitorFor(monitors.getMainMonitor(), 1));
        int work = target != null ? target.getTasks().length : 100;
        monitors.getTargetMonitor().beginTask("", work);
    }

    protected ProjectMonitors createMonitors(Project currentProject, Target target) {
        ProjectMonitors monitors = new ProjectMonitors();
        monitors.setMainTarget(target);
        ArrayList<Target> targets = new ArrayList<Target>(1);
        targets.add(target);
        int work = this.computeWork(targets);
        ProjectMonitors parentMonitors = null;
        if (this.parentProject == null) {
            parentMonitors = (ProjectMonitors)this.projects.get(this.mainProject);
            monitors.setMainMonitor(this.subMonitorFor(parentMonitors.getMainMonitor(), 1));
        } else {
            parentMonitors = (ProjectMonitors)this.projects.get(this.parentProject);
            this.parentProject = null;
            monitors.setMainMonitor(this.subMonitorFor(parentMonitors.getTaskMonitor(), 1));
        }
        monitors.getMainMonitor().beginTask("", work);
        this.projects.put(currentProject, monitors);
        return monitors;
    }

    public void targetFinished(BuildEvent event) {
        this.checkCanceled();
        Project currentProject = event.getProject();
        if (currentProject == null) {
            return;
        }
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(currentProject);
        if (monitors == null) {
            return;
        }
        monitors.getTargetMonitor().done();
        if (currentProject != this.mainProject && monitors.getMainTarget() == event.getTarget()) {
            monitors.getMainMonitor().done();
            this.projects.remove(currentProject);
        }
    }

    public void taskStarted(BuildEvent event) {
        this.checkCanceled();
        Project currentProject = event.getProject();
        if (currentProject == null) {
            return;
        }
        currentProject.getReferences().remove("eclipse.progress.monitor");
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(currentProject);
        if (monitors == null) {
            return;
        }
        Task task = event.getTask();
        if (task == null) {
            return;
        }
        this.currentTaskThread = Thread.currentThread();
        monitors.setTaskMonitor(this.subMonitorFor(monitors.getTargetMonitor(), 1));
        monitors.getTaskMonitor().beginTask("", 1);
        if (task instanceof Ant) {
            this.parentProject = currentProject;
        } else {
            currentProject.addReference("eclipse.progress.monitor", (Object)monitors.getTaskMonitor());
        }
    }

    public void taskFinished(BuildEvent event) {
        this.checkCanceled();
        Project project = event.getProject();
        if (project == null) {
            return;
        }
        project.getReferences().remove("eclipse.progress.monitor");
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(project);
        if (monitors == null) {
            return;
        }
        monitors.getTaskMonitor().done();
        this.currentTaskThread = null;
    }

    public void messageLogged(BuildEvent event) {
        this.checkCanceled();
    }

    protected void checkCanceled() {
        if (this.currentTaskThread != null && this.currentTaskThread != Thread.currentThread()) {
            return;
        }
        ProjectMonitors monitors = (ProjectMonitors)this.projects.get(this.mainProject);
        if (monitors.getMainMonitor().isCanceled()) {
            this.currentTaskThread = null;
            throw new OperationCanceledException(InternalAntMessages.ProgressBuildListener_Build_cancelled);
        }
    }

    protected IProgressMonitor subMonitorFor(IProgressMonitor monitor, int ticks) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        if (monitor instanceof NullProgressMonitor) {
            return monitor;
        }
        return new SubProgressMonitor(monitor, ticks);
    }

    protected class ProjectMonitors {
        private Target mainTarget;
        private IProgressMonitor mainMonitor;
        private IProgressMonitor targetMonitor;
        private IProgressMonitor taskMonitor;

        protected ProjectMonitors() {
        }

        protected IProgressMonitor getMainMonitor() {
            return this.mainMonitor;
        }

        protected Target getMainTarget() {
            return this.mainTarget;
        }

        protected IProgressMonitor getTargetMonitor() {
            return this.targetMonitor;
        }

        protected IProgressMonitor getTaskMonitor() {
            return this.taskMonitor;
        }

        protected void setMainMonitor(IProgressMonitor mainMonitor) {
            this.mainMonitor = mainMonitor;
        }

        protected void setMainTarget(Target mainTarget) {
            this.mainTarget = mainTarget;
        }

        protected void setTargetMonitor(IProgressMonitor targetMonitor) {
            this.targetMonitor = targetMonitor;
        }

        protected void setTaskMonitor(IProgressMonitor taskMonitor) {
            this.taskMonitor = taskMonitor;
        }
    }
}

