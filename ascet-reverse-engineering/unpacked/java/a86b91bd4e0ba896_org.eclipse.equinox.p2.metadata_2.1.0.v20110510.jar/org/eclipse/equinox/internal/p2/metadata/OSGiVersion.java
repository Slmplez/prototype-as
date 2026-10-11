/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.IVersionFormat;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OSGiVersion
extends BasicVersion {
    private static final long serialVersionUID = -4530178927569560877L;
    private static final boolean[] allowedOSGiChars = new boolean[128];
    private final int major;
    private final int minor;
    private final int micro;
    private final Comparable<?> qualifier;

    static {
        int c = 48;
        while (c <= 57) {
            OSGiVersion.allowedOSGiChars[c] = true;
            ++c;
        }
        c = 65;
        while (c <= 90) {
            OSGiVersion.allowedOSGiChars[c] = true;
            ++c;
        }
        c = 97;
        while (c <= 122) {
            OSGiVersion.allowedOSGiChars[c] = true;
            ++c;
        }
        OSGiVersion.allowedOSGiChars[95] = true;
        OSGiVersion.allowedOSGiChars[45] = true;
    }

    public static boolean isValidOSGiQualifier(Comparable<?> e) {
        if (e == VersionVector.MAXS_VALUE) {
            return true;
        }
        if (!(e instanceof String)) {
            return false;
        }
        String s = (String)((Object)e);
        int idx = s.length();
        boolean[] allowed = allowedOSGiChars;
        while (--idx >= 0) {
            char c = s.charAt(idx);
            if (c >= '-' && c <= 'z' && allowed[c]) continue;
            return false;
        }
        return true;
    }

    static BasicVersion fromVector(List<Comparable<?>> vector) {
        int vtop = vector.size() - 1;
        Comparable<?> pad = vector.get(vtop);
        if (vtop != 4) {
            if (vtop == 0) {
                if (pad == null) {
                    return (BasicVersion)emptyVersion;
                }
                if (pad == VersionVector.MAX_VALUE) {
                    return (BasicVersion)MAX_VERSION;
                }
            }
            throw new IllegalArgumentException();
        }
        int major = (Integer)vector.get(0);
        int minor = (Integer)vector.get(1);
        int micro = (Integer)vector.get(2);
        Comparable<?> qualifier = vector.get(3);
        return major == 0 && minor == 0 && micro == 0 && qualifier == "" ? (BasicVersion)emptyVersion : new OSGiVersion(major, minor, micro, qualifier);
    }

    public OSGiVersion(int major, int minor, int micro, Comparable<? extends Object> qualifier) {
        this.major = major;
        this.minor = minor;
        this.micro = micro;
        if (!OSGiVersion.isValidOSGiQualifier(qualifier)) {
            throw new IllegalArgumentException(NLS.bind((String)Messages._0_is_not_a_valid_qualifier_in_osgi_1, (Object)"qualifier", (Object)this));
        }
        if (qualifier instanceof String) {
            qualifier = ((String)qualifier).intern();
        }
        this.qualifier = qualifier;
    }

    @Override
    public int compareTo(Version v) {
        int result;
        if (!(v instanceof OSGiVersion)) {
            BasicVersion ov = (BasicVersion)v;
            result = VersionVector.compare(this.getVector(), null, ov.getVector(), ov.getPad());
        } else {
            OSGiVersion ov = (OSGiVersion)v;
            result = this.major - ov.major;
            if (result == 0 && (result = this.minor - ov.minor) == 0 && (result = this.micro - ov.micro) == 0) {
                result = VersionVector.compareSegments(this.qualifier, ov.qualifier);
            }
        }
        return result;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof OSGiVersion)) {
            if (object instanceof BasicVersion) {
                BasicVersion ov = (BasicVersion)object;
                return VersionVector.equals(this.getVector(), null, ov.getVector(), ov.getPad());
            }
            return false;
        }
        OSGiVersion other = (OSGiVersion)object;
        return this.micro == other.micro && this.minor == other.minor && this.major == other.major && this.qualifier.equals(other.qualifier);
    }

    @Override
    public IVersionFormat getFormat() {
        return VersionFormat.OSGI_FORMAT;
    }

    @Override
    public int getMajor() {
        return this.major;
    }

    @Override
    public int getMicro() {
        return this.micro;
    }

    @Override
    public int getMinor() {
        return this.minor;
    }

    @Override
    public String getOriginal() {
        return this.toString();
    }

    @Override
    public String getQualifier() {
        return this.qualifier == VersionVector.MAXS_VALUE ? "zzz" : (String)((Object)this.qualifier);
    }

    public int hashCode() {
        return (this.major << 24) + (this.minor << 16) + (this.micro << 8) + this.qualifier.hashCode();
    }

    @Override
    public boolean isOSGiCompatible() {
        return true;
    }

    @Override
    public void originalToString(StringBuffer sb, boolean rangeSafe) {
        this.toString(sb);
    }

    @Override
    public void rawToString(StringBuffer sb, boolean rangeSafe) {
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        sb.append(this.micro);
        sb.append('.');
        sb.append('\'');
        sb.append(this.qualifier);
        sb.append('\'');
    }

    @Override
    public void toString(StringBuffer sb) {
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        sb.append(this.micro);
        if (this.qualifier != "") {
            sb.append('.');
            sb.append(this.getQualifier());
        }
    }

    @Override
    public Comparable<?>[] getVector() {
        return new Comparable[]{VersionParser.valueOf(this.major), VersionParser.valueOf(this.minor), VersionParser.valueOf(this.micro), this.qualifier};
    }

    @Override
    public Comparable<?> getPad() {
        return null;
    }

    @Override
    public Comparable<?> getSegment(int index) {
        switch (index) {
            case 0: {
                return VersionParser.valueOf(this.major);
            }
            case 1: {
                return VersionParser.valueOf(this.minor);
            }
            case 2: {
                return VersionParser.valueOf(this.micro);
            }
            case 3: {
                return this.qualifier;
            }
        }
        throw new ArrayIndexOutOfBoundsException(index);
    }

    @Override
    public int getSegmentCount() {
        return 4;
    }

    private Object readResolve() {
        OSGiVersion v = this;
        if (this.qualifier.equals("")) {
            v = new OSGiVersion(this.major, this.minor, this.micro, (Comparable<? extends Object>)((Object)""));
        }
        return v;
    }
}

