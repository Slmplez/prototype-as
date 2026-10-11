/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.util;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.osgi.framework.Version;

public class VersionUtil {
    public static IStatus validateVersion(String versionString) {
        try {
            if (versionString != null) {
                new Version(versionString.trim());
            }
        }
        catch (IllegalArgumentException e) {
            return new Status(4, "org.eclipse.pde.core", 4, PDECoreMessages.BundleErrorReporter_InvalidFormatInBundleVersion, (Throwable)e);
        }
        return Status.OK_STATUS;
    }

    public static IStatus validateVersionRange(String versionRangeString) {
        try {
            new VersionRange(versionRangeString);
        }
        catch (IllegalArgumentException e) {
            return new Status(4, "org.eclipse.pde.core", 4, PDECoreMessages.BundleErrorReporter_invalidVersionRangeFormat, (Throwable)e);
        }
        return Status.OK_STATUS;
    }

    public static boolean compare(String id1, String version1, String id2, String version2, int match) {
        if (!id1.equals(id2)) {
            return false;
        }
        try {
            Version v1 = Version.parseVersion((String)version1);
            Version v2 = Version.parseVersion((String)version2);
            switch (match) {
                case 0: 
                case 2: {
                    return VersionUtil.isCompatibleWith(v1, v2);
                }
                case 1: {
                    return VersionUtil.isEquivalentTo(v1, v2);
                }
                case 3: {
                    return v1.equals((Object)v2);
                }
                case 4: {
                    return VersionUtil.isGreaterOrEqualTo(v1, v2);
                }
            }
        }
        catch (RuntimeException runtimeException) {}
        return version1.equals(version2);
    }

    public static boolean isEmptyVersion(String version) {
        if (version == null) {
            return true;
        }
        return (version = version.trim()).length() == 0 || version.equals(Version.emptyVersion.toString());
    }

    public static boolean isCompatibleWith(Version v1, Version v2) {
        if (v1.getMajor() != v2.getMajor()) {
            return false;
        }
        if (v1.getMinor() > v2.getMinor()) {
            return true;
        }
        if (v1.getMinor() < v2.getMinor()) {
            return false;
        }
        if (v1.getMicro() > v2.getMicro()) {
            return true;
        }
        if (v1.getMicro() < v2.getMicro()) {
            return false;
        }
        return v1.getQualifier().compareTo(v2.getQualifier()) >= 0;
    }

    public static boolean isEquivalentTo(Version v1, Version v2) {
        if (v1.getMajor() != v2.getMajor() || v1.getMinor() != v2.getMinor()) {
            return false;
        }
        if (v1.getMicro() > v2.getMicro()) {
            return true;
        }
        if (v1.getMicro() < v2.getMicro()) {
            return false;
        }
        return v1.getQualifier().compareTo(v2.getQualifier()) >= 0;
    }

    public static boolean isGreaterOrEqualTo(Version v1, Version v2) {
        if (v1.getMajor() > v2.getMajor()) {
            return true;
        }
        if (v1.getMajor() == v2.getMajor()) {
            if (v1.getMinor() > v2.getMinor()) {
                return true;
            }
            if (v1.getMinor() == v2.getMinor()) {
                if (v1.getMicro() > v2.getMicro()) {
                    return true;
                }
                if (v1.getMicro() == v2.getMicro()) {
                    return v1.getQualifier().compareTo(v2.getQualifier()) >= 0;
                }
            }
        }
        return false;
    }

    public static int compareMacroMinorMicro(Version v1, Version v2) {
        int result = v1.getMajor() - v2.getMajor();
        if (result != 0) {
            return result;
        }
        result = v1.getMinor() - v2.getMinor();
        if (result != 0) {
            return result;
        }
        result = v1.getMicro() - v2.getMicro();
        return result;
    }

    public static String computeInitialPluginVersion(String version) {
        if (version != null && VersionUtil.validateVersion(version).isOK()) {
            Version pvi = Version.parseVersion((String)version);
            return String.valueOf(pvi.getMajor()) + "." + pvi.getMinor() + "." + pvi.getMicro();
        }
        return version;
    }
}

