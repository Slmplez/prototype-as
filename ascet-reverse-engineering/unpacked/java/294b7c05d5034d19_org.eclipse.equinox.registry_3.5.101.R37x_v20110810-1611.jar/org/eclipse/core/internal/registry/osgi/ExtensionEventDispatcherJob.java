/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.registry.osgi;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.spi.RegistryStrategy;

public final class ExtensionEventDispatcherJob
extends Job {
    private static final ISchedulingRule EXTENSION_EVENT_RULE = new ISchedulingRule(){

        public boolean contains(ISchedulingRule rule) {
            return rule == this;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            return rule == this;
        }
    };
    private Map deltas;
    private Object[] listenerInfos;
    private Object registry;

    public ExtensionEventDispatcherJob(Object[] listenerInfos, Map deltas, Object registry) {
        super("Registry event dispatcher");
        this.setSystem(true);
        this.listenerInfos = listenerInfos;
        this.deltas = deltas;
        this.registry = registry;
        this.setRule(EXTENSION_EVENT_RULE);
    }

    public IStatus run(IProgressMonitor monitor) {
        return RegistryStrategy.processChangeEvent(this.listenerInfos, this.deltas, this.registry);
    }
}

