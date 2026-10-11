/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.File;
import java.util.Arrays;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;

public class Path
implements IPath,
Cloneable {
    private static final int HAS_LEADING = 1;
    private static final int IS_UNC = 2;
    private static final int HAS_TRAILING = 4;
    private static final int ALL_SEPARATORS = 7;
    private static final String EMPTY_STRING = "";
    private static final String[] NO_SEGMENTS = new String[0];
    public static final Path EMPTY = new Path("");
    private static final int HASH_MASK = -5;
    private static final String ROOT_STRING = "/";
    public static final Path ROOT = new Path("/");
    private static final boolean WINDOWS = File.separatorChar == '\\';
    private String device = null;
    private String[] segments;
    private int separators;

    public static IPath fromOSString(String pathString) {
        return new Path(pathString);
    }

    public static IPath fromPortableString(String pathString) {
        int firstMatch = pathString.indexOf(58) + 1;
        if (firstMatch <= 0) {
            return new Path().initialize(null, pathString);
        }
        String devicePart = null;
        int pathLength = pathString.length();
        if (firstMatch == pathLength || pathString.charAt(firstMatch) != ':') {
            devicePart = pathString.substring(0, firstMatch);
            pathString = pathString.substring(firstMatch, pathLength);
        }
        if (pathString.indexOf(58) == -1) {
            return new Path().initialize(devicePart, pathString);
        }
        char[] chars = pathString.toCharArray();
        int readOffset = 0;
        int writeOffset = 0;
        int length = chars.length;
        while (readOffset < length) {
            if (chars[readOffset] == ':' && ++readOffset >= length) break;
            chars[writeOffset++] = chars[readOffset++];
        }
        return new Path().initialize(devicePart, new String(chars, 0, writeOffset));
    }

    private Path() {
    }

    public Path(String fullPath) {
        int i;
        String devicePart = null;
        if (WINDOWS && (i = (fullPath = fullPath.indexOf(92) == -1 ? fullPath : fullPath.replace('\\', '/')).indexOf(58)) != -1) {
            int start = fullPath.charAt(0) == '/' ? 1 : 0;
            devicePart = fullPath.substring(start, i + 1);
            fullPath = fullPath.substring(i + 1, fullPath.length());
        }
        this.initialize(devicePart, fullPath);
    }

    public Path(String device, String path) {
        if (WINDOWS) {
            path = path.indexOf(92) == -1 ? path : path.replace('\\', '/');
        }
        this.initialize(device, path);
    }

    private Path(String device, String[] segments, int _separators) {
        this.segments = segments;
        this.device = device;
        this.separators = this.computeHashCode() << 3 | _separators & 7;
    }

    public IPath addFileExtension(String extension) {
        if (this.isRoot() || this.isEmpty() || this.hasTrailingSeparator()) {
            return this;
        }
        int len = this.segments.length;
        String[] newSegments = new String[len];
        System.arraycopy(this.segments, 0, newSegments, 0, len - 1);
        newSegments[len - 1] = String.valueOf(this.segments[len - 1]) + '.' + extension;
        return new Path(this.device, newSegments, this.separators);
    }

    public IPath addTrailingSeparator() {
        if (this.hasTrailingSeparator() || this.isRoot()) {
            return this;
        }
        if (this.isEmpty()) {
            return new Path(this.device, this.segments, 1);
        }
        return new Path(this.device, this.segments, this.separators | 4);
    }

    public IPath append(IPath tail) {
        if (tail == null || tail.segmentCount() == 0) {
            return this;
        }
        if (this.isEmpty()) {
            return tail.setDevice(this.device).makeRelative().makeUNC(this.isUNC());
        }
        if (this.isRoot()) {
            return tail.setDevice(this.device).makeAbsolute().makeUNC(this.isUNC());
        }
        int myLen = this.segments.length;
        int tailLen = tail.segmentCount();
        String[] newSegments = new String[myLen + tailLen];
        System.arraycopy(this.segments, 0, newSegments, 0, myLen);
        int i = 0;
        while (i < tailLen) {
            newSegments[myLen + i] = tail.segment(i);
            ++i;
        }
        Path result = new Path(this.device, newSegments, this.separators & 3 | (tail.hasTrailingSeparator() ? 4 : 0));
        String tailFirstSegment = newSegments[myLen];
        if (tailFirstSegment.equals("..") || tailFirstSegment.equals(".")) {
            result.canonicalize();
        }
        return result;
    }

    public IPath append(String tail) {
        if (tail.indexOf(47) == -1 && tail.indexOf("\\") == -1 && tail.indexOf(58) == -1) {
            int tailLength = tail.length();
            if (tailLength < 3) {
                if (tailLength == 0 || ".".equals(tail)) {
                    return this;
                }
                if ("..".equals(tail)) {
                    return this.removeLastSegments(1);
                }
            }
            int myLen = this.segments.length;
            String[] newSegments = new String[myLen + 1];
            System.arraycopy(this.segments, 0, newSegments, 0, myLen);
            newSegments[myLen] = tail;
            return new Path(this.device, newSegments, this.separators & 0xFFFFFFFB);
        }
        return this.append(new Path(tail));
    }

    private boolean canonicalize() {
        int i = 0;
        int max = this.segments.length;
        while (i < max) {
            String segment = this.segments[i];
            if (segment.charAt(0) == '.' && (segment.equals("..") || segment.equals("."))) {
                this.collapseParentReferences();
                if (this.segments.length == 0) {
                    this.separators &= 3;
                }
                this.separators = this.separators & 7 | this.computeHashCode() << 3;
                return true;
            }
            ++i;
        }
        return false;
    }

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    private void collapseParentReferences() {
        int segmentCount = this.segments.length;
        String[] stack = new String[segmentCount];
        int stackPointer = 0;
        int i = 0;
        while (i < segmentCount) {
            String segment = this.segments[i];
            if (segment.equals("..")) {
                if (stackPointer == 0) {
                    if (!this.isAbsolute()) {
                        stack[stackPointer++] = segment;
                    }
                } else if ("..".equals(stack[stackPointer - 1])) {
                    stack[stackPointer++] = "..";
                } else {
                    --stackPointer;
                }
            } else if (!segment.equals(".") || segmentCount == 1) {
                stack[stackPointer++] = segment;
            }
            ++i;
        }
        if (stackPointer == segmentCount) {
            return;
        }
        String[] newSegments = new String[stackPointer];
        System.arraycopy(stack, 0, newSegments, 0, stackPointer);
        this.segments = newSegments;
    }

    private String collapseSlashes(String path) {
        int length = path.length();
        if (length < 3) {
            return path;
        }
        if (path.indexOf("//", 1) == -1) {
            return path;
        }
        char[] result = new char[path.length()];
        int count = 0;
        boolean hasPrevious = false;
        char[] characters = path.toCharArray();
        int index = 0;
        while (index < characters.length) {
            char c = characters[index];
            if (c == '/') {
                if (hasPrevious) {
                    if (this.device == null && index == 1) {
                        result[count] = c;
                        ++count;
                    }
                } else {
                    hasPrevious = true;
                    result[count] = c;
                    ++count;
                }
            } else {
                hasPrevious = false;
                result[count] = c;
                ++count;
            }
            ++index;
        }
        return new String(result, 0, count);
    }

    private int computeHashCode() {
        int hash = this.device == null ? 17 : this.device.hashCode();
        int segmentCount = this.segments.length;
        int i = 0;
        while (i < segmentCount) {
            hash = hash * 37 + this.segments[i].hashCode();
            ++i;
        }
        return hash;
    }

    private int computeLength() {
        int max;
        int length = 0;
        if (this.device != null) {
            length += this.device.length();
        }
        if ((this.separators & 1) != 0) {
            ++length;
        }
        if ((this.separators & 2) != 0) {
            ++length;
        }
        if ((max = this.segments.length) > 0) {
            int i = 0;
            while (i < max) {
                length += this.segments[i].length();
                ++i;
            }
            length += max - 1;
        }
        if ((this.separators & 4) != 0) {
            ++length;
        }
        return length;
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
        int firstPosition;
        int segmentCount = this.computeSegmentCount(path);
        if (segmentCount == 0) {
            return NO_SEGMENTS;
        }
        String[] newSegments = new String[segmentCount];
        int len = path.length();
        int n = firstPosition = path.charAt(0) == '/' ? 1 : 0;
        if (firstPosition == 1 && len > 1 && path.charAt(1) == '/') {
            firstPosition = 2;
        }
        int lastPosition = path.charAt(len - 1) != '/' ? len - 1 : len - 2;
        int next = firstPosition;
        int i = 0;
        while (i < segmentCount) {
            int start = next;
            int end = path.indexOf(47, next);
            newSegments[i] = end == -1 ? path.substring(start, lastPosition + 1) : path.substring(start, end);
            next = end + 1;
            ++i;
        }
        return newSegments;
    }

    private void encodeSegment(String string, StringBuffer buf) {
        int len = string.length();
        int i = 0;
        while (i < len) {
            char c = string.charAt(i);
            buf.append(c);
            if (c == ':') {
                buf.append(':');
            }
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Path)) {
            return false;
        }
        target = (Path)obj;
        if ((this.separators & -5) != (target.separators & -5)) {
            return false;
        }
        i = this.segments.length;
        targetSegments = target.segments;
        if (i == targetSegments.length) ** GOTO lbl14
        return false;
lbl-1000:
        // 1 sources

        {
            if (this.segments[i].equals(targetSegments[i])) continue;
            return false;
lbl14:
            // 2 sources

            ** while (--i >= 0)
        }
lbl15:
        // 1 sources

        return this.device == target.device || this.device != null && this.device.equals(target.device) != false;
    }

    public String getDevice() {
        return this.device;
    }

    public String getFileExtension() {
        if (this.hasTrailingSeparator()) {
            return null;
        }
        String lastSegment = this.lastSegment();
        if (lastSegment == null) {
            return null;
        }
        int index = lastSegment.lastIndexOf(46);
        if (index == -1) {
            return null;
        }
        return lastSegment.substring(index + 1);
    }

    public int hashCode() {
        return this.separators & 0xFFFFFFFB;
    }

    public boolean hasTrailingSeparator() {
        return (this.separators & 4) != 0;
    }

    private IPath initialize(String deviceString, String path) {
        Assert.isNotNull(path);
        this.device = deviceString;
        path = this.collapseSlashes(path);
        int len = path.length();
        if (len < 2) {
            this.separators = len == 1 && path.charAt(0) == '/' ? 1 : 0;
        } else {
            boolean hasLeading = path.charAt(0) == '/';
            boolean isUNC = hasLeading && path.charAt(1) == '/';
            boolean hasTrailing = (!isUNC || len != 2) && path.charAt(len - 1) == '/';
            int n = this.separators = hasLeading ? 1 : 0;
            if (isUNC) {
                this.separators |= 2;
            }
            if (hasTrailing) {
                this.separators |= 4;
            }
        }
        this.segments = this.computeSegments(path);
        if (!this.canonicalize()) {
            this.separators = this.separators & 7 | this.computeHashCode() << 3;
        }
        return this;
    }

    public boolean isAbsolute() {
        return (this.separators & 1) != 0;
    }

    public boolean isEmpty() {
        return this.segments.length == 0 && (this.separators & 7) != 1;
    }

    public boolean isPrefixOf(IPath anotherPath) {
        if (this.device == null ? anotherPath.getDevice() != null : !this.device.equalsIgnoreCase(anotherPath.getDevice())) {
            return false;
        }
        if (this.isEmpty() || this.isRoot() && anotherPath.isAbsolute()) {
            return true;
        }
        int len = this.segments.length;
        if (len > anotherPath.segmentCount()) {
            return false;
        }
        int i = 0;
        while (i < len) {
            if (!this.segments[i].equals(anotherPath.segment(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isRoot() {
        return this == ROOT || this.segments.length == 0 && (this.separators & 7) == 1;
    }

    public boolean isUNC() {
        if (this.device != null) {
            return false;
        }
        return (this.separators & 2) != 0;
    }

    public boolean isValidPath(String path) {
        Path test = new Path(path);
        int i = 0;
        int max = test.segmentCount();
        while (i < max) {
            if (!this.isValidSegment(test.segment(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isValidSegment(String segment) {
        int size = segment.length();
        if (size == 0) {
            return false;
        }
        int i = 0;
        while (i < size) {
            char c = segment.charAt(i);
            if (c == '/') {
                return false;
            }
            if (WINDOWS && (c == '\\' || c == ':')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public String lastSegment() {
        int len = this.segments.length;
        return len == 0 ? null : this.segments[len - 1];
    }

    public IPath makeAbsolute() {
        String first;
        if (this.isAbsolute()) {
            return this;
        }
        Path result = new Path(this.device, this.segments, this.separators | 1);
        if (result.segmentCount() > 0 && ((first = result.segment(0)).equals("..") || first.equals("."))) {
            result.canonicalize();
        }
        return result;
    }

    public IPath makeRelative() {
        if (!this.isAbsolute()) {
            return this;
        }
        return new Path(this.device, this.segments, this.separators & 4);
    }

    public IPath makeRelativeTo(IPath base) {
        if (!(this.device == base.getDevice() || this.device != null && this.device.equalsIgnoreCase(base.getDevice()))) {
            return this;
        }
        int commonLength = this.matchingFirstSegments(base);
        int differenceLength = base.segmentCount() - commonLength;
        int newSegmentLength = differenceLength + this.segmentCount() - commonLength;
        if (newSegmentLength == 0) {
            return EMPTY;
        }
        Object[] newSegments = new String[newSegmentLength];
        Arrays.fill(newSegments, 0, differenceLength, "..");
        System.arraycopy(this.segments, commonLength, newSegments, differenceLength, newSegmentLength - differenceLength);
        return new Path(null, (String[])newSegments, this.separators & 4);
    }

    public IPath makeUNC(boolean toUNC) {
        if (!(toUNC ^ this.isUNC())) {
            return this;
        }
        int newSeparators = this.separators;
        newSeparators = toUNC ? (newSeparators |= 3) : (newSeparators &= 5);
        return new Path(toUNC ? null : this.device, this.segments, newSeparators);
    }

    public int matchingFirstSegments(IPath anotherPath) {
        Assert.isNotNull(anotherPath);
        int anotherPathLen = anotherPath.segmentCount();
        int max = Math.min(this.segments.length, anotherPathLen);
        int count = 0;
        int i = 0;
        while (i < max) {
            if (!this.segments[i].equals(anotherPath.segment(i))) {
                return count;
            }
            ++count;
            ++i;
        }
        return count;
    }

    public IPath removeFileExtension() {
        String extension = this.getFileExtension();
        if (extension == null || extension.equals(EMPTY_STRING)) {
            return this;
        }
        String lastSegment = this.lastSegment();
        int index = lastSegment.lastIndexOf(extension) - 1;
        return this.removeLastSegments(1).append(lastSegment.substring(0, index));
    }

    public IPath removeFirstSegments(int count) {
        if (count == 0) {
            return this;
        }
        if (count >= this.segments.length) {
            return new Path(this.device, NO_SEGMENTS, 0);
        }
        Assert.isLegal(count > 0);
        int newSize = this.segments.length - count;
        String[] newSegments = new String[newSize];
        System.arraycopy(this.segments, count, newSegments, 0, newSize);
        return new Path(this.device, newSegments, this.separators & 4);
    }

    public IPath removeLastSegments(int count) {
        if (count == 0) {
            return this;
        }
        if (count >= this.segments.length) {
            return new Path(this.device, NO_SEGMENTS, this.separators & 3);
        }
        Assert.isLegal(count > 0);
        int newSize = this.segments.length - count;
        String[] newSegments = new String[newSize];
        System.arraycopy(this.segments, 0, newSegments, 0, newSize);
        return new Path(this.device, newSegments, this.separators);
    }

    public IPath removeTrailingSeparator() {
        if (!this.hasTrailingSeparator()) {
            return this;
        }
        return new Path(this.device, this.segments, this.separators & 3);
    }

    public String segment(int index) {
        if (index >= this.segments.length) {
            return null;
        }
        return this.segments[index];
    }

    public int segmentCount() {
        return this.segments.length;
    }

    public String[] segments() {
        String[] segmentCopy = new String[this.segments.length];
        System.arraycopy(this.segments, 0, segmentCopy, 0, this.segments.length);
        return segmentCopy;
    }

    public IPath setDevice(String value) {
        if (value != null) {
            Assert.isTrue(value.indexOf(58) == value.length() - 1, "Last character should be the device separator");
        }
        if (value == this.device || value != null && value.equals(this.device)) {
            return this;
        }
        return new Path(value, this.segments, this.separators);
    }

    public File toFile() {
        return new File(this.toOSString());
    }

    public String toOSString() {
        int len;
        int resultSize = this.computeLength();
        if (resultSize <= 0) {
            return EMPTY_STRING;
        }
        char FILE_SEPARATOR = File.separatorChar;
        char[] result = new char[resultSize];
        int offset = 0;
        if (this.device != null) {
            int size = this.device.length();
            this.device.getChars(0, size, result, offset);
            offset += size;
        }
        if ((this.separators & 1) != 0) {
            result[offset++] = FILE_SEPARATOR;
        }
        if ((this.separators & 2) != 0) {
            result[offset++] = FILE_SEPARATOR;
        }
        if ((len = this.segments.length - 1) >= 0) {
            int i = 0;
            while (i < len) {
                int size = this.segments[i].length();
                this.segments[i].getChars(0, size, result, offset);
                offset += size;
                result[offset++] = FILE_SEPARATOR;
                ++i;
            }
            int size = this.segments[len].length();
            this.segments[len].getChars(0, size, result, offset);
            offset += size;
        }
        if ((this.separators & 4) != 0) {
            result[offset++] = FILE_SEPARATOR;
        }
        return new String(result);
    }

    public String toPortableString() {
        int resultSize = this.computeLength();
        if (resultSize <= 0) {
            return EMPTY_STRING;
        }
        StringBuffer result = new StringBuffer(resultSize);
        if (this.device != null) {
            result.append(this.device);
        }
        if ((this.separators & 1) != 0) {
            result.append('/');
        }
        if ((this.separators & 2) != 0) {
            result.append('/');
        }
        int len = this.segments.length;
        int i = 0;
        while (i < len) {
            if (this.segments[i].indexOf(58) >= 0) {
                this.encodeSegment(this.segments[i], result);
            } else {
                result.append(this.segments[i]);
            }
            if (i < len - 1 || (this.separators & 4) != 0) {
                result.append('/');
            }
            ++i;
        }
        return result.toString();
    }

    public String toString() {
        int len;
        int resultSize = this.computeLength();
        if (resultSize <= 0) {
            return EMPTY_STRING;
        }
        char[] result = new char[resultSize];
        int offset = 0;
        if (this.device != null) {
            int size = this.device.length();
            this.device.getChars(0, size, result, offset);
            offset += size;
        }
        if ((this.separators & 1) != 0) {
            result[offset++] = 47;
        }
        if ((this.separators & 2) != 0) {
            result[offset++] = 47;
        }
        if ((len = this.segments.length - 1) >= 0) {
            int i = 0;
            while (i < len) {
                int size = this.segments[i].length();
                this.segments[i].getChars(0, size, result, offset);
                offset += size;
                result[offset++] = 47;
                ++i;
            }
            int size = this.segments[len].length();
            this.segments[len].getChars(0, size, result, offset);
            offset += size;
        }
        if ((this.separators & 4) != 0) {
            result[offset++] = 47;
        }
        return new String(result);
    }

    public IPath uptoSegment(int count) {
        if (count == 0) {
            return new Path(this.device, NO_SEGMENTS, this.separators & 3);
        }
        if (count >= this.segments.length) {
            return this;
        }
        Assert.isTrue(count > 0, "Invalid parameter to Path.uptoSegment");
        String[] newSegments = new String[count];
        System.arraycopy(this.segments, 0, newSegments, 0, count);
        return new Path(this.device, newSegments, this.separators);
    }
}

