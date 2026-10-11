/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.ICopyright;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResolvedInstallableUnit
implements IInstallableUnit,
IMemberProvider {
    private static IInstallableUnitFragment[] NO_IU = new IInstallableUnitFragment[0];
    private final IInstallableUnitFragment[] fragments;
    protected final IInstallableUnit original;
    public static final String MEMBER_ORIGINAL = "original";
    public static final String MEMBER_FRAGMENTS = "fragments";

    public ResolvedInstallableUnit(IInstallableUnit resolved) {
        this(resolved, null);
    }

    public ResolvedInstallableUnit(IInstallableUnit resolved, IInstallableUnitFragment[] fragments) {
        this.original = resolved;
        this.fragments = fragments == null ? NO_IU : fragments;
    }

    @Override
    public Collection<IInstallableUnitFragment> getFragments() {
        int fcount = this.fragments.length;
        if (fcount == 0) {
            return CollectionUtils.emptyList();
        }
        ArrayList<IInstallableUnitFragment> result = new ArrayList<IInstallableUnitFragment>(fcount);
        result.addAll(Arrays.asList(this.fragments));
        int i = 0;
        while (i < fcount) {
            IInstallableUnitFragment fragment = this.fragments[i];
            if (fragment.isResolved()) {
                result.addAll(fragment.getFragments());
            }
            ++i;
        }
        return result;
    }

    @Override
    public Collection<IArtifactKey> getArtifacts() {
        return this.original.getArtifacts();
    }

    @Override
    public IMatchExpression<IInstallableUnit> getFilter() {
        return this.original.getFilter();
    }

    @Override
    public String getId() {
        return this.original.getId();
    }

    @Override
    public String getProperty(String key) {
        return this.original.getProperty(key);
    }

    @Override
    public Map<String, String> getProperties() {
        return this.original.getProperties();
    }

    @Override
    public String getProperty(String key, String locale) {
        return this.original.getProperty(key, locale);
    }

    @Override
    public Collection<IProvidedCapability> getProvidedCapabilities() {
        Collection<IProvidedCapability> originalCapabilities = this.original.getProvidedCapabilities();
        if (this.fragments.length == 0) {
            return originalCapabilities;
        }
        ArrayList<IProvidedCapability> result = new ArrayList<IProvidedCapability>(originalCapabilities);
        int i = 0;
        while (i < this.fragments.length) {
            result.addAll(this.fragments[i].getProvidedCapabilities());
            ++i;
        }
        return result;
    }

    @Override
    public Collection<IRequirement> getRequirements() {
        Collection<IRequirement> originalCapabilities = this.original.getRequirements();
        if (this.fragments.length == 0) {
            return originalCapabilities;
        }
        ArrayList<IRequirement> result = new ArrayList<IRequirement>(originalCapabilities);
        int i = 0;
        while (i < this.fragments.length) {
            result.addAll(this.fragments[i].getRequirements());
            ++i;
        }
        return result;
    }

    @Override
    public Collection<IRequirement> getMetaRequirements() {
        Collection<IRequirement> originalCapabilities = this.original.getMetaRequirements();
        if (this.fragments.length == 0) {
            return originalCapabilities;
        }
        ArrayList<IRequirement> result = new ArrayList<IRequirement>(originalCapabilities);
        int i = 0;
        while (i < this.fragments.length) {
            result.addAll(this.fragments[i].getMetaRequirements());
            ++i;
        }
        return result;
    }

    @Override
    public Collection<ITouchpointData> getTouchpointData() {
        Collection<ITouchpointData> originalTouchpointData = this.original.getTouchpointData();
        if (this.fragments.length == 0) {
            return originalTouchpointData;
        }
        ArrayList<ITouchpointData> result = new ArrayList<ITouchpointData>(originalTouchpointData);
        int i = 0;
        while (i < this.fragments.length) {
            result.addAll(this.fragments[i].getTouchpointData());
            ++i;
        }
        return result;
    }

    @Override
    public ITouchpointType getTouchpointType() {
        return this.original.getTouchpointType();
    }

    @Override
    public Version getVersion() {
        return this.original.getVersion();
    }

    @Override
    public boolean isSingleton() {
        return this.original.isSingleton();
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = this.original.equals(obj);
        if (result) {
            return true;
        }
        if (obj instanceof ResolvedInstallableUnit) {
            return this.original.equals(((ResolvedInstallableUnit)obj).original);
        }
        return false;
    }

    public int hashCode() {
        return this.original.hashCode();
    }

    public String toString() {
        return new StringBuffer("[R]").append(this.original.toString()).toString();
    }

    public IInstallableUnit getOriginal() {
        return this.original;
    }

    @Override
    public int compareTo(IInstallableUnit other) {
        int cmp = this.getId().compareTo(other.getId());
        if (cmp == 0) {
            cmp = this.getVersion().compareTo(other.getVersion());
        }
        return cmp;
    }

    @Override
    public boolean isResolved() {
        return true;
    }

    @Override
    public IInstallableUnit unresolved() {
        return this.original.unresolved();
    }

    @Override
    public IUpdateDescriptor getUpdateDescriptor() {
        return this.original.getUpdateDescriptor();
    }

    @Override
    public Collection<ILicense> getLicenses() {
        return this.original.getLicenses();
    }

    @Override
    public Collection<ILicense> getLicenses(String locale) {
        return this.original.getLicenses(locale);
    }

    @Override
    public ICopyright getCopyright() {
        return this.original.getCopyright();
    }

    @Override
    public ICopyright getCopyright(String locale) {
        return this.original.getCopyright(locale);
    }

    @Override
    public boolean satisfies(IRequirement candidate) {
        return candidate.isMatch(this);
    }

    @Override
    public Object getMember(String memberName) {
        if (MEMBER_FRAGMENTS == memberName) {
            return this.fragments;
        }
        if (MEMBER_ORIGINAL == memberName) {
            return this.original;
        }
        if ("providedCapabilities" == memberName) {
            return this.getProvidedCapabilities();
        }
        if ("id" == memberName) {
            return this.getId();
        }
        if ("version" == memberName) {
            return this.getVersion();
        }
        if ("properties" == memberName) {
            return this.getProperties();
        }
        if ("filter" == memberName) {
            return this.getFilter();
        }
        if ("artifacts" == memberName) {
            return this.getArtifacts();
        }
        if ("requirements" == memberName) {
            return this.getRequirements();
        }
        if ("licenses" == memberName) {
            return this.getLicenses();
        }
        if ("copyright" == memberName) {
            return this.getCopyright();
        }
        if ("touchpointData" == memberName) {
            return this.getTouchpointData();
        }
        if ("touchpointType" == memberName) {
            return this.getTouchpointType();
        }
        if ("updateDescriptor" == memberName) {
            return this.getUpdateDescriptor();
        }
        if ("singleton" == memberName) {
            return this.isSingleton();
        }
        throw new IllegalArgumentException(new StringBuffer("No such member: ").append(memberName).toString());
    }
}

