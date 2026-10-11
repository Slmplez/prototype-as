/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.internal.p2.metadata.IUMap
 *  org.eclipse.equinox.internal.p2.metadata.TranslationSupport
 *  org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IdIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.KeyWithLocale
 *  org.eclipse.equinox.p2.metadata.expression.IEvaluationContext
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.engine.ISurrogateProfileHandler;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.metadata.IUMap;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IdIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Profile
extends IndexProvider<IInstallableUnit>
implements IProfile {
    private final IProvisioningAgent agent;
    private final String profileId;
    private Profile parentProfile;
    private IIndex<IInstallableUnit> idIndex;
    private IIndex<IInstallableUnit> propertiesIndex;
    private IIndex<IInstallableUnit> capabilityIndex;
    private TranslationSupport translationSupport;
    private List<String> subProfileIds;
    private OrderedProperties storage = new OrderedProperties();
    private IUMap ius = new IUMap();
    final Map<IInstallableUnit, OrderedProperties> iuProperties = new HashMap<IInstallableUnit, OrderedProperties>();
    private boolean changed = false;
    private long timestamp;
    private ISurrogateProfileHandler surrogateProfileHandler;

    public Profile(IProvisioningAgent agent, String profileId, Profile parent, Map<String, String> properties) {
        this.agent = agent;
        if (profileId == null || profileId.length() == 0) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.Profile_Null_Profile_Id, null));
        }
        this.profileId = profileId;
        this.setParent(parent);
        if (properties != null) {
            this.storage.putAll(properties);
        }
    }

    @Override
    public String getProfileId() {
        return this.profileId;
    }

    public IProfile getParentProfile() {
        return this.parentProfile;
    }

    public void setParent(Profile profile) {
        if (profile == this.parentProfile) {
            return;
        }
        if (this.parentProfile != null) {
            this.parentProfile.removeSubProfile(this.profileId);
        }
        this.parentProfile = profile;
        if (this.parentProfile != null) {
            this.parentProfile.addSubProfile(this.profileId);
        }
    }

    public boolean isRootProfile() {
        return this.parentProfile == null;
    }

    public void addSubProfile(String subProfileId) throws IllegalArgumentException {
        if (this.subProfileIds == null) {
            this.subProfileIds = new ArrayList<String>();
        }
        if (!this.subProfileIds.contains(subProfileId)) {
            this.subProfileIds.add(subProfileId);
        }
    }

    public void removeSubProfile(String subProfileId) throws IllegalArgumentException {
        if (this.subProfileIds != null) {
            this.subProfileIds.remove(subProfileId);
        }
    }

    public boolean hasSubProfiles() {
        return this.subProfileIds != null && !this.subProfileIds.isEmpty();
    }

    public List<String> getSubProfileIds() {
        if (this.subProfileIds == null) {
            return CollectionUtils.emptyList();
        }
        return Collections.unmodifiableList(this.subProfileIds);
    }

    @Override
    public String getProperty(String key) {
        String value = this.getLocalProperty(key);
        if (value == null && this.parentProfile != null) {
            value = this.parentProfile.getProperty(key);
        }
        return value;
    }

    public String getLocalProperty(String key) {
        return this.storage.getProperty(key);
    }

    public void setProperty(String key, String value) {
        this.storage.setProperty(key, value);
        this.changed = true;
    }

    public void removeProperty(String key) {
        this.storage.remove((Object)key);
        this.changed = true;
    }

    public synchronized IIndex<IInstallableUnit> getIndex(String memberName) {
        if ("id".equals(memberName)) {
            if (this.idIndex == null) {
                this.idIndex = new IdIndex(this.ius);
            }
            return this.idIndex;
        }
        if ("providedCapabilities".equals(memberName)) {
            if (this.capabilityIndex == null) {
                this.capabilityIndex = new CapabilityIndex(this.ius.iterator());
            }
            return this.capabilityIndex;
        }
        if ("profileProperties".equals(memberName)) {
            if (this.propertiesIndex == null) {
                this.propertiesIndex = new ProfilePropertyIndex();
            }
            return this.propertiesIndex;
        }
        return null;
    }

    public Iterator<IInstallableUnit> everything() {
        return this.ius.iterator();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object getManagedProperty(Object client, String memberName, Object key) {
        if (!(client instanceof IInstallableUnit)) {
            return null;
        }
        IInstallableUnit iu = (IInstallableUnit)client;
        if ("profileProperties".equals(memberName) && key instanceof String) {
            return this.getInstallableUnitProperty(iu, (String)key);
        }
        if ("translatedProperties".equals(memberName)) {
            Profile profile = this;
            synchronized (profile) {
                if (this.translationSupport == null) {
                    this.translationSupport = new TranslationSupport((IQueryable)this);
                }
                return key instanceof KeyWithLocale ? this.translationSupport.getIUProperty(iu, (KeyWithLocale)key) : this.translationSupport.getIUProperty(iu, key.toString());
            }
        }
        return null;
    }

    @Override
    public IQueryResult<IInstallableUnit> available(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        if (this.surrogateProfileHandler != null) {
            return this.surrogateProfileHandler.queryProfile(this, query, monitor);
        }
        return this.query(query, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public String getInstallableUnitProperty(IInstallableUnit iu, String key) {
        OrderedProperties properties = this.iuProperties.get(iu);
        if (properties == null) {
            return null;
        }
        return properties.getProperty(key);
    }

    public String setInstallableUnitProperty(IInstallableUnit iu, String key, String value) {
        OrderedProperties properties = this.iuProperties.get(iu);
        if (properties == null) {
            properties = new OrderedProperties();
            this.iuProperties.put(iu, properties);
        }
        this.changed = true;
        return (String)properties.setProperty(key, value);
    }

    public String removeInstallableUnitProperty(IInstallableUnit iu, String key) {
        OrderedProperties properties = this.iuProperties.get(iu);
        if (properties == null) {
            return null;
        }
        String oldValue = properties.remove((Object)key);
        if (properties.isEmpty()) {
            this.iuProperties.remove(iu);
        }
        this.changed = true;
        return oldValue;
    }

    public Map<String, String> getLocalProperties() {
        return OrderedProperties.unmodifiableProperties((Map)this.storage);
    }

    @Override
    public Map<String, String> getProperties() {
        if (this.parentProfile == null) {
            return this.getLocalProperties();
        }
        HashMap<String, String> properties = new HashMap<String, String>(this.parentProfile.getProperties());
        properties.putAll((Map<String, String>)this.storage);
        return OrderedProperties.unmodifiableProperties(properties);
    }

    @Override
    public IProvisioningAgent getProvisioningAgent() {
        return this.agent;
    }

    public void addProperties(Map<String, String> properties) {
        this.storage.putAll(properties);
        this.changed = true;
    }

    public void addInstallableUnit(IInstallableUnit iu) {
        if (this.ius.contains(iu = iu.unresolved())) {
            return;
        }
        this.ius.add(iu);
        this.changed = true;
    }

    public void removeInstallableUnit(IInstallableUnit iu) {
        iu = iu.unresolved();
        this.ius.remove(iu);
        this.changed = true;
    }

    @Override
    public Map<String, String> getInstallableUnitProperties(IInstallableUnit iu) {
        OrderedProperties properties = this.iuProperties.get(iu);
        if (properties == null) {
            properties = new OrderedProperties();
        }
        return OrderedProperties.unmodifiableProperties((Map)properties);
    }

    public void clearLocalProperties() {
        this.storage.clear();
        this.changed = true;
    }

    public boolean isChanged() {
        return this.changed;
    }

    public void setChanged(boolean isChanged) {
        this.changed = isChanged;
    }

    public void clearInstallableUnits() {
        this.ius.clear();
        this.iuProperties.clear();
        this.changed = true;
    }

    public Profile snapshot() {
        Profile parentSnapshot = null;
        if (this.parentProfile != null) {
            parentSnapshot = this.parentProfile.snapshot();
        }
        Profile snapshot = new Profile(this.agent, this.profileId, parentSnapshot, (Map<String, String>)this.storage);
        if (this.surrogateProfileHandler != null) {
            snapshot.setSurrogateProfileHandler(this.surrogateProfileHandler);
        }
        snapshot.setTimestamp(this.timestamp);
        if (this.subProfileIds != null) {
            for (String subProfileId : this.subProfileIds) {
                snapshot.addSubProfile(subProfileId);
            }
        }
        for (IInstallableUnit iu : this.ius) {
            snapshot.addInstallableUnit(iu);
            Map<String, String> properties = this.getInstallableUnitProperties(iu);
            if (properties == null) continue;
            snapshot.addInstallableUnitProperties(iu, properties);
        }
        snapshot.setChanged(false);
        return snapshot;
    }

    public void addInstallableUnitProperties(IInstallableUnit iu, Map<String, String> properties) {
        for (Map.Entry<String, String> entry : properties.entrySet()) {
            this.setInstallableUnitProperty(iu, entry.getKey(), entry.getValue());
        }
    }

    public void clearInstallableUnitProperties(IInstallableUnit iu) {
        this.iuProperties.remove(iu);
        this.changed = true;
    }

    public void clearOrphanedInstallableUnitProperties() {
        Set<IInstallableUnit> keys = this.iuProperties.keySet();
        ArrayList<IInstallableUnit> toRemove = new ArrayList<IInstallableUnit>();
        for (IInstallableUnit iu : keys) {
            if (this.ius.contains(iu)) continue;
            toRemove.add(iu);
        }
        for (IInstallableUnit iu : toRemove) {
            this.iuProperties.remove(iu);
        }
    }

    @Override
    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long millis) {
        this.timestamp = millis;
    }

    public void setSurrogateProfileHandler(ISurrogateProfileHandler surrogateProfileHandler) {
        this.surrogateProfileHandler = surrogateProfileHandler;
    }

    public String toString() {
        return new StringBuffer("Profile(").append(this.getProfileId()).append(')').toString();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class ProfilePropertyIndex
    implements IIndex<IInstallableUnit> {
        ProfilePropertyIndex() {
        }

        public Iterator<IInstallableUnit> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
            return Profile.this.iuProperties.keySet().iterator();
        }
    }
}

