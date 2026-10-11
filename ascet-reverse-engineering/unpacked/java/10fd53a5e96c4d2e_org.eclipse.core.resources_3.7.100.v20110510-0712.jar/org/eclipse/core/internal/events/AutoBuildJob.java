/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.osgi.framework.Bundle;

class AutoBuildJob
extends Job
implements Preferences.IPropertyChangeListener {
    private boolean avoidBuild = false;
    private boolean buildNeeded = false;
    private boolean forceBuild = false;
    private boolean interrupted = false;
    private boolean isAutoBuilding = false;
    private long lastBuild = 0L;
    private Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();
    private final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");
    private Workspace workspace;

    AutoBuildJob(Workspace workspace) {
        super(Messages.events_building_0);
        this.setRule(workspace.getRoot());
        this.setPriority(40);
        this.isAutoBuilding = workspace.isAutoBuilding();
        this.workspace = workspace;
        this.preferences.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
    }

    synchronized void avoidBuild() {
        this.avoidBuild = true;
    }

    public boolean belongsTo(Object family) {
        return family == ResourcesPlugin.FAMILY_AUTO_BUILD;
    }

    synchronized void build(boolean needsBuild) {
        this.buildNeeded |= needsBuild;
        long delay = this.computeScheduleDelay();
        int state = this.getState();
        if (Policy.DEBUG_BUILD_NEEDED) {
            Policy.debug("Auto-Build requested, needsBuild: " + needsBuild + " state: " + state + " delay: " + delay);
        }
        if (needsBuild && Policy.DEBUG_BUILD_NEEDED_STACK && state != 4) {
            new RuntimeException("Build Needed").printStackTrace();
        }
        if (state != 4) {
            this.setInterrupted(false);
        }
        switch (state) {
            case 1: {
                this.wakeUp(delay);
                break;
            }
            case 0: {
                try {
                    this.setSystem(!this.isAutoBuilding);
                }
                catch (IllegalStateException illegalStateException) {}
                this.schedule(delay);
            }
        }
    }

    private long computeScheduleDelay() {
        long maxDelay = Math.min(1000L, 1000L + this.lastBuild - System.currentTimeMillis());
        return Math.max(100L, maxDelay);
    }

    private synchronized IStatus canceled() {
        this.buildNeeded = true;
        if (this.interrupted) {
            if (Policy.DEBUG_BUILD_INTERRUPT) {
                System.out.println("Scheduling rebuild due to interruption");
            }
            this.setInterrupted(false);
            this.schedule(this.computeScheduleDelay());
        }
        return Status.CANCEL_STATUS;
    }

    private void doBuild(IProgressMonitor monitor) throws CoreException, OperationCanceledException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", Policy.opWork);
            ISchedulingRule rule = this.workspace.getRuleFactory().buildRule();
            try {
                this.workspace.prepareOperation(rule, monitor);
                this.workspace.beginOperation(true);
                this.workspace.broadcastBuildEvent(this.workspace, 8, 9);
                IStatus result = Status.OK_STATUS;
                try {
                    if (this.shouldBuild()) {
                        result = this.workspace.getBuildManager().build(this.workspace.getBuildOrder(), ICoreConstants.EMPTY_BUILD_CONFIG_ARRAY, 9, Policy.subMonitorFor(monitor, Policy.opWork));
                    }
                }
                finally {
                    this.workspace.broadcastBuildEvent(this.workspace, 16, 9);
                }
                if (!result.isOK()) {
                    throw new ResourceException(result);
                }
                this.buildNeeded = false;
            }
            finally {
                if (this.workspace.getElementTree().isImmutable()) {
                    this.workspace.newWorkingTree();
                }
                this.workspace.endOperation(rule, false, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    public void forceBuild() {
        this.forceBuild = true;
    }

    synchronized void interrupt() {
        if (this.interrupted) {
            return;
        }
        switch (this.getState()) {
            case 0: {
                return;
            }
            case 2: {
                this.setInterrupted(!this.sleep());
                break;
            }
            case 4: {
                if (Job.getJobManager().currentJob() == this) {
                    return;
                }
                this.setInterrupted(true);
                if (!this.interrupted || !Policy.DEBUG_BUILD_INTERRUPT) break;
                System.out.println("Autobuild was interrupted:");
                new Exception().fillInStackTrace().printStackTrace();
            }
        }
        if (this.interrupted) {
            this.avoidBuild = false;
        }
    }

    synchronized boolean isInterrupted() {
        if (this.interrupted) {
            return true;
        }
        if (this.isBlocking()) {
            this.setInterrupted(true);
        }
        return this.interrupted;
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        if (!event.getProperty().equals("description.autobuilding")) {
            return;
        }
        boolean wasAutoBuilding = this.isAutoBuilding;
        this.isAutoBuilding = this.preferences.getBoolean("description.autobuilding");
        if (!this.forceBuild && !wasAutoBuilding && this.isAutoBuilding) {
            this.forceBuild = true;
            this.build(false);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IStatus run(IProgressMonitor monitor) {
        AutoBuildJob autoBuildJob = this;
        synchronized (autoBuildJob) {
            if (monitor.isCanceled()) {
                return this.canceled();
            }
        }
        if (this.systemBundle.getState() == 16) {
            return Status.OK_STATUS;
        }
        try {
            this.doBuild(monitor);
            this.lastBuild = System.currentTimeMillis();
            this.setInterrupted(false);
            return Status.OK_STATUS;
        }
        catch (OperationCanceledException operationCanceledException) {
            return this.canceled();
        }
        catch (CoreException sig) {
            return sig.getStatus();
        }
    }

    private synchronized void setInterrupted(boolean value) {
        this.interrupted = value;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private synchronized boolean shouldBuild() {
        try {
            if (!this.workspace.isAutoBuilding()) {
                return false;
            }
            if (this.forceBuild) {
                return true;
            }
            if (this.avoidBuild) {
                return false;
            }
            boolean bl = this.buildNeeded;
            return bl;
        }
        finally {
            this.buildNeeded = false;
            this.avoidBuild = false;
            this.forceBuild = false;
        }
    }
}

