/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.RepositoryAction;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AddRepositoryAction
extends RepositoryAction {
    public static final String ID = "addRepository";

    public IStatus execute(Map<String, Object> parameters) {
        try {
            IProvisioningAgent agent = this.getAgent(parameters);
            IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
            IAgentLocation agentLocation = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
            RepositoryEvent event = this.createEvent(parameters);
            IProfile profile = (IProfile)parameters.get("profile");
            if (profile != null) {
                this.addRepositoryToProfile(agentLocation, profile, event.getRepositoryLocation(), event.getRepositoryNickname(), event.getRepositoryType(), event.isRepositoryEnabled());
            }
            if (this.isSelfProfile(registry, profile)) {
                this.addToSelf(agent, agentLocation, event);
            }
            return Status.OK_STATUS;
        }
        catch (CoreException e) {
            return e.getStatus();
        }
    }

    @Override
    protected String getId() {
        return ID;
    }

    public IStatus undo(Map<String, Object> parameters) {
        try {
            IProvisioningAgent agent = this.getAgent(parameters);
            IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
            IAgentLocation agentLocation = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
            RepositoryEvent event = this.createEvent(parameters);
            IProfile profile = (IProfile)parameters.get("profile");
            if (profile != null) {
                this.removeRepositoryFromProfile(agentLocation, profile, event.getRepositoryLocation(), event.getRepositoryType());
            }
            if (this.isSelfProfile(registry, profile)) {
                this.removeFromSelf(agent, agentLocation, event);
            }
            return Status.OK_STATUS;
        }
        catch (CoreException e) {
            return e.getStatus();
        }
    }
}

