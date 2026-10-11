/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.util.Collection;
import java.util.Map;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.ICopyright;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IInstallableUnit
extends IVersionedId,
Comparable<IInstallableUnit> {
    public static final String NAMESPACE_IU_ID = "org.eclipse.equinox.p2.iu";
    public static final String PROP_PARTIAL_IU = "org.eclipse.equinox.p2.partial.iu";
    public static final String PROP_CONTACT = "org.eclipse.equinox.p2.contact";
    public static final String PROP_DESCRIPTION = "org.eclipse.equinox.p2.description";
    public static final String PROP_DESCRIPTION_URL = "org.eclipse.equinox.p2.description.url";
    public static final String PROP_DOC_URL = "org.eclipse.equinox.p2.doc.url";
    public static final String PROP_BUNDLE_LOCALIZATION = "org.eclipse.equinox.p2.bundle.localization";
    public static final String PROP_NAME = "org.eclipse.equinox.p2.name";
    public static final String PROP_PROVIDER = "org.eclipse.equinox.p2.provider";
    public static final String PROP_ICON = "org.eclipse.equinox.p2.icon";

    public Collection<IArtifactKey> getArtifacts();

    public IMatchExpression<IInstallableUnit> getFilter();

    public Collection<IInstallableUnitFragment> getFragments();

    public Map<String, String> getProperties();

    public String getProperty(String var1);

    public String getProperty(String var1, String var2);

    public Collection<IProvidedCapability> getProvidedCapabilities();

    public Collection<IRequirement> getRequirements();

    public Collection<IRequirement> getMetaRequirements();

    public Collection<ITouchpointData> getTouchpointData();

    public ITouchpointType getTouchpointType();

    public boolean isResolved();

    public boolean isSingleton();

    public boolean satisfies(IRequirement var1);

    public IInstallableUnit unresolved();

    public IUpdateDescriptor getUpdateDescriptor();

    public Collection<ILicense> getLicenses();

    public Collection<ILicense> getLicenses(String var1);

    public ICopyright getCopyright();

    public ICopyright getCopyright(String var1);

    public boolean equals(Object var1);
}

