/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.component;

public interface ComponentConstants {
    public static final String SERVICE_COMPONENT = "Service-Component";
    public static final String COMPONENT_NAME = "component.name";
    public static final String COMPONENT_ID = "component.id";
    public static final String COMPONENT_FACTORY = "component.factory";
    public static final String REFERENCE_TARGET_SUFFIX = ".target";
    public static final int DEACTIVATION_REASON_UNSPECIFIED = 0;
    public static final int DEACTIVATION_REASON_DISABLED = 1;
    public static final int DEACTIVATION_REASON_REFERENCE = 2;
    public static final int DEACTIVATION_REASON_CONFIGURATION_MODIFIED = 3;
    public static final int DEACTIVATION_REASON_CONFIGURATION_DELETED = 4;
    public static final int DEACTIVATION_REASON_DISPOSED = 5;
    public static final int DEACTIVATION_REASON_BUNDLE_STOPPED = 6;
}

