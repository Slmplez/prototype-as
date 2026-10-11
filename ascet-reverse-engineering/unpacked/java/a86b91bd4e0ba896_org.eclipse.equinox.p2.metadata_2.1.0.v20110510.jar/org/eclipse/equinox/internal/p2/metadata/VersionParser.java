/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.internal.p2.metadata.EnumDefinition;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.OSGiVersion;
import org.eclipse.equinox.internal.p2.metadata.OmniVersion;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionFormatException;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class VersionParser {
    public static final Integer ZERO_INT = new Integer(0);
    public static final Integer MAX_INT_OBJ = new Integer(Integer.MAX_VALUE);
    private static final Integer[] cache = new Integer[100];

    static {
        VersionParser.cache[0] = ZERO_INT;
        int i = 1;
        while (i < cache.length) {
            VersionParser.cache[i] = new Integer(i);
            ++i;
        }
    }

    public static Integer valueOf(int i) {
        if (i >= 0 && i < cache.length) {
            return cache[i];
        }
        return i == Integer.MAX_VALUE ? MAX_INT_OBJ : new Integer(i);
    }

    static Comparable<?> removeRedundantTrail(List<Comparable<?>> segments, Comparable<?> padValue) {
        Comparable<Object> redundantTrail;
        if (padValue == null) {
            redundantTrail = VersionVector.MIN_VALUE;
        } else {
            redundantTrail = padValue;
            if (padValue == VersionVector.MIN_VALUE) {
                padValue = null;
            }
        }
        int idx = segments.size();
        while (--idx >= 0 && segments.get(idx).equals(redundantTrail)) {
            segments.remove(idx);
        }
        return padValue;
    }

    private VersionParser() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Version parse(String version, int start, int maxPos) throws IllegalArgumentException {
        BasicVersion basicVersion;
        int pos = VersionParser.skipWhite(version, start);
        if (pos == (maxPos = VersionParser.skipTrailingWhite(version, start, maxPos))) {
            return null;
        }
        List<Comparable<?>> vector = null;
        VersionFormat fmt = null;
        char c = version.charAt(pos);
        if (VersionParser.isDigit(c)) {
            return OSGiVersion.fromVector(VersionFormat.OSGI_FORMAT.parse(version, pos, maxPos));
        }
        if (!VersionParser.isLetter(c)) {
            throw new IllegalArgumentException();
        }
        if (version.startsWith("raw:", pos)) {
            VersionFormat rawFmt = VersionFormat.RAW_FORMAT;
            int end = maxPos;
            int idx = pos += 4;
            block7: while (idx < maxPos) {
                c = version.charAt(idx);
                block1 : switch (c) {
                    case '/': {
                        end = idx;
                        break block7;
                    }
                    case '\\': {
                        ++idx;
                        break;
                    }
                    case '\"': 
                    case '\'': {
                        ++idx;
                        while (idx < maxPos) {
                            char e = version.charAt(idx);
                            if (e == c) break block1;
                            if (e == '\\') {
                                ++idx;
                            }
                            ++idx;
                        }
                        break block1;
                    }
                }
                ++idx;
            }
            vector = rawFmt.parse(version, pos, end);
            pos = end;
            if (pos == maxPos) {
                return OmniVersion.fromVector(vector, null, null);
            }
            if (version.charAt(pos) != '/') {
                throw new IllegalArgumentException(NLS.bind((String)Messages.expected_slash_after_raw_vector_0, (Object)version.substring(start, maxPos)));
            }
            if (++pos == maxPos) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.expected_orignal_after_slash_0, (Object)version.substring(start, maxPos)));
            }
        }
        if (version.startsWith("format(", pos)) {
            pos += 7;
            try {
                int end = VersionParser.findEndOfFormat(version, pos, maxPos);
                fmt = VersionFormat.compile(version, pos, end);
                pos = end + 1;
            }
            catch (VersionFormatException e) {
                throw new IllegalArgumentException(e.getMessage());
            }
            if (pos == maxPos) {
                BasicVersion basicVersion2;
                if (vector == null) {
                    throw new IllegalArgumentException(NLS.bind((String)Messages.only_format_specified_0, (Object)version.substring(start, maxPos)));
                }
                if (fmt == VersionFormat.OSGI_FORMAT) {
                    basicVersion2 = OSGiVersion.fromVector(vector);
                    return basicVersion2;
                }
                basicVersion2 = OmniVersion.fromVector(vector, fmt, null);
                return basicVersion2;
            }
        }
        if (fmt == null && vector == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.neither_raw_vector_nor_format_specified_0, (Object)version.substring(start, maxPos)));
        }
        if (version.charAt(pos) != ':') {
            throw new IllegalArgumentException(NLS.bind((String)Messages.colon_expected_before_original_version_0, (Object)version.substring(start, maxPos)));
        }
        if (++pos == maxPos) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.expected_orignal_after_colon_0, (Object)version.substring(start, maxPos)));
        }
        if (vector == null) {
            vector = fmt.parse(version, pos, maxPos);
        }
        if (fmt == VersionFormat.OSGI_FORMAT) {
            basicVersion = OSGiVersion.fromVector(vector);
            return basicVersion;
        }
        basicVersion = OmniVersion.fromVector(vector, fmt, version.substring(pos));
        return basicVersion;
    }

    static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isLetter(char c) {
        return c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z';
    }

    static boolean isLetterOrDigit(char c) {
        return VersionParser.isDigit(c) || VersionParser.isLetter(c);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int findEndOfFormat(String string, int pos, int maxPos) {
        int end = -1;
        int depth = 1;
        int idx = pos;
        block6: while (idx < maxPos) {
            char c = string.charAt(idx);
            block0 : switch (c) {
                case ')': {
                    if (--depth != 0) break;
                    end = idx;
                    break block6;
                }
                case '(': {
                    ++depth;
                    break;
                }
                case '\\': {
                    ++idx;
                    break;
                }
                case '\"': 
                case '\'': {
                    ++idx;
                    while (idx < maxPos) {
                        char e = string.charAt(idx);
                        if (e == c) break block0;
                        if (e == '\\') {
                            ++idx;
                        }
                        ++idx;
                    }
                    break block0;
                }
            }
            ++idx;
        }
        if (depth != 0) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.unbalanced_format_parenthesis, (Object)string.substring(pos - 1, maxPos)));
        }
        return end;
    }

    static Comparable<?> parseRawElement(String value, int[] position, int maxPos) {
        Comparable<?> v;
        int current = position[0];
        if (current >= maxPos) {
            return null;
        }
        boolean negate = false;
        char c = value.charAt(current);
        switch (c) {
            case '\"': 
            case '\'': {
                StringBuffer sb = new StringBuffer();
                do {
                    char q = c;
                    if (++current == maxPos) {
                        return null;
                    }
                    c = value.charAt(current);
                    while (c != q) {
                        if (c < ' ') {
                            return null;
                        }
                        sb.append(c);
                        if (++current == maxPos) {
                            return null;
                        }
                        c = value.charAt(current);
                    }
                } while (++current != maxPos && ((c = value.charAt(current)) == '\'' || c == '\"'));
                v = sb.length() == 0 ? "" : sb.toString();
                break;
            }
            case '{': {
                if (++current == maxPos) {
                    return null;
                }
                position[0] = current;
                v = VersionParser.parseRawEnum(value, position, maxPos);
                if (v == null) {
                    return null;
                }
                current = position[0];
                break;
            }
            case '<': {
                if (++current == maxPos) {
                    return null;
                }
                position[0] = current;
                v = VersionParser.parseRawVector(value, position, maxPos);
                if (v == null) {
                    return null;
                }
                current = position[0];
                break;
            }
            case 'm': {
                v = VersionVector.MAXS_VALUE;
                break;
            }
            case 'M': {
                v = VersionVector.MAX_VALUE;
                ++current;
                break;
            }
            case '-': {
                if (++current >= maxPos) {
                    return null;
                }
                c = value.charAt(current);
                if (c == 'M') {
                    ++current;
                    v = VersionVector.MIN_VALUE;
                    break;
                }
                negate = true;
            }
            default: {
                if (VersionParser.isDigit(c)) {
                    int start = current++;
                    while (current < maxPos && VersionParser.isDigit(value.charAt(current))) {
                        ++current;
                    }
                    int val = Integer.parseInt(value.substring(start, current));
                    if (negate) {
                        val = -val;
                    }
                    v = VersionParser.valueOf(val);
                    break;
                }
                return null;
            }
        }
        position[0] = ++current;
        return v;
    }

    private static Comparable<?> parseRawVector(String value, int[] position, int maxPos) {
        Comparable<?> pad;
        ArrayList rawList;
        block11: {
            boolean padMarkerSeen;
            int pos = position[0];
            if (pos >= maxPos) {
                return null;
            }
            char c = value.charAt(pos);
            if (c == '>') {
                return null;
            }
            rawList = new ArrayList();
            boolean bl = padMarkerSeen = c == 'p';
            if (padMarkerSeen) {
                if (++pos >= maxPos) {
                    return null;
                }
                position[0] = pos;
            }
            pad = null;
            while (true) {
                Comparable<?> elem;
                if ((elem = VersionParser.parseRawElement(value, position, maxPos)) == null) {
                    return null;
                }
                if (padMarkerSeen) {
                    pad = elem;
                } else {
                    rawList.add(elem);
                }
                pos = position[0];
                if (pos >= maxPos) {
                    return null;
                }
                c = value.charAt(pos);
                position[0] = ++pos;
                if (c == '>') break block11;
                if (padMarkerSeen || pos >= maxPos) {
                    return null;
                }
                if (c == 'p') {
                    padMarkerSeen = true;
                    continue;
                }
                if (c != '.') break;
            }
            return null;
        }
        pad = VersionParser.removeRedundantTrail(rawList, pad);
        return new VersionVector(rawList.toArray(new Comparable[rawList.size()]), pad);
    }

    private static Comparable<?> parseRawEnum(String value, int[] position, int maxPos) {
        int pos = position[0];
        ArrayList<List<String>> identifiers = new ArrayList<List<String>>();
        int ordinal = -1;
        StringBuffer sb = new StringBuffer();
        while (true) {
            if (pos >= maxPos) {
                return null;
            }
            char c = value.charAt(pos++);
            while (c != '}' && c != ',') {
                if (pos == maxPos) {
                    return null;
                }
                if (c <= ' ') {
                    return null;
                }
                if (c == '\\' || c == '^') {
                    if (c == '^') {
                        ordinal = identifiers.size();
                    }
                    c = value.charAt(pos++);
                    if (pos == maxPos) {
                        return null;
                    }
                }
                sb.append(c);
                c = value.charAt(pos++);
            }
            identifiers.add(Collections.singletonList(sb.toString()));
            if (c == '}') break;
            sb.setLength(0);
        }
        if (ordinal == -1) {
            return null;
        }
        position[0] = pos;
        return EnumDefinition.getSegment(identifiers, ordinal);
    }

    public static int skipWhite(String string, int pos) {
        int top = string.length();
        while (pos < top && string.charAt(pos) <= ' ') {
            ++pos;
        }
        return pos;
    }

    public static int skipTrailingWhite(String string, int start, int end) {
        while (end > start && string.charAt(end - 1) <= ' ') {
            --end;
        }
        return end;
    }
}

