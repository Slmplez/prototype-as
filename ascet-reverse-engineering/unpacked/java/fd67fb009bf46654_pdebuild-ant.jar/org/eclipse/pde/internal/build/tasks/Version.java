/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.tasks;

import java.util.NoSuchElementException;
import java.util.StringTokenizer;

public class Version
implements Comparable {
    private final int major;
    private final int minor;
    private final int micro;
    private final String qualifier;
    private static final String SEPARATOR = ".";
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
        this.validate();
    }

    public Version(String version) {
        int parsedMajor = 0;
        int parsedMinor = 0;
        int parsedMicro = 0;
        String parsedQualifier = "";
        try {
            StringTokenizer st = new StringTokenizer(version, SEPARATOR, true);
            parsedMajor = Integer.parseInt(st.nextToken());
            if (st.hasMoreTokens()) {
                st.nextToken();
                parsedMinor = Integer.parseInt(st.nextToken());
                if (st.hasMoreTokens()) {
                    st.nextToken();
                    parsedMicro = Integer.parseInt(st.nextToken());
                    if (st.hasMoreTokens()) {
                        st.nextToken();
                        parsedQualifier = st.nextToken();
                        if (st.hasMoreTokens()) {
                            throw new IllegalArgumentException("invalid format");
                        }
                    }
                }
            }
        }
        catch (NoSuchElementException noSuchElementException) {
            throw new IllegalArgumentException("invalid format");
        }
        this.major = parsedMajor;
        this.minor = parsedMinor;
        this.micro = parsedMicro;
        this.qualifier = parsedQualifier;
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
        int length = this.qualifier.length();
        int i = 0;
        while (i < length) {
            if ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-".indexOf(this.qualifier.charAt(i)) == -1) {
                throw new IllegalArgumentException("invalid qualifier");
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
        String base = String.valueOf(this.major) + SEPARATOR + this.minor + SEPARATOR + this.micro;
        if (this.qualifier.length() == 0) {
            return base;
        }
        return String.valueOf(base) + SEPARATOR + this.qualifier;
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

    public int compareTo(Object object) {
        if (object == this) {
            return 0;
        }
        Version other = (Version)object;
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

