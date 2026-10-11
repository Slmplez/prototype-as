/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.persistence.XMLConstants
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 */
package org.eclipse.equinox.internal.p2.metadata.repository.io;

import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;

public interface XMLConstants
extends org.eclipse.equinox.internal.p2.persistence.XMLConstants {
    public static final Version CURRENT_VERSION = Version.createOSGi((int)0, (int)0, (int)1);
    public static final VersionRange XML_TOLERANCE = new VersionRange(CURRENT_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
    public static final String PI_METADATA_TARGET = "metadata";
    public static final String INSTALLABLE_UNITS_ELEMENT = "units";
    public static final String INSTALLABLE_UNIT_ELEMENT = "unit";
    public static final String REPOSITORY_REFERENCES_ELEMENT = "references";
    public static final String REPOSITORY_REFERENCE_ELEMENT = "repository";
    public static final String OPTIONS_ATTRIBUTE = "options";
    public static final String ARTIFACT_KEYS_ELEMENT = "artifacts";
    public static final String ARTIFACT_KEY_ELEMENT = "artifact";
    public static final String REQUIREMENTS_ELEMENT = "requires";
    public static final String HOST_REQUIREMENTS_ELEMENT = "hostRequirements";
    public static final String META_REQUIREMENTS_ELEMENT = "metaRequirements";
    public static final String REQUIREMENT_ELEMENT = "required";
    public static final String PROVIDED_CAPABILITIES_ELEMENT = "provides";
    public static final String PROVIDED_CAPABILITY_ELEMENT = "provided";
    public static final String[] REQUIRED_PROVIDED_CAPABILITY_ATTRIBUTES = new String[]{"namespace", "name", "version"};
    public static final String TOUCHPOINT_TYPE_ELEMENT = "touchpoint";
    public static final String TOUCHPOINT_DATA_ELEMENT = "touchpointData";
    public static final String IU_FILTER_ELEMENT = "filter";
    public static final String UPDATE_DESCRIPTOR_ELEMENT = "update";
    public static final String APPLICABILITY_SCOPE = "patchScope";
    public static final String APPLY_ON = "scope";
    public static final String REQUIREMENT_CHANGES = "changes";
    public static final String REQUIREMENT_CHANGE = "change";
    public static final String REQUIREMENT_FROM = "from";
    public static final String REQUIREMENT_TO = "to";
    public static final String LIFECYCLE = "lifeCycle";
    public static final String SINGLETON_ATTRIBUTE = "singleton";
    public static final String FRAGMENT_ATTRIBUTE = "fragment";
    public static final String[] REQUIRED_IU_ATTRIBUTES = new String[]{"id", "version"};
    public static final String[] OPTIONAL_IU_ATTRIBUTES = new String[]{"singleton"};
    public static final String GENERATION_ATTRIBUTE = "generation";
    public static final String CAPABILITY_FILTER_ELEMENT = "filter";
    public static final String REQUIREMENT_DESCRIPTION_ELEMENT = "description";
    public static final String CAPABILITY_OPTIONAL_ATTRIBUTE = "optional";
    public static final String CAPABILITY_MULTIPLE_ATTRIBUTE = "multiple";
    public static final String CAPABILITY_GREED_ATTRIBUTE = "greedy";
    public static final String[] REQIURED_CAPABILITY_ATTRIBUTES = new String[]{"namespace", "name", "range"};
    public static final String[] REQIUREMENT_ATTRIBUTES = new String[]{"match"};
    public static final String[] OPTIONAL_CAPABILITY_ATTRIBUTES = new String[]{"optional", "multiple", "greedy"};
    public static final String[] OPTIONAL_REQUIREMENT_ATTRIBUTES = new String[]{"matchParameters", "min", "max", "greedy"};
    public static final String ARTIFACT_KEY_CLASSIFIER_ATTRIBUTE = "classifier";
    public static final String TOUCHPOINT_DATA_INSTRUCTIONS_ELEMENT = "instructions";
    public static final String TOUCHPOINT_DATA_INSTRUCTION_ELEMENT = "instruction";
    public static final String TOUCHPOINT_DATA_INSTRUCTION_KEY_ATTRIBUTE = "key";
    public static final String TOUCHPOINT_DATA_INSTRUCTION_IMPORT_ATTRIBUTE = "import";
    public static final String UPDATE_DESCRIPTOR_SEVERITY = "severity";
}

