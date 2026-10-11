/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;

public class BatchingLock {
    private static final boolean DEBUG = Policy.DEBUG_THREADING;
    static final ISchedulingRule NULL_SCHEDULING_RULE = new ISchedulingRule(){

        public boolean contains(ISchedulingRule rule) {
            return false;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            return false;
        }
    };
    private Map infos = new HashMap();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected ThreadInfo getThreadInfo() {
        Thread thisThread = Thread.currentThread();
        Map map = this.infos;
        synchronized (map) {
            ThreadInfo info = (ThreadInfo)this.infos.get(thisThread);
            return info;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ThreadInfo getThreadInfo(IResource resource) {
        Map map = this.infos;
        synchronized (map) {
            Iterator iter = this.infos.values().iterator();
            while (iter.hasNext()) {
                ThreadInfo info = (ThreadInfo)iter.next();
                if (!info.ruleContains(resource)) continue;
                return info;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ISchedulingRule acquire(ISchedulingRule resourceRule, IFlushOperation operation, IProgressMonitor monitor) {
        ThreadInfo info = this.getThreadInfo();
        boolean added = false;
        Map map = this.infos;
        synchronized (map) {
            if (info == null) {
                info = this.createThreadInfo(operation);
                Thread thisThread = Thread.currentThread();
                this.infos.put(thisThread, info);
                added = true;
                if (DEBUG) {
                    System.out.println("[" + thisThread.getName() + "] acquired batching lock on " + resourceRule);
                }
            }
        }
        try {
            return info.pushRule(resourceRule, monitor);
        }
        catch (OperationCanceledException e) {
            if (added) {
                Map map2 = this.infos;
                synchronized (map2) {
                    this.infos.remove(Thread.currentThread());
                }
            }
            throw e;
        }
    }

    protected ThreadInfo createThreadInfo(IFlushOperation operation) {
        return new ThreadInfo(operation);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void release(ISchedulingRule rule, IProgressMonitor monitor) throws TeamException {
        ThreadInfo info = this.getThreadInfo();
        Assert.isNotNull((Object)info, (String)"Unmatched acquire/release.");
        Assert.isTrue((boolean)info.isNested(), (String)"Unmatched acquire/release.");
        info.popRule(rule, monitor);
        Map map = this.infos;
        synchronized (map) {
            if (!info.isNested()) {
                Thread thisThread = Thread.currentThread();
                if (DEBUG) {
                    System.out.println("[" + thisThread.getName() + "] released batching lock");
                }
                this.infos.remove(thisThread);
            }
        }
    }

    public void resourceChanged(IResource resource) {
        ThreadInfo info = this.getThreadInfo();
        Assert.isNotNull((Object)info, (String)"Folder changed outside of resource lock");
        info.addChangedResource(resource);
    }

    public void flush(IProgressMonitor monitor) throws TeamException {
        ThreadInfo info = this.getThreadInfo();
        Assert.isNotNull((Object)info, (String)"Flush requested outside of resource lock");
        info.flush(monitor);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isWithinActiveOperationScope(IResource resource) {
        Map map = this.infos;
        synchronized (map) {
            return this.getThreadInfo(resource) != null;
        }
    }

    public static interface IFlushOperation {
        public void flush(ThreadInfo var1, IProgressMonitor var2) throws TeamException;
    }

    public class ThreadInfo {
        private Set changedResources = new HashSet();
        private IFlushOperation operation;
        private List rules = new ArrayList();

        public ThreadInfo(IFlushOperation operation) {
            this.operation = operation;
        }

        public ISchedulingRule pushRule(ISchedulingRule resource, IProgressMonitor monitor) {
            ISchedulingRule rule = this.getRuleForResoure(resource);
            if (rule != NULL_SCHEDULING_RULE) {
                boolean success = false;
                try {
                    Job.getJobManager().beginRule(rule, monitor);
                    this.addRule(rule);
                    success = true;
                }
                finally {
                    if (!success) {
                        try {
                            Job.getJobManager().endRule(rule);
                        }
                        catch (RuntimeException e) {
                            TeamPlugin.log(4, "Failed to end scheduling rule", e);
                        }
                    }
                }
            }
            this.addRule(rule);
            return rule;
        }

        public void popRule(ISchedulingRule rule, IProgressMonitor monitor) throws TeamException {
            try {
                if (this.isFlushRequired()) {
                    this.flush(monitor);
                }
            }
            finally {
                ISchedulingRule stackedRule = this.removeRule();
                if (rule == null) {
                    rule = NULL_SCHEDULING_RULE;
                }
                Assert.isTrue((boolean)stackedRule.equals(rule), (String)("end for resource '" + rule + "' does not match stacked rule '" + stackedRule + "'"));
                if (rule != NULL_SCHEDULING_RULE) {
                    Job.getJobManager().endRule(rule);
                }
            }
        }

        private ISchedulingRule getRuleForResoure(ISchedulingRule resourceRule) {
            Object rule;
            if (resourceRule instanceof IResource) {
                IResource resource = (IResource)resourceRule;
                rule = resource.getType() == 8 ? NULL_SCHEDULING_RULE : (resource.getType() == 4 ? resource : resource.getParent());
            } else if (resourceRule instanceof MultiRule) {
                ISchedulingRule[] rules = ((MultiRule)resourceRule).getChildren();
                HashSet<IProject> projects = new HashSet<IProject>();
                int i = 0;
                while (i < rules.length) {
                    ISchedulingRule childRule = rules[i];
                    if (childRule instanceof IResource) {
                        projects.add(((IResource)childRule).getProject());
                    }
                    ++i;
                }
                rule = projects.isEmpty() ? NULL_SCHEDULING_RULE : (projects.size() == 1 ? (ISchedulingRule)projects.iterator().next() : new MultiRule(projects.toArray(new ISchedulingRule[projects.size()])));
            } else {
                rule = NULL_SCHEDULING_RULE;
            }
            return rule;
        }

        public boolean isNested() {
            return !this.rules.isEmpty();
        }

        public void addChangedResource(IResource resource) {
            this.changedResources.add(resource);
        }

        public boolean isEmpty() {
            return this.changedResources.isEmpty();
        }

        public IResource[] getChangedResources() {
            return this.changedResources.toArray(new IResource[this.changedResources.size()]);
        }

        public void flush(IProgressMonitor monitor) throws TeamException {
            try {
                try {
                    this.operation.flush(this, monitor);
                }
                catch (OutOfMemoryError e) {
                    throw e;
                }
                catch (Error e) {
                    this.handleAbortedFlush(e);
                    throw e;
                }
                catch (RuntimeException e) {
                    this.handleAbortedFlush(e);
                    throw e;
                }
            }
            finally {
                this.changedResources.clear();
            }
        }

        private boolean isFlushRequired() {
            return this.rules.size() == 1 || this.remainingRulesAreNull();
        }

        private boolean remainingRulesAreNull() {
            int i = 0;
            while (i < this.rules.size() - 1) {
                ISchedulingRule rule = (ISchedulingRule)this.rules.get(i);
                if (rule != NULL_SCHEDULING_RULE) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        private void handleAbortedFlush(Throwable t) {
            TeamPlugin.log(4, Messages.BatchingLock_11, t);
        }

        private void addRule(ISchedulingRule rule) {
            this.rules.add(rule);
        }

        private ISchedulingRule removeRule() {
            return (ISchedulingRule)this.rules.remove(this.rules.size() - 1);
        }

        public boolean ruleContains(IResource resource) {
            Iterator iter = this.rules.iterator();
            while (iter.hasNext()) {
                ISchedulingRule rule = (ISchedulingRule)iter.next();
                if (rule == NULL_SCHEDULING_RULE || !rule.contains((ISchedulingRule)resource)) continue;
                return true;
            }
            return false;
        }
    }
}

