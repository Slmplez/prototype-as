/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IRequirement
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProfileChangeRequest
implements Cloneable,
IProfileChangeRequest {
    private final IProfile profile;
    private ArrayList<IInstallableUnit> iusToRemove = null;
    private ArrayList<IInstallableUnit> iusToAdd = null;
    private ArrayList<String> propertiesToRemove = null;
    private HashMap<String, String> propertiesToAdd = null;
    private HashMap<IInstallableUnit, Map<String, String>> iuPropertiesToAdd = null;
    private HashMap<IInstallableUnit, List<String>> iuPropertiesToRemove = null;
    private ArrayList<IRequirement> additionalRequirements;

    public static ProfileChangeRequest createByProfileId(IProvisioningAgent agent, String profileId) {
        IProfileRegistry profileRegistry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if (profileRegistry == null) {
            throw new IllegalStateException(Messages.Planner_no_profile_registry);
        }
        IProfile profile = profileRegistry.getProfile(profileId);
        if (profile == null) {
            throw new IllegalArgumentException(new StringBuffer("Profile id ").append(profileId).append(" is not registered.").toString());
        }
        return new ProfileChangeRequest(profile);
    }

    public ProfileChangeRequest(IProfile profile) {
        this.profile = profile;
    }

    public void setProfile(IProfile profile) {
        if (profile == null) {
            throw new IllegalArgumentException("Profile cannot be null.");
        }
    }

    public IProfile getProfile() {
        return this.profile;
    }

    public Map<String, String> getProfileProperties() {
        HashMap<String, String> result = new HashMap<String, String>(this.profile.getProperties());
        if (this.propertiesToRemove != null) {
            for (String key : this.propertiesToRemove) {
                result.remove(key);
            }
        }
        if (this.propertiesToAdd != null) {
            result.putAll(this.propertiesToAdd);
        }
        return result;
    }

    @Override
    public void add(IInstallableUnit toInstall) {
        if (this.iusToAdd == null) {
            this.iusToAdd = new ArrayList();
        }
        this.iusToAdd.add(toInstall);
    }

    @Override
    public void addAll(Collection<IInstallableUnit> toInstall) {
        for (IInstallableUnit iu : toInstall) {
            this.add(iu);
        }
    }

    public void addInstallableUnits(IInstallableUnit[] toInstall) {
        int i = 0;
        while (i < toInstall.length) {
            this.add(toInstall[i]);
            ++i;
        }
    }

    @Override
    public void remove(IInstallableUnit toUninstall) {
        if (this.iusToRemove == null) {
            this.iusToRemove = new ArrayList();
        }
        this.iusToRemove.add(toUninstall);
    }

    public void removeInstallableUnits(IInstallableUnit[] toUninstall) {
        int i = 0;
        while (i < toUninstall.length) {
            this.remove(toUninstall[i]);
            ++i;
        }
    }

    @Override
    public void removeAll(Collection<IInstallableUnit> toUninstall) {
        for (IInstallableUnit iu : toUninstall) {
            this.remove(iu);
        }
    }

    @Override
    public void setProfileProperty(String key, String value) {
        if (this.propertiesToAdd == null) {
            this.propertiesToAdd = new HashMap();
        }
        this.propertiesToAdd.put(key, value);
    }

    @Override
    public void removeProfileProperty(String key) {
        if (this.propertiesToRemove == null) {
            this.propertiesToRemove = new ArrayList(1);
        }
        this.propertiesToRemove.add(key);
    }

    @Override
    public void setInstallableUnitProfileProperty(IInstallableUnit iu, String key, String value) {
        Map<String, String> properties;
        if (this.iuPropertiesToAdd == null) {
            this.iuPropertiesToAdd = new HashMap();
        }
        if ((properties = this.iuPropertiesToAdd.get(iu)) == null) {
            properties = new HashMap<String, String>();
            this.iuPropertiesToAdd.put(iu, properties);
        }
        properties.put(key, value);
    }

    @Override
    public void removeInstallableUnitProfileProperty(IInstallableUnit iu, String key) {
        List<String> keys;
        if (this.iuPropertiesToRemove == null) {
            this.iuPropertiesToRemove = new HashMap();
        }
        if ((keys = this.iuPropertiesToRemove.get(iu)) == null) {
            keys = new ArrayList<String>();
            this.iuPropertiesToRemove.put(iu, keys);
        }
        if (!keys.contains(key)) {
            keys.add(key);
        }
    }

    @Override
    public Collection<IInstallableUnit> getRemovals() {
        if (this.iusToRemove == null) {
            return CollectionUtils.emptyList();
        }
        return Collections.unmodifiableList(this.iusToRemove);
    }

    @Override
    public Collection<IInstallableUnit> getAdditions() {
        if (this.iusToAdd == null) {
            return CollectionUtils.emptyList();
        }
        return Collections.unmodifiableList(this.iusToAdd);
    }

    public String[] getPropertiesToRemove() {
        if (this.propertiesToRemove == null) {
            return new String[0];
        }
        return this.propertiesToRemove.toArray(new String[this.propertiesToRemove.size()]);
    }

    public Map<String, String> getPropertiesToAdd() {
        if (this.propertiesToAdd == null) {
            return CollectionUtils.emptyMap();
        }
        return this.propertiesToAdd;
    }

    public Map<IInstallableUnit, List<String>> getInstallableUnitProfilePropertiesToRemove() {
        if (this.iuPropertiesToRemove == null) {
            return CollectionUtils.emptyMap();
        }
        return this.iuPropertiesToRemove;
    }

    public Map<IInstallableUnit, Map<String, String>> getInstallableUnitProfilePropertiesToAdd() {
        if (this.iuPropertiesToAdd == null) {
            return CollectionUtils.emptyMap();
        }
        return this.iuPropertiesToAdd;
    }

    @Override
    public void setInstallableUnitInclusionRules(IInstallableUnit iu, String value) {
        this.setInstallableUnitProfileProperty(iu, "org.eclipse.equinox.p2.internal.inclusion.rules", value);
    }

    @Override
    public void removeInstallableUnitInclusionRules(IInstallableUnit iu) {
        this.removeInstallableUnitProfileProperty(iu, "org.eclipse.equinox.p2.internal.inclusion.rules");
    }

    public Object clone() {
        ProfileChangeRequest result = new ProfileChangeRequest(this.profile);
        result.iusToRemove = this.iusToRemove == null ? null : (ArrayList)this.iusToRemove.clone();
        result.iusToAdd = this.iusToAdd == null ? null : (ArrayList)this.iusToAdd.clone();
        result.propertiesToRemove = this.propertiesToRemove == null ? null : (ArrayList)this.propertiesToRemove.clone();
        result.propertiesToAdd = this.propertiesToAdd == null ? null : (HashMap)this.propertiesToAdd.clone();
        result.iuPropertiesToAdd = this.iuPropertiesToAdd == null ? null : (HashMap)this.iuPropertiesToAdd.clone();
        result.iuPropertiesToRemove = this.iuPropertiesToRemove == null ? null : (HashMap)this.iuPropertiesToRemove.clone();
        result.additionalRequirements = this.additionalRequirements == null ? null : (ArrayList)this.additionalRequirements.clone();
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer(1000);
        result.append("==Profile change request for ");
        result.append(this.profile.getProfileId());
        result.append('\n');
        if (this.iusToAdd != null) {
            result.append("==Additions==");
            result.append('\n');
            for (IInstallableUnit iu : this.iusToAdd) {
                result.append('\t');
                result.append(iu);
                result.append('\n');
            }
        }
        if (this.iusToRemove != null) {
            result.append("==Removals==");
            result.append('\n');
            for (IInstallableUnit iu : this.iusToRemove) {
                result.append('\t');
                result.append(iu);
                result.append('\n');
            }
        }
        return result.toString();
    }

    @Override
    public void addExtraRequirements(Collection<IRequirement> requirements) {
        if (this.additionalRequirements == null) {
            this.additionalRequirements = new ArrayList(requirements.size());
        }
        this.additionalRequirements.addAll(requirements);
    }

    public Collection<IRequirement> getExtraRequirements() {
        return this.additionalRequirements;
    }

    public void clearExtraRequirements() {
        this.additionalRequirements = null;
    }
}

