/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.p2.metadata;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.Copyright;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnitFragment;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnitPatch;
import org.eclipse.equinox.internal.p2.metadata.License;
import org.eclipse.equinox.internal.p2.metadata.ProvidedCapability;
import org.eclipse.equinox.internal.p2.metadata.RequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.RequirementChange;
import org.eclipse.equinox.internal.p2.metadata.ResolvedInstallableUnit;
import org.eclipse.equinox.internal.p2.metadata.TouchpointData;
import org.eclipse.equinox.internal.p2.metadata.TouchpointInstruction;
import org.eclipse.equinox.internal.p2.metadata.TouchpointType;
import org.eclipse.equinox.internal.p2.metadata.UpdateDescriptor;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.ICopyright;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class MetadataFactory {
    private static final ITouchpointData EMPTY_TOUCHPOINT_DATA = new TouchpointData(CollectionUtils.emptyMap());
    private static ITouchpointType[] typeCache = new ITouchpointType[5];
    private static int typeCacheOffset;
    private static final IExpression allVersionsExpression;
    private static final IExpression range_II_Expression;
    private static final IExpression range_IN_Expression;
    private static final IExpression range_NI_Expression;
    private static final IExpression range_NN_Expression;
    private static final IExpression strictVersionExpression;
    private static final IExpression openEndedExpression;
    private static final IExpression openEndedNonInclusiveExpression;

    static {
        IExpressionFactory factory = ExpressionUtil.getFactory();
        IExpression xVar = factory.variable("x");
        IExpression nameEqual = factory.equals(factory.member(xVar, "name"), factory.indexedParameter(0));
        IExpression namespaceEqual = factory.equals(factory.member(xVar, "namespace"), factory.indexedParameter(1));
        IExpression versionMember = factory.member(xVar, "version");
        IExpression versionCmpLow = factory.indexedParameter(2);
        IExpression versionEqual = factory.equals(versionMember, versionCmpLow);
        IExpression versionGt = factory.greater(versionMember, versionCmpLow);
        IExpression versionGtEqual = factory.greaterEqual(versionMember, versionCmpLow);
        IExpression versionCmpHigh = factory.indexedParameter(3);
        IExpression versionLt = factory.less(versionMember, versionCmpHigh);
        IExpression versionLtEqual = factory.lessEqual(versionMember, versionCmpHigh);
        IExpression pvMember = factory.member(factory.thisVariable(), "providedCapabilities");
        allVersionsExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual})));
        strictVersionExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionEqual})));
        openEndedExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual})));
        openEndedNonInclusiveExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt})));
        range_II_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual, versionLtEqual})));
        range_IN_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual, versionLt})));
        range_NI_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt, versionLtEqual})));
        range_NN_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt, versionLt})));
    }

    public static IInstallableUnit createInstallableUnit(InstallableUnitDescription description) {
        Assert.isNotNull((Object)description);
        return description.unitCreate();
    }

    public static IInstallableUnitFragment createInstallableUnitFragment(InstallableUnitFragmentDescription description) {
        Assert.isNotNull((Object)description);
        return (IInstallableUnitFragment)description.unitCreate();
    }

    public static IInstallableUnitPatch createInstallableUnitPatch(InstallableUnitPatchDescription description) {
        Assert.isNotNull((Object)description);
        return (IInstallableUnitPatch)description.unitCreate();
    }

    public static IProvidedCapability createProvidedCapability(String namespace, String name, Version version) {
        return new ProvidedCapability(namespace, name, version);
    }

    public static IRequirement createRequirement(String namespace, String name, VersionRange range, IMatchExpression<IInstallableUnit> filter, boolean optional, boolean multiple) {
        return new RequiredCapability(namespace, name, range, filter, optional ? 0 : 1, multiple ? Integer.MAX_VALUE : 1, true, null);
    }

    public static IRequirement createRequirement(String namespace, String name, VersionRange range, IMatchExpression<IInstallableUnit> filter, int minCard, int maxCard, boolean greedy) {
        return new RequiredCapability(namespace, name, range, filter, minCard, maxCard, greedy, null);
    }

    public static IRequirement createRequirement(IMatchExpression<IInstallableUnit> requirement, IMatchExpression<IInstallableUnit> filter, int minCard, int maxCard, boolean greedy) {
        return new RequiredCapability(requirement, filter, minCard, maxCard, greedy, null);
    }

    public static IRequirement createRequirement(String namespace, String name, VersionRange range, String filter, boolean optional, boolean multiple, boolean greedy) {
        return new RequiredCapability(namespace, name, range, filter, optional, multiple, greedy);
    }

    public static IRequirement createRequirement(String namespace, String name, VersionRange range, IMatchExpression<IInstallableUnit> filter, int minCard, int maxCard, boolean greedy, String description) {
        return new RequiredCapability(namespace, name, range, filter, minCard, maxCard, greedy, description);
    }

    public static IRequirement createRequirement(IMatchExpression<IInstallableUnit> requirement, IMatchExpression<IInstallableUnit> filter, int minCard, int maxCard, boolean greedy, String description) {
        return new RequiredCapability(requirement, filter, minCard, maxCard, greedy, description);
    }

    public static IRequirementChange createRequirementChange(IRequirement applyOn, IRequirement newValue) {
        if ((applyOn == null || applyOn instanceof IRequiredCapability) && (newValue == null || newValue instanceof IRequiredCapability)) {
            return new RequirementChange((IRequiredCapability)applyOn, (IRequiredCapability)newValue);
        }
        throw new IllegalArgumentException();
    }

    public static ICopyright createCopyright(URI location, String body) {
        return new Copyright(location, body);
    }

    public static ILicense createLicense(URI location, String body) {
        return new License(location, body, null);
    }

    public static IInstallableUnit createResolvedInstallableUnit(IInstallableUnit unit, IInstallableUnitFragment[] fragments) {
        if (unit.isResolved()) {
            return unit;
        }
        Assert.isNotNull((Object)unit);
        Assert.isNotNull((Object)fragments);
        return new ResolvedInstallableUnit(unit, fragments);
    }

    public static ITouchpointData createTouchpointData(Map<String, ? extends Object> instructions) {
        Assert.isNotNull(instructions);
        if (instructions.isEmpty()) {
            return EMPTY_TOUCHPOINT_DATA;
        }
        LinkedHashMap<String, ITouchpointInstruction> result = new LinkedHashMap<String, ITouchpointInstruction>(instructions.size());
        for (Map.Entry<String, ? extends Object> entry : instructions.entrySet()) {
            Object value = entry.getValue();
            ITouchpointInstruction instruction = value == null || value instanceof String ? MetadataFactory.createTouchpointInstruction((String)value, null) : (ITouchpointInstruction)value;
            result.put(entry.getKey(), instruction);
        }
        return new TouchpointData(result);
    }

    public static ITouchpointData mergeTouchpointData(ITouchpointData initial, Map<String, ITouchpointInstruction> incomingInstructions) {
        if (incomingInstructions == null || incomingInstructions.size() == 0) {
            return initial;
        }
        HashMap<String, ITouchpointInstruction> resultInstructions = new HashMap<String, ITouchpointInstruction>(initial.getInstructions());
        for (String key : incomingInstructions.keySet()) {
            ITouchpointInstruction instruction = incomingInstructions.get(key);
            ITouchpointInstruction existingInstruction = (ITouchpointInstruction)resultInstructions.get(key);
            if (existingInstruction != null) {
                String body = existingInstruction.getBody();
                if (body == null || body.length() == 0) {
                    body = instruction.getBody();
                } else if (instruction.getBody() != null) {
                    if (!body.endsWith(";")) {
                        body = new StringBuffer(String.valueOf(body)).append(';').toString();
                    }
                    body = new StringBuffer(String.valueOf(body)).append(instruction.getBody()).toString();
                }
                String importAttribute = existingInstruction.getImportAttribute();
                if (importAttribute == null || importAttribute.length() == 0) {
                    importAttribute = instruction.getImportAttribute();
                } else if (instruction.getImportAttribute() != null) {
                    if (!importAttribute.endsWith(",")) {
                        importAttribute = new StringBuffer(String.valueOf(importAttribute)).append(',').toString();
                    }
                    importAttribute = new StringBuffer(String.valueOf(importAttribute)).append(instruction.getBody()).toString();
                }
                instruction = MetadataFactory.createTouchpointInstruction(body, importAttribute);
            }
            resultInstructions.put(key, instruction);
        }
        return MetadataFactory.createTouchpointData(resultInstructions);
    }

    public static ITouchpointInstruction createTouchpointInstruction(String body, String importAttribute) {
        return new TouchpointInstruction(body, importAttribute);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ITouchpointType createTouchpointType(String id, Version version) {
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)version);
        if (id.equals(ITouchpointType.NONE.getId()) && version.equals(ITouchpointType.NONE.getVersion())) {
            return ITouchpointType.NONE;
        }
        ITouchpointType[] iTouchpointTypeArray = typeCache;
        synchronized (typeCache) {
            ITouchpointType result = MetadataFactory.getCachedTouchpointType(id, version);
            if (result != null) {
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return result;
            }
            result = new TouchpointType(id, version);
            MetadataFactory.putCachedTouchpointType(result);
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return result;
        }
    }

    public static IUpdateDescriptor createUpdateDescriptor(Collection<IMatchExpression<IInstallableUnit>> descriptors, int severity, String description, URI location) {
        return new UpdateDescriptor(descriptors, severity, description, location);
    }

    public static IUpdateDescriptor createUpdateDescriptor(String id, VersionRange range, int severity, String description) {
        return MetadataFactory.createUpdateDescriptor(id, range, severity, description, null);
    }

    public static IUpdateDescriptor createUpdateDescriptor(String id, VersionRange range, int severity, String description, URI location) {
        ArrayList<IMatchExpression<IInstallableUnit>> descriptors = new ArrayList<IMatchExpression<IInstallableUnit>>(1);
        descriptors.add(MetadataFactory.createMatchExpressionFromRange("org.eclipse.equinox.p2.iu", id, range));
        return MetadataFactory.createUpdateDescriptor(descriptors, severity, description, location);
    }

    private static IMatchExpression<IInstallableUnit> createMatchExpressionFromRange(String namespace, String name, VersionRange range) {
        IMatchExpression<IInstallableUnit> resultExpression = null;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        resultExpression = range == null || range.equals(VersionRange.emptyRange) ? factory.matchExpression(allVersionsExpression, new Object[]{name, namespace}) : (range.getMinimum().equals(range.getMaximum()) ? factory.matchExpression(strictVersionExpression, new Object[]{name, namespace, range.getMinimum()}) : (range.getMaximum().equals(Version.MAX_VERSION) ? factory.matchExpression(range.getIncludeMinimum() ? openEndedExpression : openEndedNonInclusiveExpression, new Object[]{name, namespace, range.getMinimum()}) : factory.matchExpression(range.getIncludeMinimum() ? (range.getIncludeMaximum() ? range_II_Expression : range_IN_Expression) : (range.getIncludeMaximum() ? range_NI_Expression : range_NN_Expression), new Object[]{name, namespace, range.getMinimum(), range.getMaximum()})));
        return resultExpression;
    }

    private static ITouchpointType getCachedTouchpointType(String id, Version version) {
        int i = 0;
        while (i < typeCache.length) {
            if (typeCache[i] != null && typeCache[i].getId().equals(id) && typeCache[i].getVersion().equals(version)) {
                return typeCache[i];
            }
            ++i;
        }
        return null;
    }

    private static void putCachedTouchpointType(ITouchpointType result) {
        MetadataFactory.typeCache[MetadataFactory.typeCacheOffset] = result;
        typeCacheOffset = (typeCacheOffset + 1) % typeCache.length;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class InstallableUnitDescription {
        InstallableUnit unit;
        public static final String PROP_TYPE_GROUP = "org.eclipse.equinox.p2.type.group";
        public static final String PROP_TYPE_PATCH = "org.eclipse.equinox.p2.type.patch";
        public static final String PROP_TYPE_FRAGMENT = "org.eclipse.equinox.p2.type.fragment";
        public static final String PROP_TYPE_CATEGORY = "org.eclipse.equinox.p2.type.category";

        public void addProvidedCapabilities(Collection<IProvidedCapability> additional) {
            if (additional == null || additional.size() == 0) {
                return;
            }
            Collection<IProvidedCapability> current = this.unit().getProvidedCapabilities();
            ArrayList<IProvidedCapability> all = new ArrayList<IProvidedCapability>(additional.size() + current.size());
            all.addAll(current);
            all.addAll(additional);
            this.unit().setCapabilities(all.toArray(new IProvidedCapability[all.size()]));
        }

        public void addRequiredCapabilities(Collection<IRequirement> additional) {
            this.addRequirements(additional);
        }

        public void addRequirements(Collection<IRequirement> additional) {
            if (additional == null || additional.size() == 0) {
                return;
            }
            Collection current = this.unit().getRequirements();
            ArrayList<IRequirement> all = new ArrayList<IRequirement>(additional.size() + current.size());
            all.addAll(current);
            all.addAll(additional);
            this.unit().setRequiredCapabilities(all.toArray(new IRequirement[all.size()]));
        }

        public void addTouchpointData(ITouchpointData data) {
            Assert.isNotNull((Object)data);
            this.unit().addTouchpointData(data);
        }

        public String getId() {
            return this.unit().getId();
        }

        public Collection<IProvidedCapability> getProvidedCapabilities() {
            return this.unit().getProvidedCapabilities();
        }

        public List<IRequirement> getRequiredCapabilities() {
            return this.getRequirements();
        }

        public List<IRequirement> getRequirements() {
            return this.unit().getRequirements();
        }

        public Collection<IRequirement> getMetaRequiredCapabilities() {
            return this.getMetaRequirements();
        }

        public Collection<IRequirement> getMetaRequirements() {
            return this.unit().getMetaRequirements();
        }

        public Collection<ITouchpointData> getTouchpointData() {
            return this.unit().getTouchpointData();
        }

        public Version getVersion() {
            return this.unit().getVersion();
        }

        public IUpdateDescriptor getUpdateDescriptor() {
            return this.unit().getUpdateDescriptor();
        }

        public void setArtifacts(IArtifactKey[] value) {
            this.unit().setArtifacts(value);
        }

        public void setCapabilities(IProvidedCapability[] exportedCapabilities) {
            this.unit().setCapabilities(exportedCapabilities);
        }

        public void setCopyright(ICopyright copyright) {
            this.unit().setCopyright(copyright);
        }

        public void setFilter(IMatchExpression<IInstallableUnit> filter) {
            this.unit().setFilter(filter);
        }

        public void setFilter(String filter) {
            this.unit().setFilter(filter);
        }

        public void setId(String id) {
            this.unit().setId(id);
        }

        public void setLicenses(ILicense[] licenses) {
            this.unit().setLicenses(licenses);
        }

        public void setProperty(String key, String value) {
            this.unit().setProperty(key, value);
        }

        public void setRequiredCapabilities(IRequirement[] requirements) {
            this.setRequirements(requirements);
        }

        public void setRequirements(IRequirement[] requirements) {
            this.unit().setRequiredCapabilities(requirements);
        }

        public void setMetaRequiredCapabilities(IRequirement[] metaRequirements) {
            this.setMetaRequirements(metaRequirements);
        }

        public void setMetaRequirements(IRequirement[] metaRequirements) {
            this.unit().setMetaRequiredCapabilities(metaRequirements);
        }

        public void setSingleton(boolean singleton) {
            this.unit().setSingleton(singleton);
        }

        public void setTouchpointType(ITouchpointType type) {
            this.unit().setTouchpointType(type);
        }

        public void setUpdateDescriptor(IUpdateDescriptor updateInfo) {
            this.unit().setUpdateDescriptor(updateInfo);
        }

        public void setVersion(Version newVersion) {
            this.unit().setVersion(newVersion);
        }

        InstallableUnit unit() {
            if (this.unit == null) {
                this.unit = new InstallableUnit();
                this.unit.setArtifacts(new IArtifactKey[0]);
            }
            return this.unit;
        }

        IInstallableUnit unitCreate() {
            InstallableUnit result = this.unit();
            this.unit = null;
            return result;
        }
    }

    public static class InstallableUnitFragmentDescription
    extends InstallableUnitDescription {
        public InstallableUnitFragmentDescription() {
            this.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        }

        public void setHost(IRequirement[] hostRequirement) {
            ((InstallableUnitFragment)this.unit()).setHost(Arrays.asList(hostRequirement));
        }

        InstallableUnit unit() {
            if (this.unit == null) {
                this.unit = new InstallableUnitFragment();
            }
            return this.unit;
        }
    }

    public static class InstallableUnitPatchDescription
    extends InstallableUnitDescription {
        public InstallableUnitPatchDescription() {
            this.setProperty("org.eclipse.equinox.p2.type.patch", Boolean.TRUE.toString());
        }

        public void setApplicabilityScope(IRequirement[][] applyTo) {
            if (applyTo == null) {
                throw new IllegalArgumentException("A patch scope can not be null");
            }
            ((InstallableUnitPatch)this.unit()).setApplicabilityScope(applyTo);
        }

        public void setLifeCycle(IRequirement lifeCycle) {
            ((InstallableUnitPatch)this.unit()).setLifeCycle(lifeCycle);
        }

        public void setRequirementChanges(IRequirementChange[] changes) {
            ((InstallableUnitPatch)this.unit()).setRequirementsChange(changes);
        }

        InstallableUnit unit() {
            if (this.unit == null) {
                this.unit = new InstallableUnitPatch();
                ((InstallableUnitPatch)this.unit()).setApplicabilityScope(new IRequirement[0][0]);
            }
            return this.unit;
        }
    }
}

