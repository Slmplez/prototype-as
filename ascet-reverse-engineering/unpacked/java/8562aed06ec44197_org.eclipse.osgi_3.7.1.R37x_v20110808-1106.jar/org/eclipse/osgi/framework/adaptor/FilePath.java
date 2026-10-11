/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.File;

public class FilePath {
    private static final boolean WINDOWS = File.separatorChar == '\\';
    private static final String CURRENT_DIR = ".";
    private static final char DEVICE_SEPARATOR = ':';
    private static final byte HAS_LEADING = 1;
    private static final byte HAS_TRAILING = 4;
    private static final String[] NO_SEGMENTS = new String[0];
    private static final String PARENT_DIR = "..";
    private static final char SEPARATOR = '/';
    private static final String UNC_SLASHES = "//";
    private String device;
    private byte flags;
    private String[] segments;

    public FilePath(File location) {
        this.initialize(location.getPath());
        this.flags = location.isDirectory() ? (byte)(this.flags | 4) : (byte)(this.flags & 0xFFFFFFFB);
    }

    public FilePath(String original) {
        this.initialize(original);
    }

    private int computeSegmentCount(String path) {
        int i;
        int len = path.length();
        if (len == 0 || len == 1 && path.charAt(0) == '/') {
            return 0;
        }
        int count = 1;
        int prev = -1;
        while ((i = path.indexOf(47, prev + 1)) != -1) {
            if (i != prev + 1 && i != len) {
                ++count;
            }
            prev = i;
        }
        if (path.charAt(len - 1) == '/') {
            --count;
        }
        return count;
    }

    private String[] computeSegments(String path) {
        int maxSegmentCount = this.computeSegmentCount(path);
        if (maxSegmentCount == 0) {
            return NO_SEGMENTS;
        }
        String[] newSegments = new String[maxSegmentCount];
        int len = path.length();
        int firstPosition = this.isAbsolute() ? 1 : 0;
        int lastPosition = this.hasTrailingSlash() ? len - 2 : len - 1;
        int next = firstPosition;
        int actualSegmentCount = 0;
        int i = 0;
        while (i < maxSegmentCount) {
            int start = next;
            int end = path.indexOf(47, next);
            next = end + 1;
            String segment = path.substring(start, end == -1 ? lastPosition + 1 : end);
            if (!CURRENT_DIR.equals(segment)) {
                if (PARENT_DIR.equals(segment)) {
                    if (actualSegmentCount > 0) {
                        --actualSegmentCount;
                    }
                } else {
                    newSegments[actualSegmentCount++] = segment;
                }
            }
            ++i;
        }
        if (actualSegmentCount == newSegments.length) {
            return newSegments;
        }
        if (actualSegmentCount == 0) {
            return NO_SEGMENTS;
        }
        String[] actualSegments = new String[actualSegmentCount];
        System.arraycopy(newSegments, 0, actualSegments, 0, actualSegments.length);
        return actualSegments;
    }

    public String getDevice() {
        return this.device;
    }

    public String[] getSegments() {
        return (String[])this.segments.clone();
    }

    public boolean hasTrailingSlash() {
        return (this.flags & 4) != 0;
    }

    private void initialize(String original) {
        String string = original = original.indexOf(92) == -1 ? original : original.replace('\\', '/');
        if (WINDOWS) {
            int deviceSeparatorPos = original.indexOf(58);
            if (deviceSeparatorPos >= 0) {
                int start = original.charAt(0) == '/' ? 1 : 0;
                this.device = original.substring(start, deviceSeparatorPos + 1);
                original = original.substring(deviceSeparatorPos + 1, original.length());
            } else if (original.startsWith(UNC_SLASHES)) {
                int uncPrefixEnd = original.indexOf(47, 2);
                if (uncPrefixEnd >= 0) {
                    uncPrefixEnd = original.indexOf(47, uncPrefixEnd + 1);
                }
                if (uncPrefixEnd >= 0) {
                    this.device = original.substring(0, uncPrefixEnd);
                    original = original.substring(uncPrefixEnd, original.length());
                } else {
                    throw new IllegalArgumentException("Not a valid UNC: " + original);
                }
            }
        }
        if (original.charAt(0) == '/') {
            this.flags = (byte)(this.flags | 1);
        }
        if (original.charAt(original.length() - 1) == '/') {
            this.flags = (byte)(this.flags | 4);
        }
        this.segments = this.computeSegments(original);
    }

    public boolean isAbsolute() {
        return (this.flags & 1) != 0;
    }

    public String makeRelative(FilePath base) {
        if (base.device != null && !base.device.equalsIgnoreCase(this.device)) {
            return base.toString();
        }
        int baseCount = this.segments.length;
        int count = this.matchingFirstSegments(base);
        if (baseCount == count && count == base.segments.length) {
            return base.hasTrailingSlash() ? "./" : CURRENT_DIR;
        }
        StringBuffer relative = new StringBuffer();
        int j = 0;
        while (j < baseCount - count) {
            relative.append("../");
            ++j;
        }
        int i = 0;
        while (i < base.segments.length - count) {
            relative.append(base.segments[count + i]);
            relative.append('/');
            ++i;
        }
        if (!base.hasTrailingSlash()) {
            relative.deleteCharAt(relative.length() - 1);
        }
        return relative.toString();
    }

    private int matchingFirstSegments(FilePath anotherPath) {
        int anotherPathLen = anotherPath.segments.length;
        int max = Math.min(this.segments.length, anotherPathLen);
        int count = 0;
        int i = 0;
        while (i < max) {
            if (!this.segments[i].equals(anotherPath.segments[i])) {
                return count;
            }
            ++count;
            ++i;
        }
        return count;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        if (this.device != null) {
            result.append(this.device);
        }
        if (this.isAbsolute()) {
            result.append('/');
        }
        int i = 0;
        while (i < this.segments.length) {
            result.append(this.segments[i]);
            result.append('/');
            ++i;
        }
        if (this.segments.length > 0 && !this.hasTrailingSlash()) {
            result.deleteCharAt(result.length() - 1);
        }
        return result.toString();
    }
}

