/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collections;
import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.internal.p2.metadata.OSGiVersion;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.IVersionFormat;
import org.eclipse.equinox.p2.metadata.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OmniVersion
extends BasicVersion {
    private static final long serialVersionUID = 1996212688810048879L;
    private static OmniVersion minimumVersion;
    private static OmniVersion maximumVersion;
    private static final Comparable<?>[] emptyVector;
    private final Comparable<?>[] vector;
    private final Comparable<?> padValue;
    private final IVersionFormat format;
    private final String original;

    static {
        emptyVector = new Comparable[0];
    }

    static BasicVersion fromVector(List<Comparable<?>> vector, IVersionFormat format, String original) {
        int vtop = vector.size() - 1;
        Comparable<?> padValue = vector.get(vtop);
        if (vtop == 0) {
            if (padValue == null) {
                return (BasicVersion)emptyVersion;
            }
            if (padValue == VersionVector.MAX_VALUE) {
                return (BasicVersion)MAX_VERSION;
            }
        }
        if (vtop == 3 && padValue == null && vector.get(0) == VersionParser.ZERO_INT && vector.get(1) == VersionParser.ZERO_INT && vector.get(2) == VersionParser.ZERO_INT) {
            return (BasicVersion)emptyVersion;
        }
        return new OmniVersion(vector, format, original);
    }

    public static Version createMinVersion() {
        if (minimumVersion == null) {
            minimumVersion = new OmniVersion(Collections.singletonList(null), null, null);
        }
        return minimumVersion;
    }

    public static Version createMaxVersion() {
        if (maximumVersion == null) {
            maximumVersion = new OmniVersion(Collections.singletonList(VersionVector.MAX_VALUE), null, null);
        }
        return maximumVersion;
    }

    private OmniVersion(List<Comparable<?>> vector, IVersionFormat format, String original) {
        int vtop = vector.size() - 1;
        if (vtop > 0) {
            Comparable[] v = new Comparable[vtop];
            int idx = 0;
            while (idx < vtop) {
                v[idx] = vector.get(idx);
                ++idx;
            }
            this.vector = v;
        } else {
            this.vector = emptyVector;
        }
        this.padValue = vector.get(vtop);
        this.format = format;
        this.original = original;
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof BasicVersion)) {
            return false;
        }
        BasicVersion ov = (BasicVersion)o;
        return VersionVector.equals(this.vector, this.padValue, ov.getVector(), ov.getPad());
    }

    @Override
    public IVersionFormat getFormat() {
        return this.format;
    }

    @Override
    public int getMajor() {
        return this.getIntElement(0);
    }

    @Override
    public int getMicro() {
        return this.getIntElement(2);
    }

    @Override
    public int getMinor() {
        return this.getIntElement(1);
    }

    @Override
    public String getOriginal() {
        return this.original;
    }

    @Override
    public String getQualifier() {
        if (this.vector.length == 3) {
            return "";
        }
        if (this.vector.length != 4) {
            throw new UnsupportedOperationException();
        }
        Comparable<?> qualifier = this.vector[3];
        if (qualifier == VersionVector.MAXS_VALUE) {
            return "zzz";
        }
        if (!(qualifier instanceof String)) {
            throw new UnsupportedOperationException();
        }
        return (String)((Object)qualifier);
    }

    public int hashCode() {
        return VersionVector.hashCode(this.vector, this.padValue);
    }

    @Override
    public boolean isOSGiCompatible() {
        if (this.vector.length < 3 || this.vector.length > 4) {
            return this == emptyVersion || this == MAX_VERSION;
        }
        if (this.getPad() != null) {
            return false;
        }
        int i = 0;
        while (i < 3) {
            Comparable<?> e = this.vector[i];
            if (!(e instanceof Integer) || (Integer)e < 0) {
                return false;
            }
            ++i;
        }
        if (this.vector.length == 3) {
            return true;
        }
        return OSGiVersion.isValidOSGiQualifier(this.vector[3]);
    }

    @Override
    public void originalToString(StringBuffer sb, boolean rangeSafe) {
        if (this.original != null) {
            if (rangeSafe) {
                String s = this.original;
                int end = s.length();
                int idx = 0;
                while (idx < end) {
                    char c = s.charAt(idx);
                    if (c == '\\' || c == '[' || c == '(' || c == ']' || c == ')' || c == ',' || c <= ' ') {
                        sb.append('\\');
                    }
                    sb.append(c);
                    ++idx;
                }
            } else {
                sb.append(this.original);
            }
        }
    }

    @Override
    public void rawToString(StringBuffer sb, boolean rangeSafe) {
        VersionVector.toString(sb, this.vector, this.padValue, rangeSafe);
    }

    @Override
    public void toString(StringBuffer sb) {
        if (this == emptyVersion) {
            sb.append("0.0.0");
        } else {
            sb.append("raw:");
            VersionVector.toString(sb, this.vector, this.padValue, false);
            if (this.format != null || this.original != null) {
                sb.append('/');
                if (this.format != null) {
                    this.format.toString(sb);
                }
                if (this.original != null) {
                    sb.append(':');
                    this.originalToString(sb, false);
                }
            }
        }
    }

    private int getIntElement(int i) {
        if (this.vector.length <= i || !(this.vector[i] instanceof Integer)) {
            throw new UnsupportedOperationException();
        }
        return (Integer)this.vector[i];
    }

    private Object readResolve() {
        Version v = this;
        if (this.equals(MAX_VERSION)) {
            v = MAX_VERSION;
        } else if (this.equals(emptyVersion)) {
            v = emptyVersion;
        }
        return v;
    }

    @Override
    public Comparable<?> getPad() {
        return this.padValue;
    }

    @Override
    public Comparable<?> getSegment(int index) {
        return this.vector[index];
    }

    @Override
    public int getSegmentCount() {
        return this.vector.length;
    }

    @Override
    Comparable<?>[] getVector() {
        return this.vector;
    }

    @Override
    public int compareTo(Version v) {
        BasicVersion ov = (BasicVersion)v;
        return VersionVector.compare(this.vector, this.padValue, ov.getVector(), ov.getPad());
    }
}

