/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.compare.patch;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.compare.internal.core.patch.FilePatch2;
import org.eclipse.compare.internal.core.patch.Hunk;
import org.eclipse.compare.patch.IFilePatch2;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.core.runtime.IPath;

public class PatchBuilder {
    public static final char CONTEXT_PREFIX = ' ';
    public static final char ADDITION_PREFIX = '+';
    public static final char REMOVAL_PREFIX = '-';

    public static IHunk createHunk(int start, String[] lines) {
        int type = PatchBuilder.getHunkType(lines);
        int oldLength = PatchBuilder.getHunkLength(lines, true);
        int newLength = PatchBuilder.getHunkLength(lines, false);
        return new Hunk(null, type, start, oldLength, start, newLength, lines);
    }

    public static IFilePatch2 createFilePatch(IPath oldPath, long oldDate, IPath newPath, long newDate, IHunk[] hunks) {
        PatchBuilder.reorder(hunks);
        FilePatch2 fileDiff = new FilePatch2(oldPath, oldDate, newPath, newDate);
        int i = 0;
        while (i < hunks.length) {
            fileDiff.add((Hunk)hunks[i]);
            ++i;
        }
        return fileDiff;
    }

    public static IFilePatch2 addHunks(IFilePatch2 filePatch, IHunk[] toAdd) {
        IHunk[] result = PatchBuilder.addHunks(filePatch.getHunks(), toAdd);
        PatchBuilder.reorder(result);
        return PatchBuilder.createFilePatch(filePatch, result);
    }

    public static IFilePatch2 removeHunks(IFilePatch2 filePatch, IHunk[] toRemove) {
        IHunk[] result = PatchBuilder.removeHunks(filePatch.getHunks(), toRemove);
        PatchBuilder.reorder(result);
        return PatchBuilder.createFilePatch(filePatch, result);
    }

    private static IFilePatch2 createFilePatch(IFilePatch2 filePatch, IHunk[] hunks) {
        PatchConfiguration config = new PatchConfiguration();
        IPath beforePath = filePatch.getTargetPath(config);
        config.setReversed(true);
        IPath afterPath = filePatch.getTargetPath(config);
        return PatchBuilder.createFilePatch(beforePath, filePatch.getBeforeDate(), afterPath, filePatch.getAfterDate(), hunks);
    }

    private static int getHunkType(String[] lines) {
        boolean hasContextLines = PatchBuilder.checkForPrefix(' ', lines);
        if (!hasContextLines) {
            boolean hasLineAdditions = PatchBuilder.checkForPrefix('+', lines);
            boolean hasLineDeletions = PatchBuilder.checkForPrefix('-', lines);
            if (hasLineAdditions && !hasLineDeletions) {
                return 1;
            }
            if (!hasLineAdditions && hasLineDeletions) {
                return 2;
            }
        }
        return 3;
    }

    private static int getHunkLength(String[] lines, boolean old) {
        int length = 0;
        int i = 0;
        while (i < lines.length) {
            if (lines[i].length() > 0) {
                switch (lines[i].charAt(0)) {
                    case ' ': {
                        ++length;
                        break;
                    }
                    case '+': {
                        if (old) break;
                        ++length;
                        break;
                    }
                    case '-': {
                        if (!old) break;
                        ++length;
                        break;
                    }
                    default: {
                        throw new IllegalArgumentException("");
                    }
                }
            }
            ++i;
        }
        return length;
    }

    private static boolean checkForPrefix(char prefix, String[] lines) {
        int i = 0;
        while (i < lines.length) {
            if (lines[i].length() > 0 && lines[i].charAt(0) == prefix) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private static IHunk[] addHunks(IHunk[] hunks, IHunk[] toAdd) {
        IHunk[] ret = new IHunk[hunks.length + toAdd.length];
        System.arraycopy(hunks, 0, ret, 0, hunks.length);
        System.arraycopy(toAdd, 0, ret, hunks.length, toAdd.length);
        return ret;
    }

    private static IHunk[] removeHunks(IHunk[] hunks, IHunk[] toRemove) {
        int removed = 0;
        int i = 0;
        while (i < hunks.length) {
            int j = 0;
            while (j < toRemove.length) {
                if (toRemove[j] == hunks[i]) {
                    hunks[i] = null;
                    ++removed;
                }
                ++j;
            }
            ++i;
        }
        IHunk[] ret = new IHunk[hunks.length - removed];
        int i2 = 0;
        int j = 0;
        while (i2 < hunks.length) {
            if (hunks[i2] != null) {
                ret[j++] = hunks[i2];
            }
            ++i2;
        }
        return ret;
    }

    private static void reorder(IHunk[] hunks) {
        Arrays.sort(hunks, new HunkComparator());
        int shift = 0;
        int i = 0;
        while (i < hunks.length) {
            Hunk hunk = (Hunk)hunks[i];
            int start = hunk.getStart(false) + shift;
            hunk.setStart(start, true);
            shift += hunk.getLength(true) - hunk.getLength(false);
            ++i;
        }
    }

    static class HunkComparator
    implements Comparator {
        HunkComparator() {
        }

        public int compare(Object arg0, Object arg1) {
            if (arg0 != null && arg0 instanceof Hunk && arg1 != null && arg1 instanceof Hunk) {
                Hunk hunk0 = (Hunk)arg0;
                Hunk hunk1 = (Hunk)arg1;
                int shift = hunk0.getStart(true) - hunk1.getStart(true);
                return shift;
            }
            return 0;
        }
    }
}

