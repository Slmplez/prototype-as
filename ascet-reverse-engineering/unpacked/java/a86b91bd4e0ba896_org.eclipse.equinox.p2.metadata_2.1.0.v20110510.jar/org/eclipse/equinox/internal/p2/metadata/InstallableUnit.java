/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
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
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstallableUnit
implements IInstallableUnit,
IMemberProvider {
    private static final Map<IFilterExpression, IMatchExpression<IInstallableUnit>> filterCache = new LinkedHashMap<IFilterExpression, IMatchExpression<IInstallableUnit>>(){

        @Override
        public boolean removeEldestEntry(Map.Entry<IFilterExpression, IMatchExpression<IInstallableUnit>> expr) {
            return this.size() > 64;
        }
    };
    private static final OrderedProperties NO_PROPERTIES = new OrderedProperties();
    private static final IProvidedCapability[] NO_PROVIDES = new IProvidedCapability[0];
    private static final IRequirement[] NO_REQUIRES = new IRequirement[0];
    private static final IArtifactKey[] NO_ARTIFACTS = new IArtifactKey[0];
    private static final ITouchpointData[] NO_TOUCHPOINT_DATA = new ITouchpointData[0];
    private static final ILicense[] NO_LICENSE = new ILicense[0];
    private static final IExpression filterWrap;
    public static final String MEMBER_PROVIDED_CAPABILITIES = "providedCapabilities";
    public static final String MEMBER_ID = "id";
    public static final String MEMBER_VERSION = "version";
    public static final String MEMBER_PROPERTIES = "properties";
    public static final String MEMBER_FILTER = "filter";
    public static final String MEMBER_ARTIFACTS = "artifacts";
    public static final String MEMBER_REQUIREMENTS = "requirements";
    public static final String MEMBER_LICENSES = "licenses";
    public static final String MEMBER_COPYRIGHT = "copyright";
    public static final String MEMBER_TOUCHPOINT_DATA = "touchpointData";
    public static final String MEMBER_TOUCHPOINT_TYPE = "touchpointType";
    public static final String MEMBER_UPDATE_DESCRIPTOR = "updateDescriptor";
    public static final String MEMBER_SINGLETON = "singleton";
    private IArtifactKey[] artifacts = NO_ARTIFACTS;
    private IMatchExpression<IInstallableUnit> filter;
    private String id;
    private OrderedProperties properties;
    private OrderedProperties localizedProperties;
    IProvidedCapability[] providedCapabilities = NO_PROVIDES;
    private IRequirement[] requires = NO_REQUIRES;
    private IRequirement[] metaRequires = NO_REQUIRES;
    private boolean singleton;
    private ITouchpointData[] touchpointData = NO_TOUCHPOINT_DATA;
    private ITouchpointType touchpointType;
    private Version version = Version.emptyVersion;
    private IUpdateDescriptor updateInfo;
    private ILicense[] licenses = NO_LICENSE;
    private ICopyright copyright;
    public static final String MEMBER_TRANSLATED_PROPERTIES = "translatedProperties";
    public static final String MEMBER_PROFILE_PROPERTIES = "profileProperties";

    static {
        IExpressionFactory factory = ExpressionUtil.getFactory();
        filterWrap = factory.matches(factory.member(factory.thisVariable(), MEMBER_PROPERTIES), factory.indexedParameter(0));
    }

    public void addTouchpointData(ITouchpointData newData) {
        int tl = this.touchpointData.length;
        if (tl == 0) {
            this.touchpointData = new ITouchpointData[]{newData};
        } else {
            ITouchpointData[] newDatas = new ITouchpointData[tl + 1];
            System.arraycopy(this.touchpointData, 0, newDatas, 0, tl);
            newDatas[tl] = newData;
            this.touchpointData = newDatas;
        }
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
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof IInstallableUnit)) {
            return false;
        }
        IInstallableUnit other = (IInstallableUnit)obj;
        if (this.id == null ? other.getId() != null : !this.id.equals(other.getId())) {
            return false;
        }
        return !(this.getVersion() == null ? other.getVersion() != null : !this.getVersion().equals(other.getVersion()));
    }

    @Override
    public Collection<IArtifactKey> getArtifacts() {
        return CollectionUtils.unmodifiableList((Object[])this.artifacts);
    }

    @Override
    public IMatchExpression<IInstallableUnit> getFilter() {
        return this.filter;
    }

    @Override
    public Collection<IInstallableUnitFragment> getFragments() {
        return CollectionUtils.emptyList();
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public Map<String, String> getProperties() {
        return OrderedProperties.unmodifiableProperties((Map)this.properties());
    }

    public String getLocalizedProperty(String key) {
        String result = null;
        if (this.localizedProperties != null) {
            result = this.localizedProperties.getProperty(key);
        }
        return result;
    }

    @Override
    public String getProperty(String key) {
        return this.properties().getProperty(key);
    }

    @Override
    public Collection<IProvidedCapability> getProvidedCapabilities() {
        return CollectionUtils.unmodifiableList((Object[])this.providedCapabilities);
    }

    @Override
    public String getProperty(String key, String locale) {
        return TranslationSupport.getInstance().getIUProperty(this, key, locale);
    }

    public List<IRequirement> getRequirements() {
        return CollectionUtils.unmodifiableList((Object[])this.requires);
    }

    @Override
    public Collection<ITouchpointData> getTouchpointData() {
        return CollectionUtils.unmodifiableList((Object[])this.touchpointData);
    }

    @Override
    public ITouchpointType getTouchpointType() {
        return this.touchpointType != null ? this.touchpointType : ITouchpointType.NONE;
    }

    @Override
    public Version getVersion() {
        return this.version;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.id == null ? 0 : this.id.hashCode());
        result = 31 * result + (this.getVersion() == null ? 0 : this.getVersion().hashCode());
        return result;
    }

    @Override
    public boolean isResolved() {
        return false;
    }

    @Override
    public boolean isSingleton() {
        return this.singleton;
    }

    private OrderedProperties properties() {
        return this.properties != null ? this.properties : NO_PROPERTIES;
    }

    public void setArtifacts(IArtifactKey[] value) {
        this.artifacts = value == null || value.length == 0 ? NO_ARTIFACTS : value;
    }

    public void setCapabilities(IProvidedCapability[] newCapabilities) {
        this.providedCapabilities = newCapabilities == null || newCapabilities.length == 0 ? NO_PROVIDES : newCapabilities;
    }

    public void setFilter(IMatchExpression<IInstallableUnit> filter) {
        this.filter = filter;
    }

    public void setFilter(String filter) {
        this.setFilter(InstallableUnit.parseFilter(filter));
    }

    public void setId(String id) {
        this.id = id;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static IMatchExpression<IInstallableUnit> parseFilter(String filterStr) {
        IFilterExpression filter = ExpressionUtil.parseLDAP(filterStr);
        if (filter == null) {
            return null;
        }
        Map<IFilterExpression, IMatchExpression<IInstallableUnit>> map = filterCache;
        synchronized (map) {
            IMatchExpression<IInstallableUnit> matchExpr = filterCache.get(filter);
            if (matchExpr != null) {
                return matchExpr;
            }
            matchExpr = ExpressionUtil.getFactory().matchExpression(filterWrap, new Object[]{filter});
            filterCache.put(filter, matchExpr);
            return matchExpr;
        }
    }

    public String setLocalizedProperty(String key, String value) {
        if (this.localizedProperties == null) {
            this.localizedProperties = new OrderedProperties();
        }
        return this.localizedProperties.put(key, value);
    }

    public String setProperty(String key, String value) {
        if (value == null) {
            return this.properties != null ? this.properties.remove((Object)key) : null;
        }
        if (this.properties == null) {
            this.properties = new OrderedProperties();
        }
        return (String)this.properties.setProperty(key, value);
    }

    public void setRequiredCapabilities(IRequirement[] capabilities) {
        this.requires = capabilities.length == 0 ? NO_REQUIRES : (IRequirement[])capabilities.clone();
    }

    public void setSingleton(boolean singleton) {
        this.singleton = singleton;
    }

    public void setTouchpointType(ITouchpointType type) {
        this.touchpointType = type != ITouchpointType.NONE ? type : null;
    }

    public void setVersion(Version newVersion) {
        this.version = newVersion != null ? newVersion : Version.emptyVersion;
    }

    public String toString() {
        return new StringBuffer(String.valueOf(this.id)).append(' ').append(this.getVersion()).toString();
    }

    @Override
    public IInstallableUnit unresolved() {
        return this;
    }

    @Override
    public IUpdateDescriptor getUpdateDescriptor() {
        return this.updateInfo;
    }

    public void setUpdateDescriptor(IUpdateDescriptor updateInfo) {
        this.updateInfo = updateInfo;
    }

    public void setLicenses(ILicense[] license) {
        this.licenses = license == null ? NO_LICENSE : license;
    }

    @Override
    public Collection<ILicense> getLicenses() {
        return CollectionUtils.unmodifiableList((Object[])this.licenses);
    }

    @Override
    public Collection<ILicense> getLicenses(String locale) {
        return CollectionUtils.unmodifiableList((Object[])TranslationSupport.getInstance().getLicenses(this, locale));
    }

    public void setCopyright(ICopyright copyright) {
        this.copyright = copyright;
    }

    @Override
    public ICopyright getCopyright() {
        return this.copyright;
    }

    @Override
    public ICopyright getCopyright(String locale) {
        return TranslationSupport.getInstance().getCopyright(this, locale);
    }

    @Override
    public boolean satisfies(IRequirement candidate) {
        return candidate.isMatch(this);
    }

    @Override
    public Collection<IRequirement> getMetaRequirements() {
        return CollectionUtils.unmodifiableList((Object[])this.metaRequires);
    }

    public void setMetaRequiredCapabilities(IRequirement[] metaReqs) {
        this.metaRequires = metaReqs.length == 0 ? NO_REQUIRES : (IRequirement[])metaReqs.clone();
    }

    @Override
    public Object getMember(String memberName) {
        if (MEMBER_PROVIDED_CAPABILITIES == memberName) {
            return this.providedCapabilities;
        }
        if (MEMBER_ID == memberName) {
            return this.id;
        }
        if (MEMBER_VERSION == memberName) {
            return this.version;
        }
        if (MEMBER_PROPERTIES == memberName) {
            return this.properties;
        }
        if (MEMBER_FILTER == memberName) {
            return this.filter;
        }
        if (MEMBER_ARTIFACTS == memberName) {
            return this.artifacts;
        }
        if (MEMBER_REQUIREMENTS == memberName) {
            return this.requires;
        }
        if (MEMBER_LICENSES == memberName) {
            return this.licenses;
        }
        if (MEMBER_COPYRIGHT == memberName) {
            return this.copyright;
        }
        if (MEMBER_TOUCHPOINT_DATA == memberName) {
            return this.touchpointData;
        }
        if (MEMBER_TOUCHPOINT_TYPE == memberName) {
            return this.touchpointType;
        }
        if (MEMBER_UPDATE_DESCRIPTOR == memberName) {
            return this.updateInfo;
        }
        if (MEMBER_SINGLETON == memberName) {
            return this.singleton;
        }
        throw new IllegalArgumentException(new StringBuffer("No such member: ").append(memberName).toString());
    }

    public static IInstallableUnit contextIU(String ws, String os, String arch) {
        InstallableUnit ctxIU = new InstallableUnit();
        ctxIU.setId("org.eclipse.equinox.p2.context.iu");
        ctxIU.setProperty("osgi.ws", ws);
        ctxIU.setProperty("osgi.os", os);
        ctxIU.setProperty("osgi.arch", arch);
        return ctxIU;
    }

    public static IInstallableUnit contextIU(Map<String, String> environment) {
        InstallableUnit ctxIU = new InstallableUnit();
        ctxIU.setId("org.eclipse.equinox.p2.context.iu");
        for (Map.Entry<String, String> entry : environment.entrySet()) {
            ctxIU.setProperty(entry.getKey(), entry.getValue());
        }
        return ctxIU;
    }
}

