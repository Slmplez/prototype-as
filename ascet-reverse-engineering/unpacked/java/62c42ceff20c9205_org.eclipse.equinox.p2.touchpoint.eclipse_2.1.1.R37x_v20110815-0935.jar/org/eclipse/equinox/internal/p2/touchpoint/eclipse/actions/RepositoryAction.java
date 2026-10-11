/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.engine.ProfileScope
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.repository.IRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.ProfileScope;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.repository.IRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
abstract class RepositoryAction
extends ProvisioningAction {
    private static final String METADATA_REPOSITORY = "org.eclipse.equinox.p2.metadata.repository";
    private static final String ARTIFACT_REPOSITORY = "org.eclipse.equinox.p2.artifact.repository";
    private static final String NODE_REPOSITORIES = "repositories";
    private static final String REPOSITORY_COUNT = "count";
    private static final String KEY_URI = "uri";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_NICKNAME = "nickname";

    RepositoryAction() {
    }

    private static IRepositoryManager<?> getRepositoryManager(IProvisioningAgent agent, int type) {
        if (type == 0) {
            return (IRepositoryManager)agent.getService(IMetadataRepositoryManager.SERVICE_NAME);
        }
        if (type == 1) {
            return (IRepositoryManager)agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
        }
        return null;
    }

    protected void addRepositoryToProfile(IAgentLocation agentLocation, IProfile profile, URI location, String nickname, int type, boolean enabled) {
        Preferences node = this.getRepositoryPreferenceNode(agentLocation, profile, location, type);
        int count = 0;
        if (this.repositoryExists(node) && (count = this.getRepositoryCount(node)) == 0) {
            count = 1;
        }
        node.put(KEY_URI, location.toString());
        node.put(KEY_ENABLED, Boolean.toString(enabled));
        if (nickname != null) {
            node.put(KEY_NICKNAME, nickname);
        }
        this.setRepositoryCount(node, ++count);
        try {
            node.flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }

    protected void addToSelf(IProvisioningAgent agent, IAgentLocation agentLocation, RepositoryEvent event) {
        String name;
        IRepositoryManager<?> manager = RepositoryAction.getRepositoryManager(agent, event.getRepositoryType());
        URI location = event.getRepositoryLocation();
        Preferences node = this.getRepositoryPreferenceNode(agentLocation, null, location, event.getRepositoryType());
        int count = this.getRepositoryCount(node);
        if (manager.contains(location)) {
            if (count == 0) {
                count = 1;
            }
        } else if (manager != null) {
            manager.addRepository(location);
        }
        this.setRepositoryCount(node, ++count);
        if (!event.isRepositoryEnabled()) {
            manager.setEnabled(location, false);
        }
        if ((name = event.getRepositoryNickname()) != null) {
            manager.setRepositoryProperty(location, "p2.nickname", name);
        }
    }

    protected RepositoryEvent createEvent(Map<String, Object> parameters) throws CoreException {
        String parm = (String)parameters.get("location");
        if (parm == null) {
            throw new CoreException(Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"location", (Object)this.getId())));
        }
        URI location = null;
        try {
            location = new URI(parm);
        }
        catch (URISyntaxException e) {
            throw new CoreException(Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"location", (Object)this.getId()), e));
        }
        parm = (String)parameters.get("type");
        if (parm == null) {
            throw new CoreException(Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"type", (Object)this.getId())));
        }
        int type = 0;
        try {
            type = Integer.parseInt(parm);
        }
        catch (NumberFormatException e) {
            throw new CoreException(Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"type", (Object)this.getId()), e));
        }
        String name = (String)parameters.get("name");
        String enablement = (String)parameters.get(KEY_ENABLED);
        boolean enabled = enablement == null ? true : Boolean.valueOf(enablement);
        return RepositoryEvent.newDiscoveryEvent((URI)location, (String)name, (int)type, (boolean)enabled);
    }

    protected abstract String getId();

    protected boolean isSelfProfile(IProfileRegistry registry, IProfile profile) {
        if (profile == null) {
            return true;
        }
        if (registry == null) {
            return false;
        }
        IProfile selfProfile = registry.getProfile("_SELF_");
        if (selfProfile == null) {
            return true;
        }
        return profile.getProfileId().equals(selfProfile.getProfileId());
    }

    protected void removeFromSelf(IProvisioningAgent agent, IAgentLocation agentLocation, RepositoryEvent event) {
        IRepositoryManager<?> manager = RepositoryAction.getRepositoryManager(agent, event.getRepositoryType());
        Preferences node = this.getRepositoryPreferenceNode(agentLocation, null, event.getRepositoryLocation(), event.getRepositoryType());
        int count = this.getRepositoryCount(node);
        this.setRepositoryCount(node, --count);
        if (count < 1 && manager != null) {
            manager.removeRepository(event.getRepositoryLocation());
        }
    }

    protected void removeRepositoryFromProfile(IAgentLocation agentLocation, IProfile profile, URI location, int type) {
        Preferences node = this.getRepositoryPreferenceNode(agentLocation, profile, location, type);
        int count = this.getRepositoryCount(node);
        if (--count < 1) {
            try {
                String[] keys = node.keys();
                int i = 0;
                while (i < keys.length) {
                    node.remove(keys[i]);
                    ++i;
                }
            }
            catch (BackingStoreException backingStoreException) {}
        } else {
            this.setRepositoryCount(node, count);
        }
        try {
            node.flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }

    protected int getRepositoryCount(Preferences node) {
        return node.getInt(REPOSITORY_COUNT, 0);
    }

    protected void setRepositoryCount(Preferences node, int count) {
        if (count < 1) {
            node.remove(REPOSITORY_COUNT);
        } else {
            node.putInt(REPOSITORY_COUNT, count);
        }
    }

    protected boolean repositoryExists(Preferences node) {
        return node.get(KEY_URI, null) != null;
    }

    protected Preferences getRepositoryPreferenceNode(IAgentLocation agentLocation, IProfile profile, URI location, int type) {
        String key = type == 0 ? METADATA_REPOSITORY : ARTIFACT_REPOSITORY;
        String profileId = profile == null ? "_SELF_" : profile.getProfileId();
        return new ProfileScope(agentLocation, profileId).getNode(new StringBuffer(String.valueOf(key)).append('/').append(NODE_REPOSITORIES).append('/').append(this.getKey(location)).toString());
    }

    private String getKey(URI location) {
        String key = location.toString().replace('/', '_');
        if (key.endsWith("_")) {
            key = key.substring(0, key.length() - 1);
        }
        return key;
    }

    protected IProvisioningAgent getAgent(Map<String, Object> parameters) throws CoreException {
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        if (agent == null) {
            throw new CoreException(Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"agent", (Object)this.getId())));
        }
        return agent;
    }
}

