/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.ModelProvider
 *  org.eclipse.core.resources.mapping.RemoteResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.team.core.subscribers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.RemoteResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.team.core.mapping.ISynchronizationScopeParticipant;
import org.eclipse.team.core.mapping.ISynchronizationScopeParticipantFactory;
import org.eclipse.team.core.mapping.provider.SynchronizationScopeManager;
import org.eclipse.team.core.subscribers.ISubscriberChangeEvent;
import org.eclipse.team.core.subscribers.ISubscriberChangeListener;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.subscribers.SubscriberResourceMappingContext;

public class SubscriberScopeManager
extends SynchronizationScopeManager
implements ISubscriberChangeListener {
    private final Subscriber subscriber;
    private Map participants = new HashMap();
    static /* synthetic */ Class class$0;

    public SubscriberScopeManager(String name, ResourceMapping[] inputMappings, Subscriber subscriber, boolean consultModels) {
        this(name, inputMappings, subscriber, SubscriberResourceMappingContext.createContext(subscriber), consultModels);
    }

    public SubscriberScopeManager(String name, ResourceMapping[] inputMappings, Subscriber subscriber, RemoteResourceMappingContext context, boolean consultModels) {
        super(name, inputMappings, (ResourceMappingContext)context, consultModels);
        this.subscriber = subscriber;
    }

    protected Subscriber getSubscriber() {
        return this.subscriber;
    }

    public void dispose() {
        Iterator iter = this.participants.values().iterator();
        while (iter.hasNext()) {
            ISynchronizationScopeParticipant p = (ISynchronizationScopeParticipant)iter.next();
            p.dispose();
        }
        super.dispose();
    }

    public void initialize(IProgressMonitor monitor) throws CoreException {
        ResourcesPlugin.getWorkspace().run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                SubscriberScopeManager.super.initialize(monitor);
                SubscriberScopeManager.this.hookupParticipants();
                SubscriberScopeManager.this.getSubscriber().addListener(SubscriberScopeManager.this);
            }
        }, this.getSchedulingRule(), 0, monitor);
    }

    public ResourceTraversal[] refresh(final ResourceMapping[] mappings, IProgressMonitor monitor) throws CoreException {
        final ArrayList result = new ArrayList(1);
        ResourcesPlugin.getWorkspace().run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                result.add(SubscriberScopeManager.super.refresh(mappings, monitor));
                SubscriberScopeManager.this.hookupParticipants();
            }
        }, this.getSchedulingRule(), 0, monitor);
        if (result.isEmpty()) {
            return new ResourceTraversal[0];
        }
        return (ResourceTraversal[])result.get(0);
    }

    void hookupParticipants() {
        ModelProvider[] providers = this.getScope().getModelProviders();
        int i = 0;
        while (i < providers.length) {
            ISynchronizationScopeParticipant p;
            ModelProvider provider = providers[i];
            if (!this.participants.containsKey(provider) && (p = this.createParticipant(provider)) != null) {
                this.participants.put(provider, p);
            }
            ++i;
        }
    }

    private ISynchronizationScopeParticipant createParticipant(ModelProvider provider) {
        Object factoryObject;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.team.core.mapping.ISynchronizationScopeParticipantFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((factoryObject = provider.getAdapter((Class)clazz)) instanceof ISynchronizationScopeParticipantFactory) {
            ISynchronizationScopeParticipantFactory factory = (ISynchronizationScopeParticipantFactory)factoryObject;
            return factory.createParticipant(provider, this.getScope());
        }
        return null;
    }

    public void subscriberResourceChanged(ISubscriberChangeEvent[] deltas) {
        ArrayList<IResource> changedResources = new ArrayList<IResource>();
        ArrayList<IProject> changedProjects = new ArrayList<IProject>();
        int i = 0;
        while (i < deltas.length) {
            ISubscriberChangeEvent event = deltas[i];
            if ((event.getFlags() & 6) != 0) {
                changedProjects.add(event.getResource().getProject());
            }
            if ((event.getFlags() & 1) != 0) {
                changedResources.add(event.getResource());
            }
            ++i;
        }
        this.fireChange(changedResources.toArray(new IResource[changedResources.size()]), changedProjects.toArray(new IProject[changedProjects.size()]));
    }

    private void fireChange(final IResource[] resources, final IProject[] projects) {
        final HashSet result = new HashSet();
        ISynchronizationScopeParticipant[] handlers = this.participants.values().toArray(new ISynchronizationScopeParticipant[this.participants.size()]);
        int i = 0;
        while (i < handlers.length) {
            final ISynchronizationScopeParticipant participant = handlers[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void run() throws Exception {
                    ResourceMapping[] mappings = participant.handleContextChange(SubscriberScopeManager.this.getScope(), resources, projects);
                    int j = 0;
                    while (j < mappings.length) {
                        ResourceMapping mapping = mappings[j];
                        result.add(mapping);
                        ++j;
                    }
                }

                public void handleException(Throwable exception) {
                }
            });
            ++i;
        }
        if (!result.isEmpty()) {
            this.refresh(result.toArray(new ResourceMapping[result.size()]));
        }
    }
}

