/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.internal.p2.metadata.EnumDefinition;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.OSGiVersion;
import org.eclipse.equinox.internal.p2.metadata.OmniVersion;
import org.eclipse.equinox.internal.p2.metadata.RawFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionFormatParser;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.internal.p2.metadata.VersionVector;
import org.eclipse.equinox.p2.metadata.IVersionFormat;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionFormatException;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VersionFormat
implements IVersionFormat,
Serializable {
    public static final String OSGI_FORMAT_STRING = "n[.n=0;[.n=0;[.S='';=[A-Za-z0-9_-];]]]";
    public static final String RAW_FORMAT_STRING = "r(.r)*p?";
    private static final long serialVersionUID = -5689435955091405520L;
    private static final Map<String, VersionFormat> formatCache = Collections.synchronizedMap(new HashMap());
    public static final VersionFormat OSGI_FORMAT;
    public static final VersionFormat RAW_FORMAT;
    private String fmtString;
    private final VersionFormatParser.Fragment topFragment;

    static {
        try {
            VersionFormatParser parser = new VersionFormatParser();
            OSGI_FORMAT = new VersionFormat(parser.compile(OSGI_FORMAT_STRING, 0, OSGI_FORMAT_STRING.length()));
            formatCache.put(OSGI_FORMAT_STRING, OSGI_FORMAT);
            RAW_FORMAT = new RawFormat(parser.compile(RAW_FORMAT_STRING, 0, RAW_FORMAT_STRING.length()));
            formatCache.put(RAW_FORMAT_STRING, RAW_FORMAT);
        }
        catch (VersionFormatException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static IVersionFormat compile(String format) throws VersionFormatException {
        return VersionFormat.compile(format, 0, format.length());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static VersionFormat compile(String format, int start, int end) throws VersionFormatException {
        String fmtString;
        String string = fmtString = format.substring(start, end).intern();
        synchronized (string) {
            VersionFormat fmt = formatCache.get(fmtString);
            if (fmt == null) {
                VersionFormatParser parser = new VersionFormatParser();
                fmt = new VersionFormat(parser.compile(format, start, end));
                formatCache.put(fmtString, fmt);
            }
            return fmt;
        }
    }

    public static BasicVersion parseRaw(String version, IVersionFormat originalFormat, String original) {
        List<Comparable<?>> vector = RAW_FORMAT.parse(version, 0, version.length());
        return originalFormat == OSGI_FORMAT ? OSGiVersion.fromVector(vector) : OmniVersion.fromVector(vector, originalFormat, original);
    }

    static void rawToString(StringBuffer sb, boolean forRange, Comparable<?> e) {
        if (e instanceof String) {
            VersionFormat.writeQuotedString(sb, forRange, (String)((Object)e), '\'', 0, false);
        } else if (e instanceof VersionVector) {
            sb.append('<');
            ((VersionVector)e).toString(sb, forRange);
            sb.append('>');
        } else if (e instanceof EnumDefinition.EnumSegment) {
            ((EnumDefinition.EnumSegment)e).toString(sb);
        } else {
            sb.append(e);
        }
    }

    private static void writeQuotedString(StringBuffer sb, boolean rangeSafe, String s, char quote, int startPos, boolean didFlip) {
        int quotePos = sb.length();
        sb.append(quote);
        boolean otherSeen = false;
        int top = s.length();
        int idx = startPos;
        while (idx < top) {
            char c = s.charAt(idx);
            if (c == '\'' || c == '\"') {
                if (c == quote) {
                    char otherQuote;
                    char c2 = otherQuote = quote == '\'' ? (char)'\"' : '\'';
                    if (didFlip || otherSeen) {
                        sb.append(quote);
                        VersionFormat.writeQuotedString(sb, rangeSafe, s, otherQuote, idx, true);
                        return;
                    }
                    quote = otherQuote;
                    sb.setCharAt(quotePos, quote);
                    didFlip = true;
                } else {
                    otherSeen = true;
                }
            }
            if (rangeSafe && (c == '\\' || c == '[' || c == '(' || c == ']' || c == ')' || c == ',' || c <= ' ')) {
                sb.append('\\');
            }
            sb.append(c);
            ++idx;
        }
        sb.append(quote);
    }

    VersionFormat(VersionFormatParser.Fragment topFragment) {
        this.topFragment = topFragment;
    }

    TreeInfo createInfo(int start) {
        return new TreeInfo(this.topFragment, start);
    }

    public boolean equals(Object o) {
        return this == o || o instanceof VersionFormat && this.toString().equals(o.toString());
    }

    public int hashCode() {
        return 11 * this.toString().hashCode();
    }

    @Override
    public Version parse(String version) {
        List<Comparable<?>> vector = this.parse(version, 0, version.length());
        return this == OSGI_FORMAT ? OSGiVersion.fromVector(vector) : OmniVersion.fromVector(vector, this, version);
    }

    List<Comparable<?>> parse(String version, int start, int maxPos) {
        if (start == maxPos) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.format_0_unable_to_parse_empty_version, (Object)this, (Object)version.substring(start, maxPos)));
        }
        ArrayList entries = new ArrayList(5);
        TreeInfo info = new TreeInfo(this.topFragment, start);
        if (!this.topFragment.parse(entries, version, maxPos, info) || info.getPosition() != maxPos) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.format_0_unable_to_parse_1, (Object)this, (Object)version.substring(start, maxPos)));
        }
        entries.add(VersionParser.removeRedundantTrail(entries, info.getPadValue()));
        return entries;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Object readResolve() {
        Map<String, VersionFormat> map = formatCache;
        synchronized (map) {
            String string = this.toString();
            string = string.substring(7, string.length() - 1);
            VersionFormat fmt = formatCache.get(string);
            if (fmt == null) {
                fmt = this;
                formatCache.put(string, fmt);
            }
            return fmt;
        }
    }

    public synchronized String toString() {
        if (this.fmtString == null) {
            StringBuffer sb = new StringBuffer();
            this.toString(sb);
        }
        return this.fmtString;
    }

    @Override
    public synchronized void toString(StringBuffer sb) {
        if (this.fmtString != null) {
            sb.append(this.fmtString);
        } else {
            int start = sb.length();
            sb.append("format");
            if (this.topFragment.getPadValue() != null) {
                sb.append('(');
                this.topFragment.toString(sb);
                sb.append(')');
            } else {
                this.topFragment.toString(sb);
            }
            this.fmtString = sb.substring(start);
        }
    }

    private static class StateInfo {
        VersionFormatParser.Fragment fragment;
        int position;
        int segmentCount;

        StateInfo(int position, int segmentCount, VersionFormatParser.Fragment fragment) {
            this.fragment = fragment;
            this.position = position;
            this.segmentCount = segmentCount;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class TreeInfo
    extends ArrayList<StateInfo> {
        private static final long serialVersionUID = 4474591345244587260L;
        private Comparable<?> padValue;
        private int top;

        TreeInfo(VersionFormatParser.Fragment frag, int pos) {
            this.add(new StateInfo(pos, 0, frag));
            this.top = 0;
        }

        Comparable<?> getPadValue() {
            return this.padValue;
        }

        int getPosition() {
            return ((StateInfo)this.get((int)this.top)).position;
        }

        void popState(List<Comparable<?>> segments, VersionFormatParser.Fragment frag) {
            int idx = this.top;
            while (idx > 0) {
                StateInfo si = (StateInfo)this.get(idx);
                if (si.fragment != frag) continue;
                int nsegs = segments.size();
                int segMax = si.segmentCount;
                while (nsegs > segMax) {
                    segments.remove(--nsegs);
                }
                this.top = idx - 1;
                break;
            }
        }

        void pushState(int segCount, VersionFormatParser.Fragment fragment) {
            int pos = ((StateInfo)this.get((int)this.top)).position;
            if (++this.top == this.size()) {
                this.add(new StateInfo(pos, segCount, fragment));
            } else {
                StateInfo si = (StateInfo)this.get(this.top);
                si.fragment = fragment;
                si.position = pos;
                si.segmentCount = segCount;
            }
        }

        void setPadValue(Comparable<?> pad) {
            this.padValue = pad;
        }

        void setPosition(int pos) {
            ((StateInfo)this.get((int)this.top)).position = pos;
        }
    }
}

