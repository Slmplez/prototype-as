/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.ILicense
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 */
package org.eclipse.equinox.p2.publisher;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdviceFileParser {
    private static final String ADVICE_VERSION = "advice.version";
    private static final String QUALIFIER_SUBSTITUTION = "$qualifier$";
    private static final String VERSION_SUBSTITUTION = "$version$";
    private static final String UPDATE_DESCRIPTION = "update.description";
    private static final String UPDATE_SEVERITY = "update.severity";
    private static final String UPDATE_RANGE = "update.range";
    private static final String UPDATE_ID = "update.id";
    private static final String CLASSIFIER = "classifier";
    private static final String TOUCHPOINT_VERSION = "touchpoint.version";
    private static final String TOUCHPOINT_ID = "touchpoint.id";
    private static final String COPYRIGHT_LOCATION = "copyright.location";
    private static final String COPYRIGHT = "copyright";
    private static final String ID = "id";
    private static final String SINGLETON = "singleton";
    private static final String IMPORT = "import";
    private static final String RANGE = "range";
    private static final String FILTER = "filter";
    private static final String MULTIPLE = "multiple";
    private static final String OPTIONAL = "optional";
    private static final String GREEDY = "greedy";
    private static final String VERSION = "version";
    private static final String NAMESPACE = "namespace";
    private static final String NAME = "name";
    private static final String LOCATION = "location";
    private static final String VALUE = "value";
    private static final String UNITS_PREFIX = "units.";
    private static final String INSTRUCTIONS_PREFIX = "instructions.";
    private static final String REQUIRES_PREFIX = "requires.";
    private static final String META_REQUIREMENTS_PREFIX = "metaRequirements.";
    private static final String PROVIDES_PREFIX = "provides.";
    private static final String PROPERTIES_PREFIX = "properties.";
    private static final String LICENSES_PREFIX = "licenses.";
    private static final String ARTIFACTS_PREFIX = "artifacts.";
    private static final String HOST_REQUIREMENTS_PREFIX = "hostRequirements.";
    private static final String UPDATE_DESCRIPTOR_PREFIX = "update.";
    public static final Version COMPATIBLE_VERSION = Version.createOSGi((int)1, (int)0, (int)0);
    public static final VersionRange VERSION_TOLERANCE = new VersionRange(COMPATIBLE_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
    private Map<String, String> adviceProperties = new HashMap<String, String>();
    private List<IProvidedCapability> adviceProvides = new ArrayList<IProvidedCapability>();
    private List<IRequirement> adviceRequires = new ArrayList<IRequirement>();
    private List<IRequirement> adviceMetaRequires = new ArrayList<IRequirement>();
    private IUpdateDescriptor adviceUpdateDescriptor = null;
    private Map<String, ITouchpointInstruction> adviceInstructions = new HashMap<String, ITouchpointInstruction>();
    private List<MetadataFactory.InstallableUnitDescription> adviceOtherIUs = new ArrayList<MetadataFactory.InstallableUnitDescription>();
    private final Map<String, String> advice;
    private Iterator<String> keysIterator;
    private String current;
    private String hostId;
    private Version hostVersion;

    public AdviceFileParser(String id, Version version, Map<String, String> advice) {
        this.hostId = id;
        this.hostVersion = version;
        this.advice = advice;
    }

    public void parse() {
        String adviceVersion = this.advice.get(ADVICE_VERSION);
        if (adviceVersion != null) {
            this.checkAdviceVersion(adviceVersion);
        }
        ArrayList<String> keys = new ArrayList<String>(this.advice.keySet());
        Collections.sort(keys);
        this.keysIterator = keys.iterator();
        this.next();
        while (this.current != null) {
            if (this.current.startsWith(PROPERTIES_PREFIX)) {
                this.parseProperties(PROPERTIES_PREFIX, this.adviceProperties);
                continue;
            }
            if (this.current.startsWith(UPDATE_DESCRIPTOR_PREFIX)) {
                this.adviceUpdateDescriptor = this.parseUpdateDescriptor(UPDATE_DESCRIPTOR_PREFIX, this.hostId);
                continue;
            }
            if (this.current.startsWith(PROVIDES_PREFIX)) {
                this.parseProvides(PROVIDES_PREFIX, this.adviceProvides);
                continue;
            }
            if (this.current.startsWith(REQUIRES_PREFIX)) {
                this.parseRequires(REQUIRES_PREFIX, this.adviceRequires);
                continue;
            }
            if (this.current.startsWith(META_REQUIREMENTS_PREFIX)) {
                this.parseRequires(META_REQUIREMENTS_PREFIX, this.adviceMetaRequires);
                continue;
            }
            if (this.current.startsWith(INSTRUCTIONS_PREFIX)) {
                this.parseInstructions(INSTRUCTIONS_PREFIX, this.adviceInstructions);
                continue;
            }
            if (this.current.startsWith(UNITS_PREFIX)) {
                this.parseUnits(UNITS_PREFIX, this.adviceOtherIUs);
                continue;
            }
            if (this.current.equals(ADVICE_VERSION)) {
                this.next();
                continue;
            }
            this.next();
        }
    }

    private void checkAdviceVersion(String adviceVersion) {
        Version version = Version.parseVersion((String)adviceVersion);
        if (!VERSION_TOLERANCE.isIncluded(version)) {
            throw new IllegalStateException(new StringBuffer("bad version: ").append(version).append(". Expected range was ").append(VERSION_TOLERANCE).toString());
        }
    }

    private void next() {
        this.current = this.keysIterator.hasNext() ? this.keysIterator.next() : null;
    }

    private String currentValue() {
        return this.advice.get(this.current).trim();
    }

    private void parseProperties(String prefix, Map<String, String> properties) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex == -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).toString());
            }
            this.parseProperty(this.current.substring(0, dotIndex + 1), properties);
        }
    }

    private void parseProperty(String prefix, Map<String, String> properties) {
        String propertyName = null;
        String propertyValue = null;
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current.substring(prefix.length());
            if (token.equals(NAME)) {
                propertyName = this.currentValue();
            } else if (token.equals(VALUE)) {
                propertyValue = this.currentValue();
            }
            this.next();
        }
        properties.put(propertyName, propertyValue);
    }

    private IUpdateDescriptor parseUpdateDescriptor(String prefix, String id) {
        String name = id;
        String description = null;
        String range = "[0.0.0,$version$)";
        String severity = "0";
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current;
            if (token.equals(UPDATE_ID)) {
                name = this.currentValue();
            } else if (token.equals(UPDATE_DESCRIPTION)) {
                description = this.currentValue();
            } else if (token.equals(UPDATE_RANGE)) {
                range = this.currentValue();
            } else if (token.equals(UPDATE_SEVERITY)) {
                severity = this.currentValue();
            }
            this.next();
        }
        range = this.substituteVersionAndQualifier(range);
        VersionRange versionRange = new VersionRange(range);
        return MetadataFactory.createUpdateDescriptor((String)name, (VersionRange)versionRange, (int)Integer.valueOf(severity), description);
    }

    private void parseProvides(String prefix, List<IProvidedCapability> provides) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex == -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).toString());
            }
            this.parseProvided(this.current.substring(0, dotIndex + 1), provides);
        }
    }

    private void parseProvided(String prefix, List<IProvidedCapability> provides) {
        String namespace = null;
        String name = null;
        Version capabilityVersion = null;
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current.substring(prefix.length());
            if (token.equals(NAME)) {
                name = this.currentValue();
            } else if (token.equals(NAMESPACE)) {
                namespace = this.currentValue();
            } else if (token.equals(VERSION)) {
                capabilityVersion = Version.parseVersion((String)this.substituteVersionAndQualifier(this.currentValue()));
            }
            this.next();
        }
        IProvidedCapability capability = MetadataFactory.createProvidedCapability(namespace, name, capabilityVersion);
        provides.add(capability);
    }

    private void parseRequires(String prefix, List<IRequirement> requires) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex == -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).toString());
            }
            this.parseRequired(this.current.substring(0, dotIndex + 1), requires);
        }
    }

    private void parseRequired(String prefix, List<IRequirement> requires) {
        String namespace = null;
        String name = null;
        VersionRange range = null;
        String filter = null;
        boolean optional = false;
        boolean multiple = false;
        boolean greedy = true;
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current.substring(prefix.length());
            if (token.equals(GREEDY)) {
                greedy = Boolean.valueOf(this.currentValue());
            } else if (token.equals(OPTIONAL)) {
                optional = Boolean.valueOf(this.currentValue());
            } else if (token.equals(MULTIPLE)) {
                multiple = Boolean.valueOf(this.currentValue());
            } else if (token.equals(FILTER)) {
                filter = this.currentValue();
            } else if (token.equals(NAME)) {
                name = this.currentValue();
            } else if (token.equals(NAMESPACE)) {
                namespace = this.currentValue();
            } else if (token.equals(RANGE)) {
                range = new VersionRange(this.substituteVersionAndQualifier(this.currentValue()));
            }
            this.next();
        }
        IRequirement capability = MetadataFactory.createRequirement(namespace, name, range, filter, (boolean)optional, (boolean)multiple, (boolean)greedy);
        requires.add(capability);
    }

    private void parseInstructions(String prefix, Map<String, ITouchpointInstruction> instructions) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex != -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).toString());
            }
            this.parseInstruction(this.current, instructions);
        }
    }

    private void parseInstruction(String prefix, Map<String, ITouchpointInstruction> instructions) {
        String phase = this.current.substring(this.current.lastIndexOf(46) + 1);
        String body = this.currentValue();
        this.next();
        prefix = new StringBuffer(String.valueOf(prefix)).append('.').toString();
        String importAttribute = null;
        if (this.current != null && this.current.startsWith(prefix)) {
            if (this.current.substring(prefix.length()).equals(IMPORT)) {
                importAttribute = this.currentValue();
            }
            this.next();
        }
        ITouchpointInstruction instruction = MetadataFactory.createTouchpointInstruction((String)body, importAttribute);
        instructions.put(phase, instruction);
    }

    private void parseUnits(String prefix, List<MetadataFactory.InstallableUnitDescription> ius) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex == -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).append(" = ").append(this.currentValue()).toString());
            }
            this.parseUnit(this.current.substring(0, dotIndex + 1), ius);
        }
    }

    private void parseUnit(String prefix, List<MetadataFactory.InstallableUnitDescription> units) {
        String unitId = null;
        Version unitVersion = null;
        boolean unitSingleton = false;
        String unitFilter = null;
        String unitCopyright = null;
        String unitCopyrightLocation = null;
        String unitTouchpointId = null;
        Version unitTouchpointVersion = null;
        String unitUpdateId = null;
        VersionRange unitUpdateRange = null;
        int unitUpdateSeverity = 0;
        String unitUpdateDescription = null;
        ArrayList<IArtifactKey> unitArtifacts = new ArrayList<IArtifactKey>();
        HashMap<String, String> unitProperties = new HashMap<String, String>();
        ArrayList<IRequirement> unitHostRequirements = new ArrayList<IRequirement>();
        ArrayList<IProvidedCapability> unitProvides = new ArrayList<IProvidedCapability>();
        ArrayList<IRequirement> unitRequires = new ArrayList<IRequirement>();
        ArrayList<IRequirement> unitMetaRequirements = new ArrayList<IRequirement>();
        ArrayList<ILicense> unitLicenses = new ArrayList<ILicense>();
        HashMap<String, ITouchpointInstruction> unitInstructions = new HashMap<String, ITouchpointInstruction>();
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current.substring(prefix.length());
            if (token.equals(ID)) {
                unitId = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(VERSION)) {
                unitVersion = Version.parseVersion((String)this.substituteVersionAndQualifier(this.currentValue()));
                this.next();
                continue;
            }
            if (token.equals(SINGLETON)) {
                unitSingleton = Boolean.valueOf(this.currentValue());
                this.next();
                continue;
            }
            if (token.equals(FILTER)) {
                unitFilter = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(COPYRIGHT)) {
                unitCopyright = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(COPYRIGHT_LOCATION)) {
                unitCopyrightLocation = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(TOUCHPOINT_ID)) {
                unitTouchpointId = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(TOUCHPOINT_VERSION)) {
                unitTouchpointVersion = Version.parseVersion((String)this.substituteVersionAndQualifier(this.currentValue()));
                this.next();
                continue;
            }
            if (token.equals(UPDATE_ID)) {
                unitUpdateId = this.currentValue();
                this.next();
                continue;
            }
            if (token.equals(UPDATE_RANGE)) {
                unitUpdateRange = new VersionRange(this.substituteVersionAndQualifier(this.currentValue()));
                this.next();
                continue;
            }
            if (token.equals(UPDATE_SEVERITY)) {
                unitUpdateSeverity = Integer.parseInt(this.currentValue());
                this.next();
                continue;
            }
            if (token.equals(UPDATE_DESCRIPTION)) {
                unitUpdateDescription = this.currentValue();
                this.next();
                continue;
            }
            if (token.startsWith(HOST_REQUIREMENTS_PREFIX)) {
                this.parseRequires(new StringBuffer(String.valueOf(prefix)).append(HOST_REQUIREMENTS_PREFIX).toString(), unitHostRequirements);
                continue;
            }
            if (token.startsWith(ARTIFACTS_PREFIX)) {
                this.parseArtifacts(new StringBuffer(String.valueOf(prefix)).append(ARTIFACTS_PREFIX).toString(), unitArtifacts);
                continue;
            }
            if (token.startsWith(LICENSES_PREFIX)) {
                this.parseLicenses(new StringBuffer(String.valueOf(prefix)).append(LICENSES_PREFIX).toString(), unitLicenses);
                continue;
            }
            if (token.startsWith(PROPERTIES_PREFIX)) {
                this.parseProperties(new StringBuffer(String.valueOf(prefix)).append(PROPERTIES_PREFIX).toString(), unitProperties);
                continue;
            }
            if (token.startsWith(PROVIDES_PREFIX)) {
                this.parseProvides(new StringBuffer(String.valueOf(prefix)).append(PROVIDES_PREFIX).toString(), unitProvides);
                continue;
            }
            if (token.startsWith(REQUIRES_PREFIX)) {
                this.parseRequires(new StringBuffer(String.valueOf(prefix)).append(REQUIRES_PREFIX).toString(), unitRequires);
                continue;
            }
            if (token.startsWith(META_REQUIREMENTS_PREFIX)) {
                this.parseRequires(new StringBuffer(String.valueOf(prefix)).append(META_REQUIREMENTS_PREFIX).toString(), unitMetaRequirements);
                continue;
            }
            if (token.startsWith(INSTRUCTIONS_PREFIX)) {
                this.parseInstructions(new StringBuffer(String.valueOf(prefix)).append(INSTRUCTIONS_PREFIX).toString(), unitInstructions);
                continue;
            }
            this.next();
        }
        MetadataFactory.InstallableUnitDescription description = unitHostRequirements.isEmpty() ? new MetadataFactory.InstallableUnitDescription() : new MetadataFactory.InstallableUnitFragmentDescription();
        description.setId(unitId);
        description.setVersion(unitVersion);
        description.setSingleton(unitSingleton);
        description.setFilter(unitFilter);
        if (unitCopyright != null || unitCopyrightLocation != null) {
            try {
                URI uri = unitCopyrightLocation != null ? new URI(unitCopyrightLocation) : null;
                description.setCopyright(MetadataFactory.createCopyright((URI)uri, unitCopyright));
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalStateException(new StringBuffer("bad copyright URI at token: ").append(this.current).append(", ").append(this.currentValue()).toString());
            }
        }
        if (unitTouchpointId != null) {
            description.setTouchpointType(MetadataFactory.createTouchpointType(unitTouchpointId, unitTouchpointVersion));
        }
        if (unitUpdateId != null) {
            description.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor(unitUpdateId, unitUpdateRange, (int)unitUpdateSeverity, unitUpdateDescription));
        }
        if (!unitLicenses.isEmpty()) {
            description.setLicenses(unitLicenses.toArray(new ILicense[unitLicenses.size()]));
        }
        if (!unitArtifacts.isEmpty()) {
            description.setArtifacts(unitArtifacts.toArray(new IArtifactKey[unitArtifacts.size()]));
        }
        if (!unitHostRequirements.isEmpty()) {
            ((MetadataFactory.InstallableUnitFragmentDescription)description).setHost(unitHostRequirements.toArray(new IRequirement[unitHostRequirements.size()]));
        }
        if (!unitProperties.isEmpty()) {
            for (Map.Entry entry : unitProperties.entrySet()) {
                description.setProperty((String)entry.getKey(), (String)entry.getValue());
            }
        }
        if (!unitProvides.isEmpty()) {
            description.setCapabilities(unitProvides.toArray(new IProvidedCapability[unitProvides.size()]));
        }
        if (!unitRequires.isEmpty()) {
            description.setRequirements(unitRequires.toArray(new IRequirement[unitRequires.size()]));
        }
        if (!unitMetaRequirements.isEmpty()) {
            description.setMetaRequirements(unitMetaRequirements.toArray(new IRequirement[unitMetaRequirements.size()]));
        }
        if (!unitInstructions.isEmpty()) {
            description.addTouchpointData(MetadataFactory.createTouchpointData(unitInstructions));
        }
        this.adviceOtherIUs.add(description);
    }

    private void parseLicenses(String prefix, List<ILicense> licenses) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex != -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).append(" = ").append(this.currentValue()).toString());
            }
            this.parseLicense(this.current, licenses);
        }
    }

    private void parseLicense(String prefix, List<ILicense> licenses) {
        String body = this.currentValue();
        this.next();
        prefix = new StringBuffer(String.valueOf(prefix)).append('.').toString();
        String location = null;
        if (this.current != null && this.current.startsWith(prefix)) {
            if (this.current.substring(prefix.length()).equals(LOCATION)) {
                location = this.currentValue();
            }
            this.next();
        }
        try {
            URI uri = location != null ? new URI(location) : null;
            ILicense license = MetadataFactory.createLicense((URI)uri, (String)body);
            licenses.add(license);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalStateException(new StringBuffer("bad license URI at token: ").append(this.current).append(", ").append(this.currentValue()).toString());
        }
    }

    private void parseArtifacts(String prefix, List<IArtifactKey> artifacts) {
        while (this.current != null && this.current.startsWith(prefix)) {
            int dotIndex = this.current.indexOf(46, prefix.length());
            if (dotIndex == -1) {
                throw new IllegalStateException(new StringBuffer("bad token: ").append(this.current).append(" = ").append(this.currentValue()).toString());
            }
            this.parseArtifact(this.current.substring(0, dotIndex + 1), artifacts);
        }
    }

    private void parseArtifact(String prefix, List<IArtifactKey> artifacts) {
        String artifactClassifier = null;
        String artifactId = null;
        Version artifactVersion = null;
        while (this.current != null && this.current.startsWith(prefix)) {
            String token = this.current.substring(prefix.length());
            if (token.equals(CLASSIFIER)) {
                artifactClassifier = this.currentValue();
            } else if (token.equals(ID)) {
                artifactId = this.currentValue();
            } else if (token.equals(VERSION)) {
                artifactVersion = Version.parseVersion((String)this.substituteVersionAndQualifier(this.currentValue()));
            }
            this.next();
        }
        ArtifactKey artifactKey = new ArtifactKey(artifactClassifier, artifactId, artifactVersion);
        artifacts.add((IArtifactKey)artifactKey);
    }

    private String substituteVersionAndQualifier(String version) {
        if (version.indexOf(VERSION_SUBSTITUTION) != -1) {
            version = AdviceFileParser.replace(version, VERSION_SUBSTITUTION, this.hostVersion.toString());
        }
        if (version.indexOf(QUALIFIER_SUBSTITUTION) != -1) {
            try {
                String qualifier = PublisherHelper.toOSGiVersion(this.hostVersion).getQualifier();
                if (qualifier == null) {
                    qualifier = "";
                }
                if (qualifier.length() == 0) {
                    version = AdviceFileParser.replace(version, ".$qualifier$", "");
                }
                version = AdviceFileParser.replace(version, QUALIFIER_SUBSTITUTION, qualifier);
            }
            catch (UnsupportedOperationException unsupportedOperationException) {}
        }
        return version;
    }

    public static String replace(String source, String from, String to) {
        if (from.length() == 0) {
            return source;
        }
        StringBuffer buffer = new StringBuffer();
        int current = 0;
        int pos = 0;
        while (pos != -1) {
            pos = source.indexOf(from, current);
            if (pos == -1) {
                buffer.append(source.substring(current));
                continue;
            }
            buffer.append(source.substring(current, pos));
            buffer.append(to);
            current = pos + from.length();
        }
        return buffer.toString();
    }

    public Map<String, String> getProperties() {
        if (this.adviceProperties.isEmpty()) {
            return null;
        }
        return this.adviceProperties;
    }

    public IRequirement[] getRequiredCapabilities() {
        if (this.adviceRequires.isEmpty()) {
            return null;
        }
        return this.adviceRequires.toArray(new IRequirement[this.adviceRequires.size()]);
    }

    public IProvidedCapability[] getProvidedCapabilities() {
        if (this.adviceProvides.isEmpty()) {
            return null;
        }
        return this.adviceProvides.toArray(new IProvidedCapability[this.adviceProvides.size()]);
    }

    public IUpdateDescriptor getUpdateDescriptor() {
        return this.adviceUpdateDescriptor;
    }

    public Map<String, ITouchpointInstruction> getTouchpointInstructions() {
        if (this.adviceInstructions.isEmpty()) {
            return null;
        }
        return this.adviceInstructions;
    }

    public MetadataFactory.InstallableUnitDescription[] getAdditionalInstallableUnitDescriptions() {
        if (this.adviceOtherIUs.isEmpty()) {
            return null;
        }
        return this.adviceOtherIUs.toArray(new MetadataFactory.InstallableUnitDescription[this.adviceOtherIUs.size()]);
    }

    public IRequirement[] getMetaRequiredCapabilities() {
        if (this.adviceMetaRequires.isEmpty()) {
            return null;
        }
        return this.adviceMetaRequires.toArray(new IRequirement[this.adviceMetaRequires.size()]);
    }
}

