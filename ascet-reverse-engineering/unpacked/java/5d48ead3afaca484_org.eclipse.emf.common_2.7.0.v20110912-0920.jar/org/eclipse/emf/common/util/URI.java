/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class URI {
    private final int hashCode;
    private static final int HIERARICHICAL_FLAG = 256;
    private final String scheme;
    private final String authority;
    private final String fragment;
    private URI cachedTrimFragment;
    private String cachedToString;
    private final String device;
    private static final int ABSOLUTE_PATH_FLAG = 16;
    private final String[] segments;
    private final String query;
    private static final URICache uriCache = new URICache();
    private static final Set<String> archiveSchemes;
    private static final String SCHEME_FILE = "file";
    private static final String SCHEME_JAR = "jar";
    private static final String SCHEME_ZIP = "zip";
    private static final String SCHEME_ARCHIVE = "archive";
    private static final String SCHEME_PLATFORM = "platform";
    private static final String SEGMENT_EMPTY = "";
    private static final String SEGMENT_SELF = ".";
    private static final String SEGMENT_PARENT = "..";
    private static final String[] NO_SEGMENTS;
    private static final char SCHEME_SEPARATOR = ':';
    private static final String AUTHORITY_SEPARATOR = "//";
    private static final char DEVICE_IDENTIFIER = ':';
    private static final char SEGMENT_SEPARATOR = '/';
    private static final char QUERY_SEPARATOR = '?';
    private static final char FRAGMENT_SEPARATOR = '#';
    private static final char USER_INFO_SEPARATOR = '@';
    private static final char PORT_SEPARATOR = ':';
    private static final char FILE_EXTENSION_SEPARATOR = '.';
    private static final char ARCHIVE_IDENTIFIER = '!';
    private static final String ARCHIVE_SEPARATOR = "!/";
    private static final char ESCAPE = '%';
    private static final char[] HEX_DIGITS;
    private static final long ALPHA_HI;
    private static final long ALPHA_LO;
    private static final long DIGIT_HI;
    private static final long DIGIT_LO;
    private static final long ALPHANUM_HI;
    private static final long ALPHANUM_LO;
    private static final long HEX_HI;
    private static final long HEX_LO;
    private static final long UNRESERVED_HI;
    private static final long UNRESERVED_LO;
    private static final long RESERVED_HI;
    private static final long RESERVED_LO;
    private static final long URIC_HI;
    private static final long URIC_LO;
    private static final long SEGMENT_CHAR_HI;
    private static final long SEGMENT_CHAR_LO;
    private static final long PATH_CHAR_HI;
    private static final long PATH_CHAR_LO;
    private static final long MAJOR_SEPARATOR_HI;
    private static final long MAJOR_SEPARATOR_LO;
    private static final long SEGMENT_END_HI;
    private static final long SEGMENT_END_LO;
    private static final boolean ENCODE_PLATFORM_RESOURCE_URIS;
    public static final int FRAGMENT_NONE = 0;
    public static final int FRAGMENT_FIRST_SEPARATOR = 1;
    public static final int FRAGMENT_LAST_SEPARATOR = 2;

    static {
        NO_SEGMENTS = new String[0];
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        ALPHA_HI = URI.highBitmask('a', 'z') | URI.highBitmask('A', 'Z');
        ALPHA_LO = URI.lowBitmask('a', 'z') | URI.lowBitmask('A', 'Z');
        DIGIT_HI = URI.highBitmask('0', '9');
        DIGIT_LO = URI.lowBitmask('0', '9');
        ALPHANUM_HI = ALPHA_HI | DIGIT_HI;
        ALPHANUM_LO = ALPHA_LO | DIGIT_LO;
        HEX_HI = DIGIT_HI | URI.highBitmask('A', 'F') | URI.highBitmask('a', 'f');
        HEX_LO = DIGIT_LO | URI.lowBitmask('A', 'F') | URI.lowBitmask('a', 'f');
        UNRESERVED_HI = ALPHANUM_HI | URI.highBitmask("-_.!~*'()");
        UNRESERVED_LO = ALPHANUM_LO | URI.lowBitmask("-_.!~*'()");
        RESERVED_HI = URI.highBitmask(";/?:@&=+$,");
        RESERVED_LO = URI.lowBitmask(";/?:@&=+$,");
        URIC_HI = RESERVED_HI | UNRESERVED_HI;
        URIC_LO = RESERVED_LO | UNRESERVED_LO;
        SEGMENT_CHAR_HI = UNRESERVED_HI | URI.highBitmask(";:@&=+$,");
        SEGMENT_CHAR_LO = UNRESERVED_LO | URI.lowBitmask(";:@&=+$,");
        PATH_CHAR_HI = SEGMENT_CHAR_HI | URI.highBitmask('/');
        PATH_CHAR_LO = SEGMENT_CHAR_LO | URI.lowBitmask('/');
        MAJOR_SEPARATOR_HI = URI.highBitmask(":/?#");
        MAJOR_SEPARATOR_LO = URI.lowBitmask(":/?#");
        SEGMENT_END_HI = URI.highBitmask("/?#");
        SEGMENT_END_LO = URI.lowBitmask("/?#");
        ENCODE_PLATFORM_RESOURCE_URIS = System.getProperty("org.eclipse.emf.common.util.URI.encodePlatformResourceURIs") != null && !"false".equalsIgnoreCase(System.getProperty("org.eclipse.emf.common.util.URI.encodePlatformResourceURIs"));
        HashSet<String> set = new HashSet<String>();
        String propertyValue = System.getProperty("org.eclipse.emf.common.util.URI.archiveSchemes");
        if (propertyValue == null) {
            set.add(SCHEME_JAR);
            set.add(SCHEME_ZIP);
            set.add(SCHEME_ARCHIVE);
        } else {
            StringTokenizer t = new StringTokenizer(propertyValue);
            while (t.hasMoreTokens()) {
                set.add(t.nextToken().toLowerCase());
            }
        }
        archiveSchemes = Collections.unmodifiableSet(set);
    }

    private static long lowBitmask(char c) {
        return c < '@' ? 1L << c : 0L;
    }

    private static long highBitmask(char c) {
        return c >= '@' && c < '\u0080' ? 1L << c - 64 : 0L;
    }

    private static long lowBitmask(char from, char to) {
        long result = 0L;
        if (from < '@' && from <= to) {
            to = to < '@' ? to : (char)'?';
            char c = from;
            while (c <= to) {
                result |= 1L << c;
                c = (char)(c + '\u0001');
            }
        }
        return result;
    }

    private static long highBitmask(char from, char to) {
        return to < '@' ? 0L : URI.lowBitmask((char)(from < '@' ? 0 : from - 64), (char)(to - 64));
    }

    private static long lowBitmask(String chars) {
        long result = 0L;
        int i = 0;
        int len = chars.length();
        while (i < len) {
            char c = chars.charAt(i);
            if (c < '@') {
                result |= 1L << c;
            }
            ++i;
        }
        return result;
    }

    private static long highBitmask(String chars) {
        long result = 0L;
        int i = 0;
        int len = chars.length();
        while (i < len) {
            char c = chars.charAt(i);
            if (c >= '@' && c < '\u0080') {
                result |= 1L << c - 64;
            }
            ++i;
        }
        return result;
    }

    private static boolean matches(char c, long highBitmask, long lowBitmask) {
        if (c >= '\u0080') {
            return false;
        }
        return c < '@' ? (1L << c & lowBitmask) != 0L : (1L << c - 64 & highBitmask) != 0L;
    }

    public static URI createGenericURI(String scheme, String opaquePart, String fragment) {
        if (scheme == null) {
            throw new IllegalArgumentException("relative non-hierarchical URI");
        }
        if (URI.isArchiveScheme(scheme)) {
            throw new IllegalArgumentException("non-hierarchical archive URI");
        }
        URI.validateURI(false, scheme, opaquePart, null, false, NO_SEGMENTS, null, fragment);
        return new URI(false, scheme, opaquePart, null, false, NO_SEGMENTS, null, fragment);
    }

    public static URI createHierarchicalURI(String scheme, String authority, String device, String query, String fragment) {
        if (scheme != null && authority == null && device == null) {
            throw new IllegalArgumentException("absolute hierarchical URI without authority, device, path");
        }
        if (URI.isArchiveScheme(scheme)) {
            throw new IllegalArgumentException("archive URI with no path");
        }
        URI.validateURI(true, scheme, authority, device, false, NO_SEGMENTS, query, fragment);
        return new URI(true, scheme, authority, device, false, NO_SEGMENTS, query, fragment);
    }

    public static URI createHierarchicalURI(String scheme, String authority, String device, String[] segments, String query, String fragment) {
        if (URI.isArchiveScheme(scheme) && device != null) {
            throw new IllegalArgumentException("archive URI with device");
        }
        segments = URI.fix(segments);
        URI.validateURI(true, scheme, authority, device, true, segments, query, fragment);
        return new URI(true, scheme, authority, device, true, segments, query, fragment);
    }

    public static URI createHierarchicalURI(String[] segments, String query, String fragment) {
        segments = URI.fix(segments);
        URI.validateURI(true, null, null, null, false, segments, query, fragment);
        return new URI(true, null, null, null, false, segments, query, fragment);
    }

    private static String[] fix(String[] segments) {
        return segments == null ? NO_SEGMENTS : (String[])segments.clone();
    }

    public static URI createURI(String uri) {
        return URI.createURIWithCache(uri);
    }

    public static URI createURI(String uri, boolean ignoreEscaped) {
        return URI.createURIWithCache(URI.encodeURI(uri, ignoreEscaped, 2));
    }

    public static URI createURI(String uri, boolean ignoreEscaped, int fragmentLocationStyle) {
        return URI.createURIWithCache(URI.encodeURI(uri, ignoreEscaped, fragmentLocationStyle));
    }

    @Deprecated
    public static URI createDeviceURI(String uri) {
        return URI.createURIWithCache(uri);
    }

    @Deprecated
    public static URI createURIWithCache(String uri) {
        int i = uri.indexOf(35);
        String base = i == -1 ? uri : uri.substring(0, i);
        String fragment = i == -1 ? null : uri.substring(i + 1);
        URI result = uriCache.get(base);
        if (result == null) {
            result = URI.parseIntoURI(base);
            uriCache.put(base, result);
        }
        if (fragment != null) {
            result = result.appendFragment(fragment);
        }
        return result;
    }

    private static URI parseIntoURI(String uri) {
        String s;
        boolean archiveScheme;
        boolean hierarchical = true;
        String scheme = null;
        String authority = null;
        String device = null;
        boolean absolutePath = false;
        String[] segments = NO_SEGMENTS;
        String query = null;
        String fragment = null;
        int i = 0;
        int j = URI.find(uri, i, MAJOR_SEPARATOR_HI, MAJOR_SEPARATOR_LO);
        if (j < uri.length() && uri.charAt(j) == ':') {
            scheme = uri.substring(i, j);
            i = j + 1;
        }
        if (archiveScheme = URI.isArchiveScheme(scheme)) {
            j = uri.lastIndexOf(ARCHIVE_SEPARATOR);
            if (j == -1) {
                throw new IllegalArgumentException("no archive separator");
            }
            hierarchical = true;
            authority = uri.substring(i, ++j);
            i = j;
        } else if (uri.startsWith(AUTHORITY_SEPARATOR, i)) {
            j = URI.find(uri, i += AUTHORITY_SEPARATOR.length(), SEGMENT_END_HI, SEGMENT_END_LO);
            authority = uri.substring(i, j);
            i = j;
        } else if (scheme != null && (i == uri.length() || uri.charAt(i) != '/')) {
            hierarchical = false;
            j = uri.indexOf(35, i);
            if (j == -1) {
                j = uri.length();
            }
            authority = uri.substring(i, j);
            i = j;
        }
        if (!archiveScheme && i < uri.length() && uri.charAt(i) == '/' && (s = uri.substring(i + 1, j = URI.find(uri, i + 1, SEGMENT_END_HI, SEGMENT_END_LO))).length() > 0 && s.charAt(s.length() - 1) == ':') {
            device = s;
            i = j;
        }
        if (i < uri.length() && uri.charAt(i) == '/') {
            ++i;
            absolutePath = true;
        }
        if (URI.segmentsRemain(uri, i)) {
            ArrayList<String> segmentList = new ArrayList<String>();
            while (URI.segmentsRemain(uri, i)) {
                j = URI.find(uri, i, SEGMENT_END_HI, SEGMENT_END_LO);
                segmentList.add(uri.substring(i, j));
                i = j;
                if (i >= uri.length() || uri.charAt(i) != '/' || URI.segmentsRemain(uri, ++i)) continue;
                segmentList.add(SEGMENT_EMPTY);
            }
            segments = new String[segmentList.size()];
            segmentList.toArray(segments);
        }
        if (i < uri.length() && uri.charAt(i) == '?') {
            if ((j = uri.indexOf(35, ++i)) == -1) {
                j = uri.length();
            }
            query = uri.substring(i, j);
            i = j;
        }
        if (i < uri.length()) {
            fragment = uri.substring(++i);
        }
        URI.validateURI(hierarchical, scheme, authority, device, absolutePath, segments, query, fragment);
        return new URI(hierarchical, scheme, authority, device, absolutePath, segments, query, fragment);
    }

    private static boolean segmentsRemain(String uri, int i) {
        return i < uri.length() && uri.charAt(i) != '?' && uri.charAt(i) != '#';
    }

    private static int find(String s, int i, long highBitmask, long lowBitmask) {
        int len = s.length();
        if (i >= len) {
            return len;
        }
        i = i > 0 ? i : 0;
        while (i < len) {
            if (URI.matches(s.charAt(i), highBitmask, lowBitmask)) break;
            ++i;
        }
        return i;
    }

    public static URI createFileURI(String pathName) {
        File file = new File(pathName);
        String uri = File.separatorChar != '/' ? pathName.replace(File.separatorChar, '/') : pathName;
        uri = URI.encode(uri, PATH_CHAR_HI, PATH_CHAR_LO, false);
        if (file.isAbsolute()) {
            URI result = URI.createURI(String.valueOf(uri.charAt(0) == '/' ? "file:" : "file:/") + uri);
            return result;
        }
        URI result = URI.createURI(uri);
        if (result.scheme() != null) {
            throw new IllegalArgumentException("invalid relative pathName: " + pathName);
        }
        return result;
    }

    @Deprecated
    public static URI createPlatformResourceURI(String pathName) {
        return URI.createPlatformResourceURI(pathName, ENCODE_PLATFORM_RESOURCE_URIS);
    }

    public static URI createPlatformResourceURI(String pathName, boolean encode) {
        return URI.createPlatformURI("platform:/resource", "platform:/resource/", pathName, encode);
    }

    public static URI createPlatformPluginURI(String pathName, boolean encode) {
        return URI.createPlatformURI("platform:/plugin", "platform:/plugin/", pathName, encode);
    }

    private static URI createPlatformURI(String unrootedBase, String rootedBase, String pathName, boolean encode) {
        if (File.separatorChar != '/') {
            pathName = pathName.replace(File.separatorChar, '/');
        }
        if (encode) {
            pathName = URI.encode(pathName, PATH_CHAR_HI, PATH_CHAR_LO, false);
        }
        URI result = URI.createURI(String.valueOf(pathName.charAt(0) == '/' ? unrootedBase : rootedBase) + pathName);
        return result;
    }

    private URI(boolean hierarchical, String scheme, String authority, String device, boolean absolutePath, String[] segments, String query, String fragment) {
        int hashCode = 0;
        if (scheme != null) {
            hashCode ^= scheme.toLowerCase().hashCode();
        }
        if (authority != null) {
            hashCode ^= authority.hashCode();
        }
        if (device != null) {
            hashCode ^= device.hashCode();
        }
        if (query != null) {
            hashCode ^= query.hashCode();
        }
        if (fragment != null) {
            hashCode ^= fragment.hashCode();
        }
        int i = 0;
        int len = segments.length;
        while (i < len) {
            hashCode ^= segments[i].hashCode();
            ++i;
        }
        hashCode = hierarchical ? (hashCode |= 0x100) : (hashCode &= 0xFFFFFEFF);
        hashCode = absolutePath ? (hashCode |= 0x10) : (hashCode &= 0xFFFFFFEF);
        this.hashCode = hashCode;
        this.scheme = scheme == null ? null : scheme.intern();
        this.authority = authority;
        this.device = device;
        this.segments = segments;
        this.query = query;
        this.fragment = fragment;
    }

    private static void validateURI(boolean hierarchical, String scheme, String authority, String device, boolean absolutePath, String[] segments, String query, String fragment) {
        if (!URI.validScheme(scheme)) {
            throw new IllegalArgumentException("invalid scheme: " + scheme);
        }
        if (!hierarchical && !URI.validOpaquePart(authority)) {
            throw new IllegalArgumentException("invalid opaquePart: " + authority);
        }
        if (hierarchical && !URI.isArchiveScheme(scheme) && !URI.validAuthority(authority)) {
            throw new IllegalArgumentException("invalid authority: " + authority);
        }
        if (hierarchical && URI.isArchiveScheme(scheme) && !URI.validArchiveAuthority(authority)) {
            throw new IllegalArgumentException("invalid authority: " + authority);
        }
        if (!URI.validDevice(device)) {
            throw new IllegalArgumentException("invalid device: " + device);
        }
        if (!URI.validSegments(segments)) {
            String s = segments == null ? "invalid segments: null" : "invalid segment: " + URI.firstInvalidSegment(segments);
            throw new IllegalArgumentException(s);
        }
        if (!URI.validQuery(query)) {
            throw new IllegalArgumentException("invalid query: " + query);
        }
        if (!URI.validFragment(fragment)) {
            throw new IllegalArgumentException("invalid fragment: " + fragment);
        }
    }

    public static boolean validScheme(String value) {
        return value == null || !URI.contains(value, MAJOR_SEPARATOR_HI, MAJOR_SEPARATOR_LO);
    }

    public static boolean validOpaquePart(String value) {
        return value != null && value.indexOf(35) == -1 && value.length() > 0 && value.charAt(0) != '/';
    }

    public static boolean validAuthority(String value) {
        return value == null || !URI.contains(value, SEGMENT_END_HI, SEGMENT_END_LO);
    }

    public static boolean validArchiveAuthority(String value) {
        if (value != null && value.length() > 0 && value.charAt(value.length() - 1) == '!') {
            try {
                URI archiveURI = URI.createURI(value.substring(0, value.length() - 1));
                return !archiveURI.hasFragment();
            }
            catch (IllegalArgumentException illegalArgumentException) {
                // empty catch block
            }
        }
        return false;
    }

    @Deprecated
    public static boolean validJarAuthority(String value) {
        return URI.validArchiveAuthority(value);
    }

    public static boolean validDevice(String value) {
        if (value == null) {
            return true;
        }
        int len = value.length();
        return len > 0 && value.charAt(len - 1) == ':' && !URI.contains(value, SEGMENT_END_HI, SEGMENT_END_LO);
    }

    public static boolean validSegment(String value) {
        return value != null && !URI.contains(value, SEGMENT_END_HI, SEGMENT_END_LO);
    }

    public static boolean validSegments(String[] value) {
        if (value == null) {
            return false;
        }
        int i = 0;
        int len = value.length;
        while (i < len) {
            if (!URI.validSegment(value[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private static String firstInvalidSegment(String[] value) {
        if (value == null) {
            return null;
        }
        int i = 0;
        int len = value.length;
        while (i < len) {
            if (!URI.validSegment(value[i])) {
                return value[i];
            }
            ++i;
        }
        return null;
    }

    public static boolean validQuery(String value) {
        return value == null || value.indexOf(35) == -1;
    }

    public static boolean validFragment(String value) {
        return true;
    }

    private static boolean contains(String s, long highBitmask, long lowBitmask) {
        int i = 0;
        int len = s.length();
        while (i < len) {
            if (URI.matches(s.charAt(i), highBitmask, lowBitmask)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isRelative() {
        return this.scheme == null;
    }

    public boolean isHierarchical() {
        return (this.hashCode & 0x100) != 0;
    }

    public boolean hasAuthority() {
        return this.isHierarchical() && this.authority != null;
    }

    public boolean hasOpaquePart() {
        return !this.isHierarchical();
    }

    public boolean hasDevice() {
        return this.device != null;
    }

    public boolean hasPath() {
        return this.hasAbsolutePath() || this.authority == null && this.device == null;
    }

    public boolean hasAbsolutePath() {
        return (this.hashCode & 0x10) != 0;
    }

    public boolean hasRelativePath() {
        return this.authority == null && this.device == null && !this.hasAbsolutePath();
    }

    public boolean hasEmptyPath() {
        return this.authority == null && this.device == null && !this.hasAbsolutePath() && this.segments.length == 0;
    }

    public boolean hasQuery() {
        return this.query != null;
    }

    public boolean hasFragment() {
        return this.fragment != null;
    }

    public boolean isCurrentDocumentReference() {
        return this.authority == null && this.device == null && !this.hasAbsolutePath() && this.segments.length == 0 && this.query == null;
    }

    public boolean isEmpty() {
        return this.authority == null && this.device == null && !this.hasAbsolutePath() && this.segments.length == 0 && this.query == null && this.fragment == null;
    }

    public boolean isFile() {
        return this.isHierarchical() && (this.isRelative() && !this.hasQuery() || SCHEME_FILE.equalsIgnoreCase(this.scheme));
    }

    public boolean isPlatform() {
        return this.isHierarchical() && !this.hasAuthority() && this.segmentCount() >= 2 && SCHEME_PLATFORM.equalsIgnoreCase(this.scheme);
    }

    public boolean isPlatformResource() {
        return this.isPlatform() && "resource".equals(this.segments[0]);
    }

    public boolean isPlatformPlugin() {
        return this.isPlatform() && "plugin".equals(this.segments[0]);
    }

    public boolean isArchive() {
        return URI.isArchiveScheme(this.scheme);
    }

    public static boolean isArchiveScheme(String value) {
        return value != null && archiveSchemes.contains(value.toLowerCase());
    }

    public int hashCode() {
        return this.hashCode;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof URI)) {
            return false;
        }
        URI uri = (URI)object;
        return this.hashCode == uri.hashCode() && URI.equals(this.scheme, uri.scheme(), true) && URI.equals(this.authority, this.isHierarchical() ? uri.authority() : uri.opaquePart()) && URI.equals(this.device, uri.device()) && URI.equals(this.query, uri.query()) && URI.equals(this.fragment, uri.fragment()) && this.segmentsEqual(uri);
    }

    private boolean segmentsEqual(URI uri) {
        if (this.segments.length != uri.segmentCount()) {
            return false;
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            if (!this.segments[i].equals(uri.segment(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private static boolean equals(Object o1, Object o2) {
        return o1 == null ? o2 == null : o1.equals(o2);
    }

    private static boolean equals(String s1, String s2, boolean ignoreCase) {
        return s1 == null ? s2 == null : (ignoreCase ? s1.equalsIgnoreCase(s2) : s1.equals(s2));
    }

    public String scheme() {
        return this.scheme;
    }

    public String opaquePart() {
        return this.isHierarchical() ? null : this.authority;
    }

    public String authority() {
        return this.isHierarchical() ? this.authority : null;
    }

    public String userInfo() {
        if (!this.hasAuthority()) {
            return null;
        }
        int i = this.authority.indexOf(64);
        return i < 0 ? null : this.authority.substring(0, i);
    }

    public String host() {
        if (!this.hasAuthority()) {
            return null;
        }
        int i = this.authority.indexOf(64);
        int j = this.authority.indexOf(58);
        return j < 0 ? this.authority.substring(i + 1) : this.authority.substring(i + 1, j);
    }

    public String port() {
        if (!this.hasAuthority()) {
            return null;
        }
        int i = this.authority.indexOf(58);
        return i < 0 ? null : this.authority.substring(i + 1);
    }

    public String device() {
        return this.device;
    }

    public String[] segments() {
        return (String[])this.segments.clone();
    }

    public List<String> segmentsList() {
        return Collections.unmodifiableList(Arrays.asList(this.segments));
    }

    public int segmentCount() {
        return this.segments.length;
    }

    public String segment(int i) {
        return this.segments[i];
    }

    public String lastSegment() {
        int len = this.segments.length;
        if (len == 0) {
            return null;
        }
        return this.segments[len - 1];
    }

    public String path() {
        if (!this.hasPath()) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        if (this.hasAbsolutePath()) {
            result.append('/');
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            if (i != 0) {
                result.append('/');
            }
            result.append(this.segments[i]);
            ++i;
        }
        return result.toString();
    }

    public String devicePath() {
        if (!this.hasPath()) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        if (this.hasAuthority()) {
            if (!this.isArchive()) {
                result.append(AUTHORITY_SEPARATOR);
            }
            result.append(this.authority);
            if (this.hasDevice()) {
                result.append('/');
            }
        }
        if (this.hasDevice()) {
            result.append(this.device);
        }
        if (this.hasAbsolutePath()) {
            result.append('/');
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            if (i != 0) {
                result.append('/');
            }
            result.append(this.segments[i]);
            ++i;
        }
        return result.toString();
    }

    public String query() {
        return this.query;
    }

    public URI appendQuery(String query) {
        if (!URI.validQuery(query)) {
            throw new IllegalArgumentException("invalid query portion: " + query);
        }
        return new URI(this.isHierarchical(), this.scheme, this.authority, this.device, this.hasAbsolutePath(), this.segments, query, this.fragment);
    }

    public URI trimQuery() {
        if (this.query == null) {
            return this;
        }
        return new URI(this.isHierarchical(), this.scheme, this.authority, this.device, this.hasAbsolutePath(), this.segments, null, this.fragment);
    }

    public String fragment() {
        return this.fragment;
    }

    public URI appendFragment(String fragment) {
        if (!URI.validFragment(fragment)) {
            throw new IllegalArgumentException("invalid fragment portion: " + fragment);
        }
        URI result = new URI(this.isHierarchical(), this.scheme, this.authority, this.device, this.hasAbsolutePath(), this.segments, this.query, fragment);
        if (!this.hasFragment()) {
            result.cachedTrimFragment = this;
        }
        return result;
    }

    public URI trimFragment() {
        if (this.fragment == null) {
            return this;
        }
        if (this.cachedTrimFragment == null) {
            this.cachedTrimFragment = new URI(this.isHierarchical(), this.scheme, this.authority, this.device, this.hasAbsolutePath(), this.segments, this.query, null);
        }
        return this.cachedTrimFragment;
    }

    public URI resolve(URI base) {
        return this.resolve(base, true);
    }

    public URI resolve(URI base, boolean preserveRootParents) {
        if (!base.isHierarchical() || base.isRelative()) {
            throw new IllegalArgumentException("resolve against non-hierarchical or relative base");
        }
        if (!this.isRelative()) {
            return this;
        }
        String newAuthority = this.authority;
        String newDevice = this.device;
        boolean newAbsolutePath = this.hasAbsolutePath();
        String[] newSegments = this.segments;
        String newQuery = this.query;
        if (this.authority == null) {
            newAuthority = base.authority();
            if (this.device == null) {
                newDevice = base.device();
                if (this.hasEmptyPath() && this.query == null) {
                    newAbsolutePath = base.hasAbsolutePath();
                    newSegments = base.segments();
                    newQuery = base.query();
                } else if (this.hasRelativePath()) {
                    newAbsolutePath = base.hasAbsolutePath() || !this.hasEmptyPath();
                    newSegments = newAbsolutePath ? this.mergePath(base, preserveRootParents) : NO_SEGMENTS;
                }
            }
        }
        return new URI(true, base.scheme(), newAuthority, newDevice, newAbsolutePath, newSegments, newQuery, this.fragment);
    }

    private String[] mergePath(URI base, boolean preserveRootParents) {
        if (base.hasRelativePath()) {
            throw new IllegalArgumentException("merge against relative path");
        }
        if (!this.hasRelativePath()) {
            throw new IllegalStateException("merge non-relative path");
        }
        int baseSegmentCount = base.segmentCount();
        int segmentCount = this.segments.length;
        String[] stack = new String[baseSegmentCount + segmentCount];
        int sp = 0;
        int i = 0;
        while (i < baseSegmentCount - 1) {
            sp = URI.accumulate(stack, sp, base.segment(i), preserveRootParents);
            ++i;
        }
        i = 0;
        while (i < segmentCount) {
            sp = URI.accumulate(stack, sp, this.segments[i], preserveRootParents);
            ++i;
        }
        if (sp > 0 && (segmentCount == 0 || SEGMENT_EMPTY.equals(this.segments[segmentCount - 1]) || SEGMENT_PARENT.equals(this.segments[segmentCount - 1]) || SEGMENT_SELF.equals(this.segments[segmentCount - 1]))) {
            stack[sp++] = SEGMENT_EMPTY;
        }
        String[] result = new String[sp];
        System.arraycopy(stack, 0, result, 0, sp);
        return result;
    }

    private static int accumulate(String[] stack, int sp, String segment, boolean preserveRootParents) {
        if (SEGMENT_PARENT.equals(segment)) {
            if (sp == 0) {
                if (preserveRootParents) {
                    stack[sp++] = segment;
                }
            } else if (SEGMENT_PARENT.equals(stack[sp - 1])) {
                stack[sp++] = segment;
            } else {
                --sp;
            }
        } else if (!SEGMENT_EMPTY.equals(segment) && !SEGMENT_SELF.equals(segment)) {
            stack[sp++] = segment;
        }
        return sp;
    }

    public URI deresolve(URI base) {
        return this.deresolve(base, true, false, true);
    }

    public URI deresolve(URI base, boolean preserveRootParents, boolean anyRelPath, boolean shorterRelPath) {
        if (!base.isHierarchical() || base.isRelative()) {
            return this;
        }
        if (this.isRelative()) {
            return this;
        }
        if (!this.scheme.equalsIgnoreCase(base.scheme())) {
            return this;
        }
        if (!this.isHierarchical()) {
            return this;
        }
        String newAuthority = this.authority;
        String newDevice = this.device;
        boolean newAbsolutePath = this.hasAbsolutePath();
        String[] newSegments = this.segments;
        String newQuery = this.query;
        if (URI.equals(this.authority, base.authority()) && (this.hasDevice() || this.hasPath() || !base.hasDevice() && !base.hasPath())) {
            newAuthority = null;
            if (URI.equals(this.device, base.device()) && (this.hasPath() || !base.hasPath())) {
                newDevice = null;
                if (anyRelPath || shorterRelPath) {
                    if (this.hasPath() == base.hasPath() && this.segmentsEqual(base) && URI.equals(this.query, base.query())) {
                        newAbsolutePath = false;
                        newSegments = NO_SEGMENTS;
                        newQuery = null;
                    } else if (!this.hasPath() && !base.hasPath()) {
                        newAbsolutePath = false;
                        newSegments = NO_SEGMENTS;
                    } else if (!this.hasCollapsableSegments(preserveRootParents)) {
                        String[] rel = this.findRelativePath(base, preserveRootParents);
                        if (anyRelPath || this.segments.length > rel.length) {
                            newAbsolutePath = false;
                            newSegments = rel;
                        }
                    }
                }
            }
        }
        return new URI(true, null, newAuthority, newDevice, newAbsolutePath, newSegments, newQuery, this.fragment);
    }

    private boolean hasCollapsableSegments(boolean preserveRootParents) {
        if (this.hasRelativePath()) {
            throw new IllegalStateException("test collapsability of relative path");
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            String segment = this.segments[i];
            if (i < len - 1 && SEGMENT_EMPTY.equals(segment) || SEGMENT_SELF.equals(segment) || SEGMENT_PARENT.equals(segment) && (!preserveRootParents || i != 0 && !SEGMENT_PARENT.equals(this.segments[i - 1]))) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private String[] findRelativePath(URI base, boolean preserveRootParents) {
        if (base.hasRelativePath()) {
            throw new IllegalArgumentException("find relative path against base with relative path");
        }
        if (!this.hasAbsolutePath()) {
            throw new IllegalArgumentException("find relative path of non-absolute path");
        }
        String[] startPath = base.collapseSegments(preserveRootParents);
        String[] endPath = this.segments;
        int startCount = startPath.length > 0 ? startPath.length - 1 : 0;
        int endCount = endPath.length;
        int diff = 0;
        int count = startCount < endCount ? startCount : endCount - 1;
        while (diff < count && startPath[diff].equals(endPath[diff])) {
            ++diff;
        }
        int upCount = startCount - diff;
        int downCount = endCount - diff;
        if (downCount == 1 && SEGMENT_EMPTY.equals(endPath[endCount - 1])) {
            downCount = 0;
        }
        if (upCount + downCount == 0) {
            if (this.query == null) {
                return new String[]{SEGMENT_SELF};
            }
            return NO_SEGMENTS;
        }
        Object[] result = new String[upCount + downCount];
        Arrays.fill(result, 0, upCount, SEGMENT_PARENT);
        System.arraycopy(endPath, diff, result, upCount, downCount);
        return result;
    }

    String[] collapseSegments(boolean preserveRootParents) {
        if (this.hasRelativePath()) {
            throw new IllegalStateException("collapse relative path");
        }
        if (!this.hasCollapsableSegments(preserveRootParents)) {
            return this.segments();
        }
        int segmentCount = this.segments.length;
        String[] stack = new String[segmentCount];
        int sp = 0;
        int i = 0;
        while (i < segmentCount) {
            sp = URI.accumulate(stack, sp, this.segments[i], preserveRootParents);
            ++i;
        }
        if (sp > 0 && (SEGMENT_EMPTY.equals(this.segments[segmentCount - 1]) || SEGMENT_PARENT.equals(this.segments[segmentCount - 1]) || SEGMENT_SELF.equals(this.segments[segmentCount - 1]))) {
            stack[sp++] = SEGMENT_EMPTY;
        }
        String[] result = new String[sp];
        System.arraycopy(stack, 0, result, 0, sp);
        return result;
    }

    public String toString() {
        if (this.cachedToString == null) {
            StringBuffer result = new StringBuffer();
            if (!this.isRelative()) {
                result.append(this.scheme);
                result.append(':');
            }
            if (this.isHierarchical()) {
                if (this.hasAuthority()) {
                    if (!this.isArchive()) {
                        result.append(AUTHORITY_SEPARATOR);
                    }
                    result.append(this.authority);
                }
                if (this.hasDevice()) {
                    result.append('/');
                    result.append(this.device);
                }
                if (this.hasAbsolutePath()) {
                    result.append('/');
                }
                int i = 0;
                int len = this.segments.length;
                while (i < len) {
                    if (i != 0) {
                        result.append('/');
                    }
                    result.append(this.segments[i]);
                    ++i;
                }
                if (this.hasQuery()) {
                    result.append('?');
                    result.append(this.query);
                }
            } else {
                result.append(this.authority);
            }
            if (this.hasFragment()) {
                result.append('#');
                result.append(this.fragment);
            }
            this.cachedToString = result.toString();
        }
        return this.cachedToString;
    }

    String toString(boolean includeSimpleForm) {
        StringBuffer result = new StringBuffer();
        if (includeSimpleForm) {
            result.append(this.toString());
        }
        result.append("\n hierarchical: ");
        result.append(this.isHierarchical());
        result.append("\n       scheme: ");
        result.append(this.scheme);
        result.append("\n    authority: ");
        result.append(this.authority);
        result.append("\n       device: ");
        result.append(this.device);
        result.append("\n absolutePath: ");
        result.append(this.hasAbsolutePath());
        result.append("\n     segments: ");
        if (this.segments.length == 0) {
            result.append("<empty>");
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            if (i > 0) {
                result.append("\n               ");
            }
            result.append(this.segments[i]);
            ++i;
        }
        result.append("\n        query: ");
        result.append(this.query);
        result.append("\n     fragment: ");
        result.append(this.fragment);
        return result.toString();
    }

    public String toFileString() {
        if (!this.isFile()) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        char separator = File.separatorChar;
        if (this.hasAuthority()) {
            result.append(separator);
            result.append(separator);
            result.append(this.authority);
            if (this.hasDevice()) {
                result.append(separator);
            }
        }
        if (this.hasDevice()) {
            result.append(this.device);
        }
        if (this.hasAbsolutePath()) {
            result.append(separator);
        }
        int i = 0;
        int len = this.segments.length;
        while (i < len) {
            if (i != 0) {
                result.append(separator);
            }
            result.append(this.segments[i]);
            ++i;
        }
        return URI.decode(result.toString());
    }

    public String toPlatformString(boolean decode) {
        if (this.isPlatform()) {
            StringBuffer result = new StringBuffer();
            int i = 1;
            int len = this.segments.length;
            while (i < len) {
                result.append('/').append(decode ? URI.decode(this.segments[i]) : this.segments[i]);
                ++i;
            }
            return result.toString();
        }
        return null;
    }

    public URI appendSegment(String segment) {
        if (!URI.validSegment(segment)) {
            throw new IllegalArgumentException("invalid segment: " + segment);
        }
        if (!this.isHierarchical()) {
            return this;
        }
        boolean newAbsolutePath = !this.hasRelativePath();
        int len = this.segments.length;
        String[] newSegments = new String[len + 1];
        System.arraycopy(this.segments, 0, newSegments, 0, len);
        newSegments[len] = segment;
        return new URI(true, this.scheme, this.authority, this.device, newAbsolutePath, newSegments, this.query, this.fragment);
    }

    public URI appendSegments(String[] segments) {
        if (!URI.validSegments(segments)) {
            String s = segments == null ? "invalid segments: null" : "invalid segment: " + URI.firstInvalidSegment(segments);
            throw new IllegalArgumentException(s);
        }
        if (!this.isHierarchical()) {
            return this;
        }
        boolean newAbsolutePath = !this.hasRelativePath();
        int len = this.segments.length;
        int segmentsCount = segments.length;
        String[] newSegments = new String[len + segmentsCount];
        System.arraycopy(this.segments, 0, newSegments, 0, len);
        System.arraycopy(segments, 0, newSegments, len, segmentsCount);
        return new URI(true, this.scheme, this.authority, this.device, newAbsolutePath, newSegments, this.query, this.fragment);
    }

    public URI trimSegments(int i) {
        if (!this.isHierarchical() || i < 1) {
            return this;
        }
        String[] newSegments = NO_SEGMENTS;
        int len = this.segments.length - i;
        if (len > 0) {
            newSegments = new String[len];
            System.arraycopy(this.segments, 0, newSegments, 0, len);
        }
        return new URI(true, this.scheme, this.authority, this.device, this.hasAbsolutePath(), newSegments, this.query, this.fragment);
    }

    public boolean hasTrailingPathSeparator() {
        return this.segments.length > 0 && SEGMENT_EMPTY.equals(this.segments[this.segments.length - 1]);
    }

    public String fileExtension() {
        int len = this.segments.length;
        if (len == 0) {
            return null;
        }
        String lastSegment = this.segments[len - 1];
        int i = lastSegment.lastIndexOf(46);
        return i < 0 ? null : lastSegment.substring(i + 1);
    }

    public URI appendFileExtension(String fileExtension) {
        if (!URI.validSegment(fileExtension)) {
            throw new IllegalArgumentException("invalid segment portion: " + fileExtension);
        }
        int len = this.segments.length;
        if (len == 0) {
            return this;
        }
        String lastSegment = this.segments[len - 1];
        if (SEGMENT_EMPTY.equals(lastSegment)) {
            return this;
        }
        StringBuffer newLastSegment = new StringBuffer(lastSegment);
        newLastSegment.append('.');
        newLastSegment.append(fileExtension);
        String[] newSegments = new String[len];
        System.arraycopy(this.segments, 0, newSegments, 0, len - 1);
        newSegments[len - 1] = newLastSegment.toString();
        return new URI(true, this.scheme, this.authority, this.device, this.hasAbsolutePath(), newSegments, this.query, this.fragment);
    }

    public URI trimFileExtension() {
        int len = this.segments.length;
        if (len == 0) {
            return this;
        }
        String lastSegment = this.segments[len - 1];
        int i = lastSegment.lastIndexOf(46);
        if (i < 0) {
            return this;
        }
        String newLastSegment = lastSegment.substring(0, i);
        String[] newSegments = new String[len];
        System.arraycopy(this.segments, 0, newSegments, 0, len - 1);
        newSegments[len - 1] = newLastSegment;
        return new URI(true, this.scheme, this.authority, this.device, this.hasAbsolutePath(), newSegments, this.query, this.fragment);
    }

    public boolean isPrefix() {
        return this.isHierarchical() && this.query == null && this.fragment == null && (this.hasTrailingPathSeparator() || this.hasAbsolutePath() && this.segments.length == 0);
    }

    public URI replacePrefix(URI oldPrefix, URI newPrefix) {
        if (!oldPrefix.isPrefix() || !newPrefix.isPrefix()) {
            String which = oldPrefix.isPrefix() ? "new" : "old";
            throw new IllegalArgumentException("non-prefix " + which + " value");
        }
        String[] tailSegments = this.getTailSegments(oldPrefix);
        if (tailSegments == null) {
            return null;
        }
        String[] mergedSegments = tailSegments;
        if (newPrefix.segmentCount() != 0) {
            int segmentsToKeep = newPrefix.segmentCount() - 1;
            mergedSegments = new String[segmentsToKeep + tailSegments.length];
            System.arraycopy(newPrefix.segments(), 0, mergedSegments, 0, segmentsToKeep);
            if (tailSegments.length != 0) {
                System.arraycopy(tailSegments, 0, mergedSegments, segmentsToKeep, tailSegments.length);
            }
        }
        return new URI(true, newPrefix.scheme(), newPrefix.authority(), newPrefix.device(), newPrefix.hasAbsolutePath(), mergedSegments, this.query, this.fragment);
    }

    /*
     * Unable to fully structure code
     */
    private String[] getTailSegments(URI prefix) {
        if (!prefix.isPrefix()) {
            throw new IllegalArgumentException("non-prefix trim");
        }
        if (!(this.isHierarchical() && URI.equals(this.scheme, prefix.scheme(), true) && URI.equals(this.authority, prefix.authority()) && URI.equals(this.device, prefix.device()) && this.hasAbsolutePath() == prefix.hasAbsolutePath())) {
            return null;
        }
        if (prefix.segmentCount() == 0) {
            return this.segments;
        }
        i = 0;
        segmentsToCompare = prefix.segmentCount() - 1;
        if (this.segments.length > segmentsToCompare) ** GOTO lbl14
        return null;
lbl-1000:
        // 1 sources

        {
            if (!this.segments[i].equals(prefix.segment(i))) {
                return null;
            }
            ++i;
lbl14:
            // 2 sources

            ** while (i < segmentsToCompare)
        }
lbl15:
        // 1 sources

        if (i == this.segments.length - 1 && "".equals(this.segments[i])) {
            return URI.NO_SEGMENTS;
        }
        newSegments = new String[this.segments.length - i];
        System.arraycopy(this.segments, i, newSegments, 0, newSegments.length);
        return newSegments;
    }

    public static String encodeOpaquePart(String value, boolean ignoreEscaped) {
        String result = URI.encode(value, URIC_HI, URIC_LO, ignoreEscaped);
        return result != null && result.length() > 0 && result.charAt(0) == '/' ? "%2F" + result.substring(1) : result;
    }

    public static String encodeAuthority(String value, boolean ignoreEscaped) {
        return URI.encode(value, SEGMENT_CHAR_HI, SEGMENT_CHAR_LO, ignoreEscaped);
    }

    public static String encodeSegment(String value, boolean ignoreEscaped) {
        return URI.encode(value, SEGMENT_CHAR_HI, SEGMENT_CHAR_LO, ignoreEscaped);
    }

    public static String encodeQuery(String value, boolean ignoreEscaped) {
        return URI.encode(value, URIC_HI, URIC_LO, ignoreEscaped);
    }

    public static String encodeFragment(String value, boolean ignoreEscaped) {
        return URI.encode(value, URIC_HI, URIC_LO, ignoreEscaped);
    }

    private static String encodeURI(String uri, boolean ignoreEscaped, int fragmentLocationStyle) {
        int j;
        if (uri == null) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        int i = uri.indexOf(58);
        if (i != -1) {
            String scheme = uri.substring(0, i);
            result.append(scheme);
            result.append(':');
        }
        int n = fragmentLocationStyle == 1 ? uri.indexOf(35) : (j = fragmentLocationStyle == 2 ? uri.lastIndexOf(35) : -1);
        if (j != -1) {
            String sspart = uri.substring(++i, j);
            result.append(URI.encode(sspart, URIC_HI, URIC_LO, ignoreEscaped));
            result.append('#');
            String fragment = uri.substring(++j);
            result.append(URI.encode(fragment, URIC_HI, URIC_LO, ignoreEscaped));
        } else {
            String sspart = uri.substring(++i);
            result.append(URI.encode(sspart, URIC_HI, URIC_LO, ignoreEscaped));
        }
        return result.toString();
    }

    private static String encode(String value, long highBitmask, long lowBitmask, boolean ignoreEscaped) {
        if (value == null) {
            return null;
        }
        StringBuffer result = null;
        int i = 0;
        int len = value.length();
        while (i < len) {
            char c = value.charAt(i);
            if (!(URI.matches(c, highBitmask, lowBitmask) || c >= '\u00a0' || ignoreEscaped && URI.isEscaped(value, i))) {
                if (result == null) {
                    result = new StringBuffer(value.substring(0, i));
                }
                URI.appendEscaped(result, (byte)c);
            } else if (result != null) {
                result.append(c);
            }
            ++i;
        }
        return result == null ? value : result.toString();
    }

    private static boolean isEscaped(String s, int i) {
        return s.charAt(i) == '%' && s.length() > i + 2 && URI.matches(s.charAt(i + 1), HEX_HI, HEX_LO) && URI.matches(s.charAt(i + 2), HEX_HI, HEX_LO);
    }

    private static void appendEscaped(StringBuffer result, byte b) {
        result.append('%');
        result.append(HEX_DIGITS[b >> 4 & 0xF]);
        result.append(HEX_DIGITS[b & 0xF]);
    }

    public static String decode(String value) {
        if (value == null) {
            return null;
        }
        int i = value.indexOf(37);
        if (i < 0) {
            return value;
        }
        StringBuilder result = new StringBuilder(value.substring(0, i));
        byte[] bytes = new byte[4];
        int receivedBytes = 0;
        int expectedBytes = 0;
        int len = value.length();
        while (i < len) {
            if (URI.isEscaped(value, i)) {
                char character = URI.unescape(value.charAt(i + 1), value.charAt(i + 2));
                i += 2;
                if (expectedBytes > 0) {
                    if ((character & 0xC0) == 128) {
                        bytes[receivedBytes++] = (byte)character;
                    } else {
                        expectedBytes = 0;
                    }
                } else if (character >= '\u0080') {
                    if ((character & 0xE0) == 192) {
                        bytes[receivedBytes++] = (byte)character;
                        expectedBytes = 2;
                    } else if ((character & 0xF0) == 224) {
                        bytes[receivedBytes++] = (byte)character;
                        expectedBytes = 3;
                    } else if ((character & 0xF8) == 240) {
                        bytes[receivedBytes++] = (byte)character;
                        expectedBytes = 4;
                    }
                }
                if (expectedBytes > 0) {
                    if (receivedBytes == expectedBytes) {
                        switch (receivedBytes) {
                            case 2: {
                                result.append((char)((bytes[0] & 0x1F) << 6 | bytes[1] & 0x3F));
                                break;
                            }
                            case 3: {
                                result.append((char)((bytes[0] & 0xF) << 12 | (bytes[1] & 0x3F) << 6 | bytes[2] & 0x3F));
                                break;
                            }
                            case 4: {
                                result.appendCodePoint((bytes[0] & 7) << 18 | (bytes[1] & 0x3F) << 12 | (bytes[2] & 0x3F) << 6 | bytes[3] & 0x3F);
                            }
                        }
                        receivedBytes = 0;
                        expectedBytes = 0;
                    }
                } else {
                    int j = 0;
                    while (j < receivedBytes) {
                        result.append((char)bytes[j]);
                        ++j;
                    }
                    receivedBytes = 0;
                    result.append(character);
                }
            } else {
                int j = 0;
                while (j < receivedBytes) {
                    result.append((char)bytes[j]);
                    ++j;
                }
                receivedBytes = 0;
                result.append(value.charAt(i));
            }
            ++i;
        }
        return result.toString();
    }

    private static char unescape(char highHexDigit, char lowHexDigit) {
        return (char)(URI.valueOf(highHexDigit) << 4 | URI.valueOf(lowHexDigit));
    }

    private static int valueOf(char hexDigit) {
        if (hexDigit >= 'A' && hexDigit <= 'F') {
            return hexDigit - 65 + 10;
        }
        if (hexDigit >= 'a' && hexDigit <= 'f') {
            return hexDigit - 97 + 10;
        }
        if (hexDigit >= '0' && hexDigit <= '9') {
            return hexDigit - 48;
        }
        return 0;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class URICache
    extends HashMap<String, WeakReference<URI>> {
        private static final long serialVersionUID = 1L;
        static final int MIN_LIMIT = 1000;
        int count;
        int limit = 1000;

        private URICache() {
        }

        public synchronized URI get(String key) {
            WeakReference reference = (WeakReference)super.get(key);
            return reference == null ? null : (URI)reference.get();
        }

        @Override
        public synchronized void put(String key, URI value) {
            super.put(key, new WeakReference<URI>(value));
            if (++this.count > this.limit) {
                this.cleanGCedValues();
            }
        }

        private void cleanGCedValues() {
            Iterator i = this.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry entry = i.next();
                WeakReference reference = (WeakReference)entry.getValue();
                if (reference.get() != null) continue;
                i.remove();
            }
            this.count = 0;
            this.limit = Math.max(1000, this.size() / 2);
        }
    }
}

