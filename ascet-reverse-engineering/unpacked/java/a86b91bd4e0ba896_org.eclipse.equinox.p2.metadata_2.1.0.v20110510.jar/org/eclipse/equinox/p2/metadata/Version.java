/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.io.Serializable;
import org.eclipse.equinox.internal.p2.metadata.OSGiVersion;
import org.eclipse.equinox.internal.p2.metadata.OmniVersion;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.IVersionFormat;
import org.eclipse.equinox.p2.metadata.VersionFormatException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Version
implements Comparable<Version>,
Serializable {
    public static final String RAW_PREFIX = "raw:";
    public static final Version MAX_VERSION = OmniVersion.createMaxVersion();
    public static final Version emptyVersion = OmniVersion.createMinVersion();
    private static final long serialVersionUID = 6218979149720923857L;

    public static IVersionFormat compile(String format) throws VersionFormatException {
        return VersionFormat.compile(format, 0, format.length());
    }

    public static Version create(String version) {
        return version == null ? null : VersionParser.parse(version, 0, version.length());
    }

    public static Version createOSGi(int major, int minor, int micro) {
        return Version.createOSGi(major, minor, micro, null);
    }

    public static Version createOSGi(int major, int minor, int micro, String qualifier) {
        Object logicQualifier;
        if (qualifier == null || qualifier.length() == 0) {
            if (major == 0 && minor == 0 && micro == 0) {
                return emptyVersion;
            }
            logicQualifier = "";
        } else {
            logicQualifier = qualifier.equals("zzz") ? VersionVector.MAXS_VALUE : qualifier;
        }
        return new OSGiVersion(major, minor, micro, (Comparable<? extends Object>)logicQualifier);
    }

    public static Version parseVersion(String version) {
        if (version == null || version.length() == 0) {
            return emptyVersion;
        }
        Version v = Version.create(version);
        return v == null ? emptyVersion : v;
    }

    public abstract IVersionFormat getFormat();

    public abstract String getOriginal();

    public abstract Comparable<?> getPad();

    public abstract Comparable<?> getSegment(int var1);

    public abstract int getSegmentCount();

    public abstract boolean isOSGiCompatible();

    public String toString() {
        StringBuffer buf = new StringBuffer(20);
        this.toString(buf);
        return buf.toString();
    }

    public abstract void toString(StringBuffer var1);
}

