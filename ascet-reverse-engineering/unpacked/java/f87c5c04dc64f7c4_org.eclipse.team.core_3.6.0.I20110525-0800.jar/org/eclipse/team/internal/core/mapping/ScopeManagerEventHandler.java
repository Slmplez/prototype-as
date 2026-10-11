/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.mapping;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.core.mapping.provider.SynchronizationScopeManager;
import org.eclipse.team.internal.core.BackgroundEventHandler;
import org.eclipse.team.internal.core.Messages;

public class ScopeManagerEventHandler
extends BackgroundEventHandler {
    public static final int REFRESH = 10;
    private Set toRefresh = new HashSet();
    private ISynchronizationScopeManager manager;

    public ScopeManagerEventHandler(SynchronizationScopeManager manager) {
        super(NLS.bind((String)Messages.ScopeManagerEventHandler_0, (Object)manager.getName()), NLS.bind((String)Messages.ScopeManagerEventHandler_1, (Object)manager.getName()));
        this.manager = manager;
    }

    protected boolean doDispatchEvents(IProgressMonitor monitor) throws TeamException {
        ResourceMapping[] mappings = this.toRefresh.toArray(new ResourceMapping[this.toRefresh.size()]);
        this.toRefresh.clear();
        if (mappings.length > 0) {
            try {
                this.manager.refresh(mappings, monitor);
            }
            catch (CoreException e) {
                throw TeamException.asTeamException(e);
            }
        }
        return mappings.length > 0;
    }

    protected void processEvent(BackgroundEventHandler.Event event, IProgressMonitor monitor) throws CoreException {
        if (event instanceof ResourceMappingEvent) {
            ResourceMappingEvent rme = (ResourceMappingEvent)event;
            int i = 0;
            while (i < rme.mappings.length) {
                ResourceMapping mapping = rme.mappings[i];
                this.toRefresh.add(mapping);
                ++i;
            }
        }
    }

    public void refresh(ResourceMapping[] mappings) {
        this.queueEvent(new ResourceMappingEvent(mappings), false);
    }

    protected Object getJobFamiliy() {
        return this.manager;
    }

    class ResourceMappingEvent
    extends BackgroundEventHandler.Event {
        private final ResourceMapping[] mappings;

        public ResourceMappingEvent(ResourceMapping[] mappings) {
            super(10);
            this.mappings = mappings;
        }
    }
}

