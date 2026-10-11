/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public final class StringOperation {
    private static final int[] EMPTY_REGIONS = new int[0];

    public static final int[] getCamelCaseMatchingRegions(String pattern, int patternStart, int patternEnd, String name, int nameStart, int nameEnd, boolean samePartCount) {
        if (name == null) {
            return null;
        }
        if (pattern == null) {
            return EMPTY_REGIONS;
        }
        if (patternEnd < 0) {
            patternEnd = pattern.length();
        }
        if (nameEnd < 0) {
            nameEnd = name.length();
        }
        if (patternEnd <= patternStart) {
            int[] nArray;
            if (nameEnd <= nameStart) {
                int[] nArray2 = new int[2];
                nArray2[0] = patternStart;
                nArray = nArray2;
                nArray2[1] = patternEnd - patternStart;
            } else {
                nArray = null;
            }
            return nArray;
        }
        if (nameEnd <= nameStart) {
            return null;
        }
        if (name.charAt(nameStart) != pattern.charAt(patternStart)) {
            return null;
        }
        int iPattern = patternStart;
        int iName = nameStart;
        int parts = 1;
        int i = patternStart + 1;
        while (i < patternEnd) {
            char ch = pattern.charAt(i);
            if (ch < '\u0080') {
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[ch] & 0x24) != 0) {
                    ++parts;
                }
            } else if (Character.isJavaIdentifierPart(ch) && (Character.isUpperCase(ch) || Character.isDigit(ch))) {
                ++parts;
            }
            ++i;
        }
        int[] segments = null;
        int count = 0;
        int segmentStart = iName;
        while (true) {
            int segmentEnd;
            block39: {
                char nameChar;
                ++iName;
                if (++iPattern == patternEnd) {
                    if (!samePartCount || iName == nameEnd) {
                        if (segments == null) {
                            segments = new int[2];
                        }
                        segments[count++] = segmentStart;
                        segments[count++] = iName - segmentStart;
                        if (count < segments.length) {
                            int[] nArray = segments;
                            segments = new int[count];
                            System.arraycopy(nArray, 0, segments, 0, count);
                        }
                        return segments;
                    }
                    segmentEnd = iName;
                    while (true) {
                        if (iName == nameEnd) {
                            if (segments == null) {
                                segments = new int[2];
                            }
                            segments[count++] = segmentStart;
                            segments[count++] = segmentEnd - segmentStart;
                            if (count < segments.length) {
                                int[] nArray = segments;
                                segments = new int[count];
                                System.arraycopy(nArray, 0, segments, 0, count);
                            }
                            return segments;
                        }
                        nameChar = name.charAt(iName);
                        if (nameChar < '\u0080' ? (ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[nameChar] & 0x20) != 0 : !Character.isJavaIdentifierPart(nameChar) || Character.isUpperCase(nameChar)) {
                            return null;
                        }
                        ++iName;
                    }
                }
                if (iName == nameEnd) {
                    return null;
                }
                char patternChar = pattern.charAt(iPattern);
                if (patternChar == name.charAt(iName)) continue;
                segmentEnd = iName;
                if (patternChar < '\u0080' ? (ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[patternChar] & 0x24) == 0 : Character.isJavaIdentifierPart(patternChar) && !Character.isUpperCase(patternChar) && !Character.isDigit(patternChar)) {
                    return null;
                }
                while (true) {
                    if (iName == nameEnd) {
                        return null;
                    }
                    nameChar = name.charAt(iName);
                    if (nameChar < '\u0080') {
                        int charNature = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[nameChar];
                        if ((charNature & 0x90) != 0) {
                            ++iName;
                            continue;
                        }
                        if ((charNature & 4) != 0) {
                            if (patternChar != nameChar) {
                                ++iName;
                                continue;
                            }
                        } else if (patternChar != nameChar) {
                            return null;
                        }
                    } else {
                        if (Character.isJavaIdentifierPart(nameChar) && !Character.isUpperCase(nameChar)) {
                            ++iName;
                            continue;
                        }
                        if (!Character.isDigit(nameChar)) break;
                        if (patternChar != nameChar) {
                            ++iName;
                            continue;
                        }
                    }
                    break block39;
                    break;
                }
                if (patternChar != nameChar) {
                    return null;
                }
            }
            if (segments == null) {
                segments = new int[parts * 2];
            }
            segments[count++] = segmentStart;
            segments[count++] = segmentEnd - segmentStart;
            segmentStart = iName;
        }
    }

    /*
     * Unable to fully structure code
     */
    public static final int[] getPatternMatchingRegions(String pattern, int patternStart, int patternEnd, String name, int nameStart, int nameEnd, boolean isCaseSensitive) {
        if (name == null) {
            return null;
        }
        if (pattern == null) {
            return StringOperation.EMPTY_REGIONS;
        }
        iPattern = patternStart;
        iName = nameStart;
        if (patternEnd < 0) {
            patternEnd = pattern.length();
        }
        if (nameEnd < 0) {
            nameEnd = name.length();
        }
        questions = 0;
        parts = 0;
        previous = '\u0000';
        i = patternStart;
        while (i < patternEnd) {
            ch = pattern.charAt(i);
            switch (ch) {
                case '?': {
                    ++questions;
                    break;
                }
                case '*': {
                    break;
                }
                default: {
                    switch (previous) {
                        case '\u0000': 
                        case '*': 
                        case '?': {
                            ++parts;
                        }
                    }
                }
            }
            previous = ch;
            ++i;
        }
        if (parts == 0) {
            if (questions <= nameEnd - nameStart) {
                return StringOperation.EMPTY_REGIONS;
            }
            return null;
        }
        segments = new int[parts * 2];
        count = 0;
        start = iName;
        patternChar = '\u0000';
        previous = '\u0000';
        if (true) ** GOTO lbl60
        do {
            if (iName == nameEnd) {
                return null;
            }
            if (patternChar == '?') {
                switch (previous) {
                    case '\u0000': 
                    case '?': {
                        break;
                    }
                    default: {
                        segments[count++] = start;
                        segments[count++] = iPattern - start;
                        break;
                    }
                }
            } else {
                if (isCaseSensitive != false ? patternChar != name.charAt(iName) : ScannerHelper.toLowerCase(patternChar) != ScannerHelper.toLowerCase(name.charAt(iName))) {
                    return null;
                }
                switch (previous) {
                    case '\u0000': 
                    case '?': {
                        start = iPattern;
                    }
                }
            }
            ++iName;
            ++iPattern;
            previous = patternChar;
lbl60:
            // 2 sources

            if (iPattern >= patternEnd) break;
            v0 = pattern.charAt(iPattern);
            patternChar = v0;
        } while (v0 != '*');
        if (patternChar == '*') {
            if (iPattern > 0 && previous != '?') {
                segments[count++] = start;
                segments[count++] = iName - start;
                start = iName;
            }
        } else {
            if (iName == nameEnd) {
                if (count == parts * 2) {
                    return segments;
                }
                end = patternEnd;
                if (previous == '?') {
                    while (pattern.charAt(--end - 1) == '?') {
                        if (end != start) continue;
                        return new int[]{patternStart, patternEnd - patternStart};
                    }
                }
                return new int[]{start, end - start};
            }
            return null;
        }
        segmentStart = ++iPattern;
        prefixStart = iName;
        previousCount = count;
        previous = patternChar;
        previousSegment = patternChar;
        while (iName < nameEnd) {
            if (iPattern == patternEnd) {
                iPattern = segmentStart;
                iName = ++prefixStart;
                previous = previousSegment;
                continue;
            }
            patternChar = pattern.charAt(iPattern);
            if (patternChar == '*') {
                if ((segmentStart = ++iPattern) == patternEnd) {
                    if (count < parts * 2) {
                        segments[count++] = start;
                        segments[count++] = iName - start;
                    }
                    return segments;
                }
                switch (previous) {
                    case '*': 
                    case '?': {
                        break;
                    }
                    default: {
                        segments[count++] = start;
                        segments[count++] = iName - start;
                    }
                }
                start = prefixStart = iName;
                previous = patternChar;
                previousSegment = patternChar;
                continue;
            }
            previousCount = count;
            if (patternChar == '?') {
                switch (previous) {
                    case '*': 
                    case '?': {
                        break;
                    }
                    default: {
                        segments[count++] = start;
                        segments[count++] = iName - start;
                        break;
                    }
                }
            } else {
                if (isCaseSensitive) {
                    mismatch = name.charAt(iName) != patternChar;
                } else {
                    v1 = mismatch = ScannerHelper.toLowerCase(name.charAt(iName)) != ScannerHelper.toLowerCase(patternChar);
                }
                if (mismatch) {
                    iPattern = segmentStart;
                    iName = ++prefixStart;
                    start = prefixStart;
                    count = previousCount;
                    previous = previousSegment;
                    continue;
                }
                switch (previous) {
                    case '?': {
                        start = iName;
                    }
                }
            }
            ++iName;
            ++iPattern;
            previous = patternChar;
        }
        if (segmentStart == patternEnd || iName == nameEnd && iPattern == patternEnd || iPattern == patternEnd - 1 && pattern.charAt(iPattern) == '*') {
            if (count < parts * 2) {
                segments[count++] = start;
                segments[count++] = iName - start;
            }
            return segments;
        }
        return null;
    }
}

