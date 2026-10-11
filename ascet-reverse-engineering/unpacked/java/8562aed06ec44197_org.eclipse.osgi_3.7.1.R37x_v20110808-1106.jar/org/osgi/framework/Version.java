/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.util.NoSuchElementException;
import java.util.StringTokenizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Version
implements Comparable<Version> {
    private final int major;
    private final int minor;
    private final int micro;
    private final String qualifier;
    private static final String SEPARATOR = ".";
    private transient String versionString;
    public static final Version emptyVersion = new Version(0, 0, 0);

    public Version(int major, int minor, int micro) {
        this(major, minor, micro, null);
    }

    public Version(int major, int minor, int micro, String qualifier) {
        if (qualifier == null) {
            qualifier = "";
        }
        this.major = major;
        this.minor = minor;
        this.micro = micro;
        this.qualifier = qualifier;
        this.versionString = null;
        this.validate();
    }

    public Version(String version) {
        int maj = 0;
        int min = 0;
        int mic = 0;
        String qual = "";
        try {
            StringTokenizer st = new StringTokenizer(version, SEPARATOR, true);
            maj = Integer.parseInt(st.nextToken());
            if (st.hasMoreTokens()) {
                st.nextToken();
                min = Integer.parseInt(st.nextToken());
                if (st.hasMoreTokens()) {
                    st.nextToken();
                    mic = Integer.parseInt(st.nextToken());
                    if (st.hasMoreTokens()) {
                        st.nextToken();
                        qual = st.nextToken("");
                        if (st.hasMoreTokens()) {
                            throw new IllegalArgumentException(new StringBuffer("invalid format: ").append(version).toString());
                        }
                    }
                }
            }
        }
        catch (NoSuchElementException e) {
            IllegalArgumentException iae = new IllegalArgumentException(new StringBuffer("invalid format: ").append(version).toString());
            iae.initCause(e);
            throw iae;
        }
        this.major = maj;
        this.minor = min;
        this.micro = mic;
        this.qualifier = qual;
        this.versionString = null;
        this.validate();
    }

    private void validate() {
        if (this.major < 0) {
            throw new IllegalArgumentException("negative major");
        }
        if (this.minor < 0) {
            throw new IllegalArgumentException("negative minor");
        }
        if (this.micro < 0) {
            throw new IllegalArgumentException("negative micro");
        }
        char[] chars = this.qualifier.toCharArray();
        int i = 0;
        int length = chars.length;
        while (i < length) {
            char ch = chars[i];
            if (!('A' <= ch && ch <= 'Z' || 'a' <= ch && ch <= 'z' || '0' <= ch && ch <= '9' || ch == '_' || ch == '-')) {
                throw new IllegalArgumentException(new StringBuffer("invalid qualifier: ").append(this.qualifier).toString());
            }
            ++i;
        }
    }

    public static Version parseVersion(String version) {
        if (version == null) {
            return emptyVersion;
        }
        if ((version = version.trim()).length() == 0) {
            return emptyVersion;
        }
        return new Version(version);
    }

    public int getMajor() {
        return this.major;
    }

    public int getMinor() {
        return this.minor;
    }

    public int getMicro() {
        return this.micro;
    }

    public String getQualifier() {
        return this.qualifier;
    }

    public String toString() {
        if (this.versionString != null) {
            return this.versionString;
        }
        int q = this.qualifier.length();
        StringBuffer result = new StringBuffer(20 + q);
        result.append(this.major);
        result.append(SEPARATOR);
        result.append(this.minor);
        result.append(SEPARATOR);
        result.append(this.micro);
        if (q > 0) {
            result.append(SEPARATOR);
            result.append(this.qualifier);
        }
        this.versionString = result.toString();
        return this.versionString;
    }

    public int hashCode() {
        return (this.major << 24) + (this.minor << 16) + (this.micro << 8) + this.qualifier.hashCode();
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Version)) {
            return false;
        }
        Version other = (Version)object;
        return this.major == other.major && this.minor == other.minor && this.micro == other.micro && this.qualifier.equals(other.qualifier);
    }

    @Override
    public int compareTo(Version other) {
        if (other == this) {
            return 0;
        }
        int result = this.major - other.major;
        if (result != 0) {
            return result;
        }
        result = this.minor - other.minor;
        if (result != 0) {
            return result;
        }
        result = this.micro - other.micro;
        if (result != 0) {
            return result;
        }
        return this.qualifier.compareTo(other.qualifier);
    }
}

