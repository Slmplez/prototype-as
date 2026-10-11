/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.p2.metadata;

import java.io.Serializable;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionParser;
import org.eclipse.equinox.p2.metadata.IVersionFormat;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionFormatException;
import org.eclipse.osgi.util.NLS;

public class VersionRange
implements Serializable {
    private static final long serialVersionUID = 4988030307298088028L;
    public static final VersionRange emptyRange = new VersionRange(Version.emptyVersion, true, Version.MAX_VERSION, true);
    private final Version minVersion;
    private final boolean includeMin;
    private final Version maxVersion;
    private final boolean includeMax;

    private static int copyEscaped(String vr, int pos, String breakChars, StringBuffer sb) {
        int top = vr.length();
        if ((pos = VersionParser.skipWhite(vr, pos)) >= top) {
            throw new IllegalArgumentException();
        }
        char c = vr.charAt(pos);
        while (true) {
            if (c == '\\' && ++pos < top) {
                c = vr.charAt(pos);
            } else {
                if (c <= ' ') {
                    return VersionParser.skipWhite(vr, pos);
                }
                if (breakChars != null && breakChars.indexOf(c) >= 0) break;
            }
            sb.append(c);
            if (++pos >= top) break;
            c = vr.charAt(pos);
        }
        return pos;
    }

    public VersionRange(Version minVersion, boolean includeMin, Version maxVersion, boolean includeMax) {
        if (minVersion == null) {
            if (maxVersion == null) {
                minVersion = Version.emptyVersion;
                maxVersion = Version.MAX_VERSION;
            } else {
                minVersion = Version.emptyVersion;
            }
        } else if (maxVersion == null) {
            maxVersion = Version.MAX_VERSION;
        } else if (minVersion != maxVersion && minVersion.equals(maxVersion)) {
            maxVersion = minVersion;
        } else if ((minVersion.getFormat() == null ? maxVersion.getFormat() != null : !minVersion.getFormat().equals(maxVersion.getFormat())) && !minVersion.equals(Version.emptyVersion) && !maxVersion.equals(Version.MAX_VERSION)) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.range_boundaries_0_and_1_cannot_have_different_formats, (Object)minVersion, (Object)maxVersion));
        }
        this.minVersion = minVersion;
        this.includeMin = includeMin;
        this.maxVersion = maxVersion;
        this.includeMax = includeMax;
        this.validateRange();
    }

    public VersionRange(String versionRange) {
        String maxStr;
        String minStr;
        int top = 0;
        int pos = 0;
        if (versionRange != null) {
            top = versionRange.length();
            pos = VersionParser.skipWhite(versionRange, 0);
            top = VersionParser.skipTrailingWhite(versionRange, pos, top);
        }
        if (pos >= top) {
            this.minVersion = Version.emptyVersion;
            this.includeMin = true;
            this.maxVersion = Version.MAX_VERSION;
            this.includeMax = true;
            return;
        }
        char c = versionRange.charAt(pos);
        int[] position = new int[1];
        boolean rawPrefix = false;
        IVersionFormat fmt = null;
        if (VersionParser.isLetter(c)) {
            if (versionRange.startsWith("raw:", pos)) {
                rawPrefix = true;
                pos += 4;
            } else {
                position[0] = pos;
                fmt = VersionRange.parseFormat(versionRange, position);
                pos = position[0];
                if (pos >= versionRange.length()) {
                    throw new IllegalArgumentException(NLS.bind((String)Messages.format_must_be_delimited_by_colon_0, (Object)versionRange));
                }
                c = versionRange.charAt(pos);
                if (c != ':') {
                    throw new IllegalArgumentException(NLS.bind((String)Messages.format_must_be_delimited_by_colon_0, (Object)versionRange));
                }
                ++pos;
            }
            pos = VersionParser.skipWhite(versionRange, pos);
            if (pos >= top) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.premature_EOS_0, (Object)versionRange));
            }
            c = versionRange.charAt(pos);
        } else {
            fmt = VersionFormat.OSGI_FORMAT;
        }
        StringBuffer sb = new StringBuffer();
        if (c == '[' || c == '(') {
            this.includeMin = c == '[';
            ++pos;
            if ((pos = VersionRange.copyEscaped(versionRange, pos, ",)]", sb)) >= top) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.premature_EOS_0, (Object)versionRange));
            }
            if ((c = versionRange.charAt(pos++)) != ',') {
                throw new IllegalArgumentException(NLS.bind((String)Messages.missing_comma_in_range_0, (Object)versionRange));
            }
            minStr = sb.toString();
            sb.setLength(0);
            pos = VersionRange.copyEscaped(versionRange, pos, ")]", sb);
            if (pos >= top) {
                throw new IllegalArgumentException();
            }
            maxStr = sb.toString();
            this.includeMax = (c = versionRange.charAt(pos++)) == ']';
        } else {
            StringBuffer sbMin = new StringBuffer();
            pos = VersionRange.copyEscaped(versionRange, pos, rawPrefix ? "/" : null, sbMin);
            this.includeMax = true;
            this.includeMin = true;
            minStr = sbMin.toString();
            maxStr = null;
        }
        if (rawPrefix) {
            String origMin = null;
            String origMax = null;
            if ((pos = VersionParser.skipWhite(versionRange, pos)) < top && versionRange.charAt(pos) == '/') {
                if (++pos == top) {
                    throw new IllegalArgumentException(NLS.bind((String)Messages.original_stated_but_missing_0, (Object)versionRange));
                }
                position[0] = pos;
                fmt = VersionRange.parseFormat(versionRange, position);
                pos = VersionParser.skipWhite(versionRange, position[0]);
                if (pos < top) {
                    boolean origUseIncDelims = false;
                    c = versionRange.charAt(pos);
                    if (c != ':') {
                        throw new IllegalArgumentException(NLS.bind((String)Messages.original_must_start_with_colon_0, (Object)versionRange));
                    }
                    ++pos;
                    if ((pos = VersionParser.skipWhite(versionRange, pos)) == top) {
                        throw new IllegalArgumentException(NLS.bind((String)Messages.original_stated_but_missing_0, (Object)versionRange));
                    }
                    c = versionRange.charAt(pos);
                    if (c == '[' || c == '(') {
                        if (this.includeMin != (c == '[') || maxStr == null) {
                            throw new IllegalArgumentException(NLS.bind((String)Messages.raw_and_original_must_use_same_range_inclusion_0, (Object)versionRange));
                        }
                        ++pos;
                        pos = VersionParser.skipWhite(versionRange, pos);
                        origUseIncDelims = true;
                    }
                    sb.setLength(0);
                    if (maxStr == null) {
                        VersionRange.copyEscaped(versionRange, pos, ",])", sb);
                        origMin = sb.toString();
                    } else {
                        if ((pos = VersionRange.copyEscaped(versionRange, pos, ",])", sb)) >= top) {
                            throw new IllegalArgumentException(NLS.bind((String)Messages.premature_EOS_0, (Object)versionRange));
                        }
                        if ((c = versionRange.charAt(pos++)) != ',') {
                            throw new IllegalArgumentException(NLS.bind((String)Messages.missing_comma_in_range_0, (Object)versionRange));
                        }
                        origMin = sb.toString();
                        sb.setLength(0);
                        pos = VersionRange.copyEscaped(versionRange, pos, "])", sb);
                        if (origUseIncDelims) {
                            if (pos >= top) {
                                throw new IllegalArgumentException(NLS.bind((String)Messages.premature_EOS_0, (Object)versionRange));
                            }
                            if (this.includeMax != ((c = versionRange.charAt(pos++)) == ']')) {
                                throw new IllegalArgumentException(NLS.bind((String)Messages.raw_and_original_must_use_same_range_inclusion_0, (Object)versionRange));
                            }
                        }
                        origMax = sb.toString();
                    }
                }
            }
            this.minVersion = VersionFormat.parseRaw(minStr, fmt, origMin);
            this.maxVersion = maxStr != null ? (maxStr.equals(minStr) ? this.minVersion : VersionFormat.parseRaw(maxStr, fmt, origMax)) : Version.MAX_VERSION;
        } else {
            if (fmt == null) {
                fmt = VersionFormat.OSGI_FORMAT;
            }
            this.minVersion = fmt.parse(minStr);
            this.maxVersion = maxStr != null ? (maxStr.equals(minStr) ? this.minVersion : fmt.parse(maxStr)) : Version.MAX_VERSION;
        }
        this.validateRange();
    }

    private static IVersionFormat parseFormat(String versionRange, int[] position) {
        int pos = VersionParser.skipWhite(versionRange, position[0]);
        if (!versionRange.startsWith("format(", pos)) {
            return null;
        }
        int end = VersionParser.findEndOfFormat(versionRange, pos += 7, versionRange.length());
        try {
            position[0] = end + 1;
            return VersionFormat.compile(versionRange, pos, end);
        }
        catch (VersionFormatException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public IVersionFormat getFormat() {
        return this.minVersion.equals(Version.emptyVersion) ? this.maxVersion.getFormat() : this.minVersion.getFormat();
    }

    public Version getMinimum() {
        return this.minVersion;
    }

    public boolean getIncludeMinimum() {
        return this.includeMin;
    }

    public Version getMaximum() {
        return this.maxVersion;
    }

    public boolean getIncludeMaximum() {
        return this.includeMax;
    }

    public VersionRange intersect(VersionRange r2) {
        boolean resultMaxIncluded;
        Version resultMax;
        boolean resultMinIncluded;
        Version resultMin;
        int minCompare = this.minVersion.compareTo(r2.getMinimum());
        int maxCompare = this.maxVersion.compareTo(r2.getMaximum());
        if (minCompare == 0) {
            if (maxCompare == 0 && this.includeMin == r2.getIncludeMinimum() && this.includeMax == r2.getIncludeMaximum()) {
                return this;
            }
            resultMin = this.minVersion;
            resultMinIncluded = this.includeMin && r2.getIncludeMinimum();
        } else if (minCompare < 0) {
            resultMin = r2.getMinimum();
            resultMinIncluded = r2.getIncludeMinimum();
        } else {
            resultMin = this.minVersion;
            resultMinIncluded = this.includeMin;
        }
        if (maxCompare > 0) {
            resultMax = r2.getMaximum();
            resultMaxIncluded = r2.getIncludeMaximum();
        } else if (maxCompare < 0) {
            resultMax = this.maxVersion;
            resultMaxIncluded = this.includeMax;
        } else {
            resultMax = this.maxVersion;
            resultMaxIncluded = this.includeMax && r2.getIncludeMaximum();
        }
        int minMaxCmp = resultMin.compareTo(resultMax);
        if (minMaxCmp < 0 || minMaxCmp == 0 && resultMinIncluded && resultMaxIncluded) {
            return new VersionRange(resultMin, resultMinIncluded, resultMax, resultMaxIncluded);
        }
        return null;
    }

    public boolean isIncluded(Version version) {
        int maxCheck;
        if (version == null) {
            return false;
        }
        if (this.minVersion == this.maxVersion) {
            return this.minVersion.equals(version);
        }
        int minCheck = this.includeMin ? 0 : -1;
        int n = maxCheck = this.includeMax ? 0 : 1;
        return this.minVersion.compareTo(version) <= minCheck && this.maxVersion.compareTo(version) >= maxCheck;
    }

    public boolean isOSGiCompatible() {
        return this.minVersion.isOSGiCompatible() && this.maxVersion.isOSGiCompatible();
    }

    public boolean equals(Object object) {
        if (!(object instanceof VersionRange)) {
            return false;
        }
        VersionRange vr = (VersionRange)object;
        return this.includeMin == vr.includeMin && this.includeMax == vr.includeMax && this.minVersion.equals(vr.getMinimum()) && this.maxVersion.equals(vr.getMaximum());
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.maxVersion.hashCode();
        result = 31 * result + this.minVersion.hashCode();
        result = 31 * result + (this.includeMax ? 1231 : 1237);
        result = 31 * result + (this.includeMin ? 1231 : 1237);
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        this.toString(result);
        return result.toString();
    }

    public void toString(StringBuffer result) {
        boolean hasOriginal;
        boolean gtEqual;
        boolean bl = gtEqual = this.includeMin && this.includeMax && Version.MAX_VERSION.equals(this.maxVersion);
        if (gtEqual && Version.emptyVersion.equals(this.minVersion)) {
            this.minVersion.toString(result);
            return;
        }
        IVersionFormat fmt = this.getFormat();
        if (fmt == VersionFormat.OSGI_FORMAT) {
            if (gtEqual) {
                this.minVersion.toString(result);
            } else {
                result.append(this.includeMin ? (char)'[' : '(');
                this.minVersion.toString(result);
                result.append(',');
                this.maxVersion.toString(result);
                result.append(this.includeMax ? (char)']' : ')');
            }
            return;
        }
        result.append("raw:");
        if (gtEqual) {
            ((BasicVersion)this.minVersion).rawToString(result, true);
        } else {
            result.append(this.includeMin ? (char)'[' : '(');
            ((BasicVersion)this.minVersion).rawToString(result, true);
            result.append(',');
            ((BasicVersion)this.maxVersion).rawToString(result, true);
            result.append(this.includeMax ? (char)']' : ')');
        }
        boolean bl2 = hasOriginal = this.minVersion.getOriginal() != null || this.maxVersion.getOriginal() != null;
        if (fmt != null || hasOriginal) {
            result.append('/');
            if (fmt != null) {
                fmt.toString(result);
            }
            if (hasOriginal) {
                result.append(':');
                if (gtEqual) {
                    ((BasicVersion)this.minVersion).originalToString(result, true);
                } else {
                    if (Version.emptyVersion.equals(this.minVersion)) {
                        ((BasicVersion)this.minVersion).rawToString(result, true);
                    } else {
                        ((BasicVersion)this.minVersion).originalToString(result, true);
                    }
                    result.append(',');
                    ((BasicVersion)this.maxVersion).originalToString(result, true);
                }
            }
        }
    }

    private Object readResolve() {
        VersionRange vr = this;
        if (this.equals(emptyRange)) {
            vr = emptyRange;
        }
        return vr;
    }

    private void validateRange() {
        int cmp = this.minVersion.compareTo(this.maxVersion);
        if (!(cmp < 0 || cmp == 0 && this.includeMin && this.includeMax)) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.range_min_0_is_not_less_then_range_max_1, (Object)this.minVersion, (Object)this.maxVersion));
        }
    }
}

