/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.PreferencesService
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.security.storage.EncodingUtils
 */
package org.eclipse.equinox.p2.engine;

import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.security.storage.EncodingUtils;

public final class ProfileScope
implements IScopeContext {
    public static final String SCOPE = "profile";
    private String profileId;
    private IAgentLocation location;

    public ProfileScope(IAgentLocation agentLocation, String profileId) {
        Assert.isNotNull((Object)agentLocation);
        Assert.isNotNull((Object)profileId);
        this.profileId = profileId;
        this.location = agentLocation;
    }

    public IPath getLocation() {
        return null;
    }

    public String getName() {
        return SCOPE;
    }

    public IEclipsePreferences getNode(String qualifier) {
        if (qualifier == null) {
            throw new IllegalArgumentException();
        }
        String locationString = EncodingUtils.encodeSlashes((String)this.location.getRootLocation().toString());
        return (IEclipsePreferences)PreferencesService.getDefault().getRootNode().node(this.getName()).node(locationString).node(this.profileId).node(qualifier);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        if (!(obj instanceof ProfileScope)) {
            return false;
        }
        ProfileScope other = (ProfileScope)obj;
        return this.profileId.equals(other.profileId);
    }

    public int hashCode() {
        return super.hashCode() + this.profileId.hashCode();
    }
}

