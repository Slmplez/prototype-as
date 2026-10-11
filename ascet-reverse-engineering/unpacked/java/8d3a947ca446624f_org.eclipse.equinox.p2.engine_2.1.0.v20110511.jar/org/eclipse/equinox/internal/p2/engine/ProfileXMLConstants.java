/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.persistence.XMLConstants
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.persistence.XMLConstants;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;

public interface ProfileXMLConstants
extends XMLConstants {
    public static final Version CURRENT_VERSION = Version.createOSGi((int)1, (int)0, (int)0);
    public static final Version COMPATIBLE_VERSION = Version.createOSGi((int)0, (int)0, (int)1);
    public static final VersionRange XML_TOLERANCE = new VersionRange(COMPATIBLE_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
    public static final String PROFILE_ELEMENT = "profile";
    public static final String TIMESTAMP_ATTRIBUTE = "timestamp";
    public static final String IUS_PROPERTIES_ELEMENT = "iusProperties";
    public static final String IU_PROPERTIES_ELEMENT = "iuProperties";
    public static final String PROFILE_TARGET = "profile";
}

