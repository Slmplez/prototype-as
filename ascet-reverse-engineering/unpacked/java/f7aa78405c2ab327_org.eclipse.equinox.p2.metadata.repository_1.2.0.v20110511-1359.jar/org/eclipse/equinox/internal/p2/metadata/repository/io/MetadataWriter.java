/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.metadata.RequiredCapability
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter$ProcessingInstruction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.ICopyright
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitPatch
 *  org.eclipse.equinox.p2.metadata.ILicense
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IRequirementChange
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IExpressionFactory
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 */
package org.eclipse.equinox.internal.p2.metadata.repository.io;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.RequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.repository.io.XMLConstants;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
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
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MetadataWriter
extends XMLWriter
implements XMLConstants {
    public MetadataWriter(OutputStream output, XMLWriter.ProcessingInstruction[] piElements) throws UnsupportedEncodingException {
        super(output, piElements);
    }

    public void writeInstallableUnits(Iterator<IInstallableUnit> units, int size) {
        if (!units.hasNext()) {
            return;
        }
        this.start("units");
        this.attribute("size", size);
        while (units.hasNext()) {
            this.writeInstallableUnit(units.next());
        }
        this.end("units");
    }

    protected void writeInstallableUnit(IInstallableUnit resolvedIU) {
        IInstallableUnit iu = resolvedIU.unresolved();
        this.start("unit");
        this.attribute("id", iu.getId());
        this.attribute("version", iu.getVersion());
        this.attribute("singleton", iu.isSingleton(), true);
        boolean simpleRequirements = this.hasOnlySimpleRequirements(iu);
        if (!simpleRequirements) {
            this.attribute("generation", 2);
        }
        if (iu instanceof IInstallableUnitFragment) {
            IInstallableUnitFragment fragment = (IInstallableUnitFragment)iu;
            this.writeHostRequirements(fragment.getHost());
        }
        if (iu instanceof IInstallableUnitPatch) {
            IInstallableUnitPatch patch = (IInstallableUnitPatch)iu;
            this.writeApplicabilityScope(patch.getApplicabilityScope());
            this.writeRequirementsChange(patch.getRequirementsChange());
            this.writeLifeCycle(patch.getLifeCycle());
        }
        this.writeUpdateDescriptor(resolvedIU, resolvedIU.getUpdateDescriptor());
        this.writeProperties(iu.getProperties());
        this.writeMetaRequirements(iu.getMetaRequirements());
        this.writeProvidedCapabilities(iu.getProvidedCapabilities());
        if (simpleRequirements && iu instanceof IInstallableUnitFragment) {
            LinkedHashSet<IRequirement> mergedRequirementsAndFragmentHostForPre36Compatibility = new LinkedHashSet<IRequirement>(iu.getRequirements());
            mergedRequirementsAndFragmentHostForPre36Compatibility.addAll(((IInstallableUnitFragment)iu).getHost());
            this.writeRequirements(mergedRequirementsAndFragmentHostForPre36Compatibility);
        } else {
            this.writeRequirements(iu.getRequirements());
        }
        this.writeTrimmedCdata("filter", iu.getFilter() == null ? null : iu.getFilter().getParameters()[0].toString());
        this.writeArtifactKeys(iu.getArtifacts());
        this.writeTouchpointType(iu.getTouchpointType());
        this.writeTouchpointData(iu.getTouchpointData());
        this.writeLicenses(iu.getLicenses());
        this.writeCopyright(iu.getCopyright());
        this.end("unit");
    }

    private boolean hasOnlySimpleRequirements(IInstallableUnit iu) {
        for (IRequirement r : iu.getRequirements()) {
            if (r.getMax() != 0 && RequiredCapability.isSimpleRequirement((IMatchExpression)r.getMatches())) continue;
            return false;
        }
        if (iu.getUpdateDescriptor() != null) {
            for (IMatchExpression m : iu.getUpdateDescriptor().getIUsBeingUpdated()) {
                if (RequiredCapability.isSimpleRequirement((IMatchExpression)m)) continue;
                return false;
            }
        }
        for (IRequirement r : iu.getMetaRequirements()) {
            if (r.getMax() != 0 && RequiredCapability.isSimpleRequirement((IMatchExpression)r.getMatches())) continue;
            return false;
        }
        if (iu instanceof IInstallableUnitFragment) {
            for (IRequirement r : ((IInstallableUnitFragment)iu).getHost()) {
                if (RequiredCapability.isSimpleRequirement((IMatchExpression)r.getMatches())) continue;
                return false;
            }
        }
        if (iu instanceof IInstallableUnitPatch) {
            IInstallableUnitPatch iuPatch = (IInstallableUnitPatch)iu;
            IRequirement[][] iRequirementArray = iuPatch.getApplicabilityScope();
            int n = iRequirementArray.length;
            int n2 = 0;
            while (n2 < n) {
                IRequirement[] rArr;
                IRequirement[] iRequirementArray2 = rArr = iRequirementArray[n2];
                int n3 = rArr.length;
                int n4 = 0;
                while (n4 < n3) {
                    IRequirement r = iRequirementArray2[n4];
                    if (!RequiredCapability.isSimpleRequirement((IMatchExpression)r.getMatches())) {
                        return false;
                    }
                    ++n4;
                }
                ++n2;
            }
            IRequirement lifeCycle = iuPatch.getLifeCycle();
            if (lifeCycle != null && !RequiredCapability.isSimpleRequirement((IMatchExpression)lifeCycle.getMatches())) {
                return false;
            }
        }
        return true;
    }

    protected void writeLifeCycle(IRequirement capability) {
        if (capability == null) {
            return;
        }
        this.start("lifeCycle");
        this.writeRequirement(capability);
        this.end("lifeCycle");
    }

    protected void writeHostRequirements(Collection<IRequirement> hostRequirements) {
        if (hostRequirements != null && hostRequirements.size() > 0) {
            this.start("hostRequirements");
            this.attribute("size", hostRequirements.size());
            for (IRequirement req : hostRequirements) {
                this.writeRequirement(req);
            }
            this.end("hostRequirements");
        }
    }

    protected void writeProvidedCapabilities(Collection<IProvidedCapability> capabilities) {
        if (capabilities != null && capabilities.size() > 0) {
            this.start("provides");
            this.attribute("size", capabilities.size());
            for (IProvidedCapability capability : capabilities) {
                this.start("provided");
                this.attribute("namespace", capability.getNamespace());
                this.attribute("name", capability.getName());
                this.attribute("version", capability.getVersion());
                this.end("provided");
            }
            this.end("provides");
        }
    }

    protected void writeMetaRequirements(Collection<IRequirement> metaRequirements) {
        if (metaRequirements != null && metaRequirements.size() > 0) {
            this.start("metaRequirements");
            this.attribute("size", metaRequirements.size());
            for (IRequirement req : metaRequirements) {
                this.writeRequirement(req);
            }
            this.end("metaRequirements");
        }
    }

    protected void writeRequirements(Collection<IRequirement> requirements) {
        if (requirements != null && requirements.size() > 0) {
            this.start("requires");
            this.attribute("size", requirements.size());
            for (IRequirement req : requirements) {
                this.writeRequirement(req);
            }
            this.end("requires");
        }
    }

    protected void writeUpdateDescriptor(IInstallableUnit iu, IUpdateDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        if (descriptor.getIUsBeingUpdated().size() > 1) {
            throw new IllegalStateException();
        }
        IMatchExpression singleUD = (IMatchExpression)descriptor.getIUsBeingUpdated().iterator().next();
        this.start("update");
        if (RequiredCapability.isSimpleRequirement((IMatchExpression)singleUD)) {
            this.attribute("id", RequiredCapability.extractName((IMatchExpression)singleUD));
            this.attribute("range", RequiredCapability.extractRange((IMatchExpression)singleUD));
        } else {
            this.writeMatchExpression((IMatchExpression<IInstallableUnit>)singleUD);
        }
        this.attribute("severity", descriptor.getSeverity());
        this.attribute("description", descriptor.getDescription());
        this.end("update");
    }

    protected void writeApplicabilityScope(IRequirement[][] capabilities) {
        this.start("patchScope");
        int i = 0;
        while (i < capabilities.length) {
            this.start("scope");
            this.writeRequirements(Arrays.asList(capabilities[i]));
            this.end("scope");
            ++i;
        }
        this.end("patchScope");
    }

    protected void writeRequirementsChange(List<IRequirementChange> changes) {
        this.start("changes");
        int i = 0;
        while (i < changes.size()) {
            this.writeRequirementChange(changes.get(i));
            ++i;
        }
        this.end("changes");
    }

    protected void writeRequirementChange(IRequirementChange change) {
        this.start("change");
        if (change.applyOn() != null) {
            this.start("from");
            this.writeRequirement((IRequirement)change.applyOn());
            this.end("from");
        }
        if (change.newValue() != null) {
            this.start("to");
            this.writeRequirement((IRequirement)change.newValue());
            this.end("to");
        }
        this.end("change");
    }

    protected void writeRequirement(IRequirement requirement) {
        this.start("required");
        IMatchExpression match = requirement.getMatches();
        if (requirement.getMax() > 0 && RequiredCapability.isSimpleRequirement((IMatchExpression)match)) {
            this.attribute("namespace", RequiredCapability.extractNamespace((IMatchExpression)match));
            this.attribute("name", RequiredCapability.extractName((IMatchExpression)match));
            this.attribute("range", RequiredCapability.extractRange((IMatchExpression)match));
            this.attribute("optional", requirement.getMin() == 0, false);
            this.attribute("multiple", requirement.getMax() > 1, false);
        } else {
            this.writeMatchExpression((IMatchExpression<IInstallableUnit>)match);
            if (requirement.getMin() != 1) {
                this.attribute("min", requirement.getMin());
            }
            if (requirement.getMax() != 1) {
                this.attribute("max", requirement.getMax());
            }
        }
        this.attribute("greedy", requirement.isGreedy(), true);
        if (requirement.getFilter() != null) {
            this.writeTrimmedCdata("filter", requirement.getFilter().getParameters()[0].toString());
        }
        if (requirement.getDescription() != null) {
            this.writeTrimmedCdata("description", requirement.getDescription());
        }
        this.end("required");
    }

    private void writeMatchExpression(IMatchExpression<IInstallableUnit> match) {
        this.attribute("match", ExpressionUtil.getOperand(match));
        Object[] params = match.getParameters();
        if (params.length > 0) {
            IExpressionFactory factory = ExpressionUtil.getFactory();
            IExpression[] constantArray = new IExpression[params.length];
            int idx = 0;
            while (idx < params.length) {
                constantArray[idx] = factory.constant(params[idx]);
                ++idx;
            }
            this.attribute("matchParameters", factory.array(constantArray));
        }
    }

    protected void writeArtifactKeys(Collection<IArtifactKey> artifactKeys) {
        if (artifactKeys != null && artifactKeys.size() > 0) {
            this.start("artifacts");
            this.attribute("size", artifactKeys.size());
            for (IArtifactKey artifactKey : artifactKeys) {
                this.start("artifact");
                this.attribute("classifier", artifactKey.getClassifier());
                this.attribute("id", artifactKey.getId());
                this.attribute("version", artifactKey.getVersion());
                this.end("artifact");
            }
            this.end("artifacts");
        }
    }

    protected void writeTouchpointType(ITouchpointType touchpointType) {
        this.start("touchpoint");
        this.attribute("id", touchpointType.getId());
        this.attribute("version", touchpointType.getVersion());
        this.end("touchpoint");
    }

    protected void writeTouchpointData(Collection<ITouchpointData> touchpointData) {
        if (touchpointData != null && touchpointData.size() > 0) {
            this.start("touchpointData");
            this.attribute("size", touchpointData.size());
            for (ITouchpointData nextData : touchpointData) {
                Map instructions = nextData.getInstructions();
                if (instructions.size() <= 0) continue;
                this.start("instructions");
                this.attribute("size", instructions.size());
                for (Map.Entry entry : instructions.entrySet()) {
                    this.start("instruction");
                    this.attribute("key", entry.getKey());
                    ITouchpointInstruction instruction = (ITouchpointInstruction)entry.getValue();
                    if (instruction.getImportAttribute() != null) {
                        this.attribute("import", instruction.getImportAttribute());
                    }
                    this.cdata(instruction.getBody(), true);
                    this.end("instruction");
                }
                this.end("instructions");
            }
            this.end("touchpointData");
        }
    }

    private void writeTrimmedCdata(String element, String filter) {
        String trimmed;
        if (filter != null && (trimmed = filter.trim()).length() > 0) {
            this.start(element);
            this.cdata(trimmed);
            this.end(element);
        }
    }

    private void writeLicenses(Collection<ILicense> licenses) {
        if (licenses != null && licenses.size() > 0) {
            this.start("licenses");
            this.attribute("size", licenses.size());
            for (ILicense license : licenses) {
                if (license == null) continue;
                this.start("license");
                if (license.getLocation() != null) {
                    this.attribute("uri", license.getLocation().toString());
                    try {
                        this.attribute("url", URIUtil.toURL((URI)license.getLocation()).toExternalForm());
                    }
                    catch (MalformedURLException malformedURLException) {
                        this.attribute("url", license.getLocation().toString());
                    }
                }
                this.cdata(license.getBody(), true);
                this.end("license");
            }
            this.end("licenses");
        }
    }

    private void writeCopyright(ICopyright copyright) {
        if (copyright != null) {
            this.start("copyright");
            try {
                if (copyright.getLocation() != null) {
                    this.attribute("uri", copyright.getLocation().toString());
                    try {
                        this.attribute("url", URIUtil.toURL((URI)copyright.getLocation()).toExternalForm());
                    }
                    catch (MalformedURLException malformedURLException) {
                        this.attribute("url", copyright.getLocation().toString());
                    }
                }
            }
            catch (IllegalStateException illegalStateException) {
                LogHelper.log((IStatus)new Status(1, "org.eclipse.equinox.p2.metadata.repository", new StringBuffer("Error writing the copyright URL: ").append(copyright.getLocation()).toString()));
            }
            this.cdata(copyright.getBody(), true);
            this.end("copyright");
        }
    }
}

