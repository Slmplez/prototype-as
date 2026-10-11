/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.debug.core.commands;

import java.util.LinkedHashSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IRequest;
import org.eclipse.debug.core.commands.IDebugCommandHandler;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IEnabledStateRequest;
import org.eclipse.debug.internal.core.DebugOptions;

public abstract class AbstractDebugCommand
implements IDebugCommandHandler {
    public boolean execute(final IDebugCommandRequest request) {
        Job job = new Job(this.getExecuteTaskName()){

            protected IStatus run(IProgressMonitor monitor) {
                block4: {
                    if (DebugOptions.DEBUG_COMMANDS) {
                        System.out.println("execute: " + AbstractDebugCommand.this);
                    }
                    Object[] elements = request.getElements();
                    Object[] targets = new Object[elements.length];
                    int i = 0;
                    while (i < elements.length) {
                        targets[i] = AbstractDebugCommand.this.getTarget(elements[i]);
                        ++i;
                    }
                    targets = AbstractDebugCommand.this.coalesce(targets);
                    monitor.beginTask(AbstractDebugCommand.this.getExecuteTaskName(), targets.length);
                    try {
                        AbstractDebugCommand.this.doExecute(targets, monitor, request);
                    }
                    catch (CoreException e) {
                        request.setStatus(e.getStatus());
                        if (!DebugOptions.DEBUG_COMMANDS) break block4;
                        System.out.println("\t" + e.getStatus().getMessage());
                    }
                }
                request.done();
                monitor.setCanceled(request.isCanceled());
                monitor.done();
                return Status.OK_STATUS;
            }

            public boolean belongsTo(Object family) {
                Object jobFamily = AbstractDebugCommand.this.getExecuteJobFamily(request);
                if (jobFamily != null) {
                    return jobFamily.equals(family);
                }
                return false;
            }
        };
        job.setSystem(true);
        job.setRule(this.getExecuteSchedulingRule(request));
        job.schedule();
        return this.isRemainEnabled(request);
    }

    protected boolean isRemainEnabled(IDebugCommandRequest request) {
        return false;
    }

    public void canExecute(IEnabledStateRequest request) {
        UpdateJob job = new UpdateJob(request);
        job.schedule();
    }

    protected String getEnabledStateTaskName() {
        return "Check Debug Command";
    }

    protected String getExecuteTaskName() {
        return "Execute Debug Command";
    }

    protected abstract void doExecute(Object[] var1, IProgressMonitor var2, IRequest var3) throws CoreException;

    protected abstract boolean isExecutable(Object[] var1, IProgressMonitor var2, IEnabledStateRequest var3) throws CoreException;

    protected abstract Object getTarget(Object var1);

    protected Object getAdapter(Object element, Class type) {
        return DebugPlugin.getAdapter(element, type);
    }

    protected ISchedulingRule getEnabledStateSchedulingRule(IDebugCommandRequest request) {
        return new SerialPerObjectRule(request.getElements()[0]);
    }

    protected ISchedulingRule getExecuteSchedulingRule(IDebugCommandRequest request) {
        return null;
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        return null;
    }

    protected Object getExecuteJobFamily(IDebugCommandRequest request) {
        return null;
    }

    private Object[] coalesce(Object[] objects) {
        if (objects.length == 1) {
            return objects;
        }
        LinkedHashSet<Object> set = new LinkedHashSet<Object>(objects.length);
        int i = 0;
        while (i < objects.length) {
            set.add(objects[i]);
            ++i;
        }
        return set.toArray();
    }

    private class SerialPerObjectRule
    implements ISchedulingRule {
        private Object fObject = null;

        public SerialPerObjectRule(Object lock) {
            this.fObject = lock;
        }

        public boolean contains(ISchedulingRule rule) {
            return rule == this;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            if (rule instanceof SerialPerObjectRule) {
                SerialPerObjectRule vup = (SerialPerObjectRule)rule;
                return this.fObject == vup.fObject;
            }
            return false;
        }
    }

    private class UpdateJob
    extends Job
    implements IJobChangeListener {
        private IEnabledStateRequest request;
        private boolean run = false;

        UpdateJob(IEnabledStateRequest stateRequest) {
            super(AbstractDebugCommand.this.getEnabledStateTaskName());
            this.request = stateRequest;
            this.setSystem(true);
            this.setRule(AbstractDebugCommand.this.getEnabledStateSchedulingRule(this.request));
            UpdateJob.getJobManager().addJobChangeListener((IJobChangeListener)this);
        }

        protected IStatus run(IProgressMonitor monitor) {
            block12: {
                this.run = true;
                if (DebugOptions.DEBUG_COMMANDS) {
                    System.out.print("can execute command: " + AbstractDebugCommand.this);
                }
                if (monitor.isCanceled()) {
                    if (DebugOptions.DEBUG_COMMANDS) {
                        System.out.println(" >> *CANCELED* <<");
                    }
                    this.request.cancel();
                }
                Object[] elements = this.request.getElements();
                Object[] targets = new Object[elements.length];
                if (!this.request.isCanceled()) {
                    int i = 0;
                    while (i < elements.length) {
                        targets[i] = AbstractDebugCommand.this.getTarget(elements[i]);
                        if (targets[i] == null) {
                            this.request.setEnabled(false);
                            this.request.cancel();
                            if (DebugOptions.DEBUG_COMMANDS) {
                                System.out.println(" >> false (no adapter)");
                            }
                        }
                        ++i;
                    }
                    if (monitor.isCanceled()) {
                        this.request.cancel();
                    }
                }
                if (!this.request.isCanceled()) {
                    targets = AbstractDebugCommand.this.coalesce(targets);
                    monitor.beginTask(AbstractDebugCommand.this.getEnabledStateTaskName(), targets.length);
                    try {
                        boolean executable = AbstractDebugCommand.this.isExecutable(targets, monitor, this.request);
                        if (DebugOptions.DEBUG_COMMANDS) {
                            System.out.println(" >> " + executable);
                        }
                        this.request.setEnabled(executable);
                    }
                    catch (CoreException e) {
                        this.request.setStatus(e.getStatus());
                        this.request.setEnabled(false);
                        if (!DebugOptions.DEBUG_COMMANDS) break block12;
                        System.out.println(" >> ABORTED");
                        System.out.println("\t" + e.getStatus().getMessage());
                    }
                }
            }
            monitor.setCanceled(this.request.isCanceled());
            this.request.done();
            monitor.done();
            return Status.OK_STATUS;
        }

        public boolean belongsTo(Object family) {
            Object myFamily = AbstractDebugCommand.this.getEnabledStateJobFamily(this.request);
            if (myFamily != null) {
                return myFamily.equals(family);
            }
            return false;
        }

        public void aboutToRun(IJobChangeEvent event) {
        }

        public void awake(IJobChangeEvent event) {
        }

        public void done(IJobChangeEvent event) {
            if (event.getJob() == this) {
                if (!this.run) {
                    this.request.cancel();
                    this.request.done();
                    if (DebugOptions.DEBUG_COMMANDS) {
                        System.out.println(" >> *CANCELED* <<" + AbstractDebugCommand.this);
                    }
                }
                UpdateJob.getJobManager().removeJobChangeListener((IJobChangeListener)this);
            }
        }

        public void running(IJobChangeEvent event) {
        }

        public void scheduled(IJobChangeEvent event) {
        }

        public void sleeping(IJobChangeEvent event) {
        }
    }
}

