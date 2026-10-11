/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.utils;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.osgi.framework.Bundle;

public class StringPoolJob
extends Job {
    private static final long INITIAL_DELAY = 10000L;
    private static final long RESCHEDULE_DELAY = 300000L;
    private long lastDuration;
    private Map<IStringPoolParticipant, ISchedulingRule> participants = Collections.synchronizedMap(new HashMap(10));
    private final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");

    public StringPoolJob() {
        super(Messages.utils_stringJobName);
        this.setSystem(true);
        this.setPriority(50);
    }

    public void addStringPoolParticipant(IStringPoolParticipant participant, ISchedulingRule rule) {
        this.participants.put(participant, rule);
        if (this.getState() == 1) {
            this.wakeUp(10000L);
        } else {
            this.schedule(10000L);
        }
    }

    public void removeStringPoolParticipant(IStringPoolParticipant participant) {
        this.participants.remove(participant);
    }

    protected IStatus run(IProgressMonitor monitor) {
        if (this.systemBundle.getState() == 16) {
            return Status.OK_STATUS;
        }
        Map.Entry[] entries = this.participants.entrySet().toArray(new Map.Entry[this.participants.size()]);
        ISchedulingRule[] rules = new ISchedulingRule[entries.length];
        IStringPoolParticipant[] toRun = new IStringPoolParticipant[entries.length];
        int i = 0;
        while (i < toRun.length) {
            toRun[i] = (IStringPoolParticipant)entries[i].getKey();
            rules[i] = (ISchedulingRule)entries[i].getValue();
            ++i;
        }
        ISchedulingRule rule = MultiRule.combine((ISchedulingRule[])rules);
        long start = -1L;
        int savings = 0;
        IJobManager jobManager = Job.getJobManager();
        try {
            jobManager.beginRule(rule, monitor);
            start = System.currentTimeMillis();
            savings = this.shareStrings(toRun, monitor);
        }
        finally {
            jobManager.endRule(rule);
        }
        if (start > 0L) {
            this.lastDuration = System.currentTimeMillis() - start;
            if (Policy.DEBUG_STRINGS) {
                Policy.debug("String sharing saved " + savings + " bytes in: " + this.lastDuration);
            }
        }
        long scheduleDelay = Math.max(300000L, this.lastDuration * 100L);
        if (Policy.DEBUG_STRINGS) {
            Policy.debug("Rescheduling string sharing job in: " + scheduleDelay);
        }
        this.schedule(scheduleDelay);
        return Status.OK_STATUS;
    }

    private int shareStrings(IStringPoolParticipant[] toRun, IProgressMonitor monitor) {
        final StringPool pool = new StringPool();
        int i = 0;
        while (i < toRun.length) {
            if (monitor.isCanceled()) break;
            final IStringPoolParticipant current = toRun[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() {
                    current.shareStrings(pool);
                }
            });
            ++i;
        }
        return pool.getSavedStringCount();
    }
}

