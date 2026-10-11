/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.Bidi;
import com.ibm.icu.text.BidiRun;
import java.util.Arrays;

final class BidiLine {
    BidiLine() {
    }

    /*
     * Unable to fully structure code
     */
    static void setTrailingWSStart(Bidi bidi) {
        dirProps = bidi.dirProps;
        levels = bidi.levels;
        start = bidi.length;
        paraLevel = bidi.paraLevel;
        if (Bidi.NoContextRTL(dirProps[start - 1]) != 7) ** GOTO lbl9
        bidi.trailingWSStart = start;
        return;
lbl-1000:
        // 1 sources

        {
            --start;
lbl9:
            // 2 sources

            ** while (start > 0 && (Bidi.DirPropFlagNC((byte)dirProps[start - 1]) & Bidi.MASK_WS) != 0)
        }
lbl10:
        // 2 sources

        while (start > 0 && levels[start - 1] == paraLevel) {
            --start;
        }
        bidi.trailingWSStart = start;
    }

    static Bidi setLine(Bidi paraBidi, int start, int limit) {
        Bidi lineBidi = new Bidi();
        lineBidi.originalLength = lineBidi.resultLength = limit - start;
        lineBidi.length = lineBidi.resultLength;
        int length = lineBidi.resultLength;
        lineBidi.text = new char[length];
        System.arraycopy(paraBidi.text, start, lineBidi.text, 0, length);
        lineBidi.paraLevel = paraBidi.GetParaLevelAt(start);
        lineBidi.paraCount = paraBidi.paraCount;
        lineBidi.runs = new BidiRun[0];
        lineBidi.reorderingMode = paraBidi.reorderingMode;
        lineBidi.reorderingOptions = paraBidi.reorderingOptions;
        if (paraBidi.controlCount > 0) {
            int j = start;
            while (j < limit) {
                if (Bidi.IsBidiControlChar(paraBidi.text[j])) {
                    ++lineBidi.controlCount;
                }
                ++j;
            }
            lineBidi.resultLength -= lineBidi.controlCount;
        }
        lineBidi.getDirPropsMemory(length);
        lineBidi.dirProps = lineBidi.dirPropsMemory;
        System.arraycopy(paraBidi.dirProps, start, lineBidi.dirProps, 0, length);
        lineBidi.getLevelsMemory(length);
        lineBidi.levels = lineBidi.levelsMemory;
        System.arraycopy(paraBidi.levels, start, lineBidi.levels, 0, length);
        lineBidi.runCount = -1;
        if (paraBidi.direction != 2) {
            lineBidi.direction = paraBidi.direction;
            lineBidi.trailingWSStart = paraBidi.trailingWSStart <= start ? 0 : (paraBidi.trailingWSStart < limit ? paraBidi.trailingWSStart - start : length);
        } else {
            byte[] levels = lineBidi.levels;
            BidiLine.setTrailingWSStart(lineBidi);
            int trailingWSStart = lineBidi.trailingWSStart;
            if (trailingWSStart == 0) {
                lineBidi.direction = (byte)(lineBidi.paraLevel & 1);
            } else {
                byte level = (byte)(levels[0] & 1);
                if (trailingWSStart < length && (lineBidi.paraLevel & 1) != level) {
                    lineBidi.direction = (byte)2;
                } else {
                    int i = 1;
                    while (true) {
                        if (i == trailingWSStart) {
                            lineBidi.direction = level;
                            break;
                        }
                        if ((levels[i] & 1) != level) {
                            lineBidi.direction = (byte)2;
                            break;
                        }
                        ++i;
                    }
                }
            }
            switch (lineBidi.direction) {
                case 0: {
                    lineBidi.paraLevel = (byte)(lineBidi.paraLevel + 1 & 0xFFFFFFFE);
                    lineBidi.trailingWSStart = 0;
                    break;
                }
                case 1: {
                    lineBidi.paraLevel = (byte)(lineBidi.paraLevel | 1);
                    lineBidi.trailingWSStart = 0;
                    break;
                }
            }
        }
        lineBidi.paraBidi = paraBidi;
        return lineBidi;
    }

    static byte getLevelAt(Bidi bidi, int charIndex) {
        if (bidi.direction != 2 || charIndex >= bidi.trailingWSStart) {
            return bidi.GetParaLevelAt(charIndex);
        }
        return bidi.levels[charIndex];
    }

    static byte[] getLevels(Bidi bidi) {
        int start = bidi.trailingWSStart;
        int length = bidi.length;
        if (start != length) {
            Arrays.fill(bidi.levels, start, length, bidi.paraLevel);
            bidi.trailingWSStart = length;
        }
        if (length < bidi.levels.length) {
            byte[] levels = new byte[length];
            System.arraycopy(bidi.levels, 0, levels, 0, length);
            return levels;
        }
        return bidi.levels;
    }

    static BidiRun getLogicalRun(Bidi bidi, int logicalPosition) {
        BidiRun newRun = new BidiRun();
        BidiLine.getRuns(bidi);
        int runCount = bidi.runCount;
        int visualStart = 0;
        int logicalLimit = 0;
        BidiRun iRun = bidi.runs[0];
        int i = 0;
        while (i < runCount) {
            iRun = bidi.runs[i];
            logicalLimit = iRun.start + iRun.limit - visualStart;
            if (logicalPosition >= iRun.start && logicalPosition < logicalLimit) break;
            visualStart = iRun.limit;
            ++i;
        }
        newRun.start = iRun.start;
        newRun.limit = logicalLimit;
        newRun.level = iRun.level;
        return newRun;
    }

    static BidiRun getVisualRun(Bidi bidi, int runIndex) {
        int start = bidi.runs[runIndex].start;
        byte level = bidi.runs[runIndex].level;
        int limit = runIndex > 0 ? start + bidi.runs[runIndex].limit - bidi.runs[runIndex - 1].limit : start + bidi.runs[0].limit;
        return new BidiRun(start, limit, level);
    }

    static void getSingleRun(Bidi bidi, byte level) {
        bidi.runs = bidi.simpleRuns;
        bidi.runCount = 1;
        bidi.runs[0] = new BidiRun(0, bidi.length, level);
    }

    private static void reorderLine(Bidi bidi, byte minLevel, byte maxLevel) {
        BidiRun tempRun;
        int firstRun;
        if (maxLevel <= (minLevel | 1)) {
            return;
        }
        minLevel = (byte)(minLevel + 1);
        BidiRun[] runs = bidi.runs;
        byte[] levels = bidi.levels;
        int runCount = bidi.runCount;
        if (bidi.trailingWSStart < bidi.length) {
            --runCount;
        }
        block0: while ((maxLevel = (byte)(maxLevel - 1)) >= minLevel) {
            firstRun = 0;
            while (true) {
                if (firstRun < runCount && levels[runs[firstRun].start] < maxLevel) {
                    ++firstRun;
                    continue;
                }
                if (firstRun >= runCount) continue block0;
                int limitRun = firstRun;
                while (++limitRun < runCount && levels[runs[limitRun].start] >= maxLevel) {
                }
                int endRun = limitRun - 1;
                while (firstRun < endRun) {
                    tempRun = runs[firstRun];
                    runs[firstRun] = runs[endRun];
                    runs[endRun] = tempRun;
                    ++firstRun;
                    --endRun;
                }
                if (limitRun == runCount) continue block0;
                firstRun = limitRun + 1;
            }
        }
        if ((minLevel & 1) == 0) {
            firstRun = 0;
            if (bidi.trailingWSStart == bidi.length) {
                --runCount;
            }
            while (firstRun < runCount) {
                tempRun = runs[firstRun];
                runs[firstRun] = runs[runCount];
                runs[runCount] = tempRun;
                ++firstRun;
                --runCount;
            }
        }
    }

    static int getRunFromLogicalIndex(Bidi bidi, int logicalIndex) {
        BidiRun[] runs = bidi.runs;
        int runCount = bidi.runCount;
        int visualStart = 0;
        int i = 0;
        while (i < runCount) {
            int length = runs[i].limit - visualStart;
            int logicalStart = runs[i].start;
            if (logicalIndex >= logicalStart && logicalIndex < logicalStart + length) {
                return i;
            }
            visualStart += length;
            ++i;
        }
        throw new IllegalStateException("Internal ICU error in getRunFromLogicalIndex");
    }

    static void getRuns(Bidi bidi) {
        if (bidi.runCount >= 0) {
            return;
        }
        if (bidi.direction != 2) {
            BidiLine.getSingleRun(bidi, bidi.paraLevel);
        } else {
            int length = bidi.length;
            byte[] levels = bidi.levels;
            byte level = 126;
            int limit = bidi.trailingWSStart;
            int runCount = 0;
            int i = 0;
            while (i < limit) {
                if (levels[i] != level) {
                    ++runCount;
                    level = levels[i];
                }
                ++i;
            }
            if (runCount == 1 && limit == length) {
                BidiLine.getSingleRun(bidi, levels[0]);
            } else {
                byte minLevel = 62;
                byte maxLevel = 0;
                if (limit < length) {
                    ++runCount;
                }
                bidi.getRunsMemory(runCount);
                BidiRun[] runs = bidi.runsMemory;
                int runIndex = 0;
                i = 0;
                do {
                    int start = i;
                    level = levels[i];
                    if (level < minLevel) {
                        minLevel = level;
                    }
                    if (level > maxLevel) {
                        maxLevel = level;
                    }
                    while (++i < limit && levels[i] == level) {
                    }
                    runs[runIndex] = new BidiRun(start, i - start, level);
                    ++runIndex;
                } while (i < limit);
                if (limit < length) {
                    runs[runIndex] = new BidiRun(limit, length - limit, bidi.paraLevel);
                    if (bidi.paraLevel < minLevel) {
                        minLevel = bidi.paraLevel;
                    }
                }
                bidi.runs = runs;
                bidi.runCount = runCount;
                BidiLine.reorderLine(bidi, minLevel, maxLevel);
                limit = 0;
                i = 0;
                while (i < runCount) {
                    runs[i].level = levels[runs[i].start];
                    limit = runs[i].limit += limit;
                    ++i;
                }
                if (runIndex < runCount) {
                    int trailingRun = (bidi.paraLevel & 1) != 0 ? 0 : runIndex;
                    runs[trailingRun].level = bidi.paraLevel;
                }
            }
        }
        if (bidi.insertPoints.size > 0) {
            int ip = 0;
            while (ip < bidi.insertPoints.size) {
                Bidi.Point point = bidi.insertPoints.points[ip];
                int runIndex = BidiLine.getRunFromLogicalIndex(bidi, point.pos);
                bidi.runs[runIndex].insertRemove |= point.flag;
                ++ip;
            }
        }
        if (bidi.controlCount > 0) {
            int ic = 0;
            while (ic < bidi.length) {
                char c = bidi.text[ic];
                if (Bidi.IsBidiControlChar(c)) {
                    int runIndex = BidiLine.getRunFromLogicalIndex(bidi, ic);
                    --bidi.runs[runIndex].insertRemove;
                }
                ++ic;
            }
        }
    }

    static int[] prepareReorder(byte[] levels, byte[] pMinLevel, byte[] pMaxLevel) {
        if (levels == null || levels.length <= 0) {
            return null;
        }
        byte minLevel = 62;
        byte maxLevel = 0;
        int start = levels.length;
        while (start > 0) {
            byte level;
            if ((level = levels[--start]) > 62) {
                return null;
            }
            if (level < minLevel) {
                minLevel = level;
            }
            if (level <= maxLevel) continue;
            maxLevel = level;
        }
        pMinLevel[0] = minLevel;
        pMaxLevel[0] = maxLevel;
        int[] indexMap = new int[levels.length];
        start = levels.length;
        while (start > 0) {
            indexMap[--start] = start;
        }
        return indexMap;
    }

    static int[] reorderLogical(byte[] levels) {
        byte[] aMinLevel = new byte[1];
        byte[] aMaxLevel = new byte[1];
        int[] indexMap = BidiLine.prepareReorder(levels, aMinLevel, aMaxLevel);
        if (indexMap == null) {
            return null;
        }
        byte minLevel = aMinLevel[0];
        byte maxLevel = aMaxLevel[0];
        if (minLevel == maxLevel && (minLevel & 1) == 0) {
            return indexMap;
        }
        minLevel = (byte)(minLevel | 1);
        block0: do {
            int start = 0;
            while (true) {
                if (start < levels.length && levels[start] < maxLevel) {
                    ++start;
                    continue;
                }
                if (start >= levels.length) continue block0;
                int limit = start;
                while (++limit < levels.length && levels[limit] >= maxLevel) {
                }
                int sumOfSosEos = start + limit - 1;
                do {
                    indexMap[start] = sumOfSosEos - indexMap[start];
                } while (++start < limit);
                if (limit == levels.length) continue block0;
                start = limit + 1;
            }
        } while ((maxLevel = (byte)(maxLevel - 1)) >= minLevel);
        return indexMap;
    }

    static int[] reorderVisual(byte[] levels) {
        byte[] aMinLevel = new byte[1];
        byte[] aMaxLevel = new byte[1];
        int[] indexMap = BidiLine.prepareReorder(levels, aMinLevel, aMaxLevel);
        if (indexMap == null) {
            return null;
        }
        byte minLevel = aMinLevel[0];
        byte maxLevel = aMaxLevel[0];
        if (minLevel == maxLevel && (minLevel & 1) == 0) {
            return indexMap;
        }
        minLevel = (byte)(minLevel | 1);
        block0: do {
            int start = 0;
            while (true) {
                if (start < levels.length && levels[start] < maxLevel) {
                    ++start;
                    continue;
                }
                if (start >= levels.length) continue block0;
                int limit = start;
                while (++limit < levels.length && levels[limit] >= maxLevel) {
                }
                int end = limit - 1;
                while (start < end) {
                    int temp = indexMap[start];
                    indexMap[start] = indexMap[end];
                    indexMap[end] = temp;
                    ++start;
                    --end;
                }
                if (limit == levels.length) continue block0;
                start = limit + 1;
            }
        } while ((maxLevel = (byte)(maxLevel - 1)) >= minLevel);
        return indexMap;
    }

    static int getVisualIndex(Bidi bidi, int logicalIndex) {
        int i;
        BidiRun[] runs;
        int visualIndex = -1;
        switch (bidi.direction) {
            case 0: {
                visualIndex = logicalIndex;
                break;
            }
            case 1: {
                visualIndex = bidi.length - logicalIndex - 1;
                break;
            }
            default: {
                BidiLine.getRuns(bidi);
                runs = bidi.runs;
                int visualStart = 0;
                i = 0;
                while (i < bidi.runCount) {
                    int length = runs[i].limit - visualStart;
                    int offset = logicalIndex - runs[i].start;
                    if (offset >= 0 && offset < length) {
                        if (runs[i].isEvenRun()) {
                            visualIndex = visualStart + offset;
                            break;
                        }
                        visualIndex = visualStart + length - offset - 1;
                        break;
                    }
                    visualStart += length;
                    ++i;
                }
                if (i < bidi.runCount) break;
                return -1;
            }
        }
        if (bidi.insertPoints.size > 0) {
            runs = bidi.runs;
            int visualStart = 0;
            int markFound = 0;
            i = 0;
            while (true) {
                int length = runs[i].limit - visualStart;
                int insertRemove = runs[i].insertRemove;
                if ((insertRemove & 5) > 0) {
                    ++markFound;
                }
                if (visualIndex < runs[i].limit) {
                    return visualIndex + markFound;
                }
                if ((insertRemove & 0xA) > 0) {
                    ++markFound;
                }
                ++i;
                visualStart += length;
            }
        }
        if (bidi.controlCount > 0) {
            runs = bidi.runs;
            int visualStart = 0;
            int controlFound = 0;
            char uchar = bidi.text[logicalIndex];
            if (Bidi.IsBidiControlChar(uchar)) {
                return -1;
            }
            i = 0;
            while (true) {
                int length = runs[i].limit - visualStart;
                int insertRemove = runs[i].insertRemove;
                if (visualIndex >= runs[i].limit) {
                    controlFound -= insertRemove;
                } else {
                    int limit;
                    int start;
                    if (insertRemove == 0) {
                        return visualIndex - controlFound;
                    }
                    if (runs[i].isEvenRun()) {
                        start = runs[i].start;
                        limit = logicalIndex;
                    } else {
                        start = logicalIndex + 1;
                        limit = runs[i].start + length;
                    }
                    int j = start;
                    while (j < limit) {
                        uchar = bidi.text[j];
                        if (Bidi.IsBidiControlChar(uchar)) {
                            ++controlFound;
                        }
                        ++j;
                    }
                    return visualIndex - controlFound;
                }
                ++i;
                visualStart += length;
            }
        }
        return visualIndex;
    }

    static int getLogicalIndex(Bidi bidi, int visualIndex) {
        int i;
        int runCount;
        BidiRun[] runs;
        block21: {
            int insertRemove;
            runs = bidi.runs;
            runCount = bidi.runCount;
            if (bidi.insertPoints.size > 0) {
                int markFound = 0;
                int visualStart = 0;
                i = 0;
                while (true) {
                    int length = runs[i].limit - visualStart;
                    insertRemove = runs[i].insertRemove;
                    if ((insertRemove & 5) > 0) {
                        if (visualIndex <= visualStart + markFound) {
                            return -1;
                        }
                        ++markFound;
                    }
                    if (visualIndex < runs[i].limit + markFound) {
                        visualIndex -= markFound;
                        break block21;
                    }
                    if ((insertRemove & 0xA) > 0) {
                        if (visualIndex == visualStart + length + markFound) {
                            return -1;
                        }
                        ++markFound;
                    }
                    ++i;
                    visualStart += length;
                }
            }
            if (bidi.controlCount > 0) {
                int controlFound = 0;
                int visualStart = 0;
                i = 0;
                while (true) {
                    int length = runs[i].limit - visualStart;
                    insertRemove = runs[i].insertRemove;
                    if (visualIndex >= runs[i].limit - controlFound + insertRemove) {
                        controlFound -= insertRemove;
                    } else {
                        if (insertRemove == 0) {
                            visualIndex += controlFound;
                            break;
                        }
                        int logicalStart = runs[i].start;
                        boolean evenRun = runs[i].isEvenRun();
                        int logicalEnd = logicalStart + length - 1;
                        int j = 0;
                        while (j < length) {
                            int k = evenRun ? logicalStart + j : logicalEnd - j;
                            char uchar = bidi.text[k];
                            if (Bidi.IsBidiControlChar(uchar)) {
                                ++controlFound;
                            }
                            if (visualIndex + controlFound == visualStart + j) break;
                            ++j;
                        }
                        visualIndex += controlFound;
                        break;
                    }
                    ++i;
                    visualStart += length;
                }
            }
        }
        if (runCount <= 10) {
            i = 0;
            while (visualIndex >= runs[i].limit) {
                ++i;
            }
        } else {
            int begin = 0;
            int limit = runCount;
            while (true) {
                i = (begin + limit) / 2;
                if (visualIndex >= runs[i].limit) {
                    begin = i + 1;
                    continue;
                }
                if (i == 0 || visualIndex >= runs[i - 1].limit) break;
                limit = i;
            }
        }
        int start = runs[i].start;
        if (runs[i].isEvenRun()) {
            if (i > 0) {
                visualIndex -= runs[i - 1].limit;
            }
            return start + visualIndex;
        }
        return start + runs[i].limit - visualIndex - 1;
    }

    static int[] getLogicalMap(Bidi bidi) {
        int[] indexMap;
        block20: {
            int logicalStart;
            int visualStart;
            BidiRun[] runs;
            block19: {
                runs = bidi.runs;
                indexMap = new int[bidi.length];
                if (bidi.length > bidi.resultLength) {
                    Arrays.fill(indexMap, -1);
                }
                visualStart = 0;
                int j = 0;
                while (j < bidi.runCount) {
                    logicalStart = runs[j].start;
                    int visualLimit = runs[j].limit;
                    if (runs[j].isEvenRun()) {
                        do {
                            indexMap[logicalStart++] = visualStart++;
                        } while (visualStart < visualLimit);
                    } else {
                        logicalStart += visualLimit - visualStart;
                        do {
                            indexMap[--logicalStart] = visualStart++;
                        } while (visualStart < visualLimit);
                    }
                    ++j;
                }
                if (bidi.insertPoints.size <= 0) break block19;
                int markFound = 0;
                int runCount = bidi.runCount;
                runs = bidi.runs;
                visualStart = 0;
                int i = 0;
                while (i < runCount) {
                    int length = runs[i].limit - visualStart;
                    int insertRemove = runs[i].insertRemove;
                    if ((insertRemove & 5) > 0) {
                        ++markFound;
                    }
                    if (markFound > 0) {
                        logicalStart = runs[i].start;
                        int logicalLimit = logicalStart + length;
                        int j2 = logicalStart;
                        while (j2 < logicalLimit) {
                            int n = j2++;
                            indexMap[n] = indexMap[n] + markFound;
                        }
                    }
                    if ((insertRemove & 0xA) > 0) {
                        ++markFound;
                    }
                    ++i;
                    visualStart += length;
                }
                break block20;
            }
            if (bidi.controlCount <= 0) break block20;
            int controlFound = 0;
            int runCount = bidi.runCount;
            runs = bidi.runs;
            visualStart = 0;
            int i = 0;
            while (i < runCount) {
                int length = runs[i].limit - visualStart;
                int insertRemove = runs[i].insertRemove;
                if (controlFound - insertRemove != 0) {
                    int j;
                    logicalStart = runs[i].start;
                    boolean evenRun = runs[i].isEvenRun();
                    int logicalLimit = logicalStart + length;
                    if (insertRemove == 0) {
                        j = logicalStart;
                        while (j < logicalLimit) {
                            int n = j++;
                            indexMap[n] = indexMap[n] - controlFound;
                        }
                    } else {
                        j = 0;
                        while (j < length) {
                            int k = evenRun ? logicalStart + j : logicalLimit - j - 1;
                            char uchar = bidi.text[k];
                            if (Bidi.IsBidiControlChar(uchar)) {
                                ++controlFound;
                                indexMap[k] = -1;
                            } else {
                                int n = k;
                                indexMap[n] = indexMap[n] - controlFound;
                            }
                            ++j;
                        }
                    }
                }
                ++i;
                visualStart += length;
            }
        }
        return indexMap;
    }

    static int[] getVisualMap(Bidi bidi) {
        int visualLimit;
        int logicalStart;
        BidiRun[] runs = bidi.runs;
        int allocLength = bidi.length > bidi.resultLength ? bidi.length : bidi.resultLength;
        int[] indexMap = new int[allocLength];
        int visualStart = 0;
        int idx = 0;
        int j = 0;
        while (j < bidi.runCount) {
            logicalStart = runs[j].start;
            visualLimit = runs[j].limit;
            if (runs[j].isEvenRun()) {
                do {
                    indexMap[idx++] = logicalStart++;
                } while (++visualStart < visualLimit);
            } else {
                logicalStart += visualLimit - visualStart;
                do {
                    indexMap[idx++] = --logicalStart;
                } while (++visualStart < visualLimit);
            }
            ++j;
        }
        if (bidi.insertPoints.size > 0) {
            int insertRemove;
            int markFound = 0;
            int runCount = bidi.runCount;
            runs = bidi.runs;
            int i = 0;
            while (i < runCount) {
                insertRemove = runs[i].insertRemove;
                if ((insertRemove & 5) > 0) {
                    ++markFound;
                }
                if ((insertRemove & 0xA) > 0) {
                    ++markFound;
                }
                ++i;
            }
            int k = bidi.resultLength;
            i = runCount - 1;
            while (i >= 0 && markFound > 0) {
                insertRemove = runs[i].insertRemove;
                if ((insertRemove & 0xA) > 0) {
                    indexMap[--k] = -1;
                    --markFound;
                }
                visualStart = i > 0 ? runs[i - 1].limit : 0;
                int j2 = runs[i].limit - 1;
                while (j2 >= visualStart && markFound > 0) {
                    indexMap[--k] = indexMap[j2];
                    --j2;
                }
                if ((insertRemove & 5) > 0) {
                    indexMap[--k] = -1;
                    --markFound;
                }
                --i;
            }
        } else if (bidi.controlCount > 0) {
            int runCount = bidi.runCount;
            runs = bidi.runs;
            visualStart = 0;
            int k = 0;
            int i = 0;
            while (i < runCount) {
                int j3;
                int length = runs[i].limit - visualStart;
                int insertRemove = runs[i].insertRemove;
                if (insertRemove == 0 && k == visualStart) {
                    k += length;
                } else if (insertRemove == 0) {
                    visualLimit = runs[i].limit;
                    j3 = visualStart;
                    while (j3 < visualLimit) {
                        indexMap[k++] = indexMap[j3];
                        ++j3;
                    }
                } else {
                    logicalStart = runs[i].start;
                    boolean evenRun = runs[i].isEvenRun();
                    int logicalEnd = logicalStart + length - 1;
                    j3 = 0;
                    while (j3 < length) {
                        int m = evenRun ? logicalStart + j3 : logicalEnd - j3;
                        char uchar = bidi.text[m];
                        if (!Bidi.IsBidiControlChar(uchar)) {
                            indexMap[k++] = m;
                        }
                        ++j3;
                    }
                }
                ++i;
                visualStart += length;
            }
        }
        if (allocLength == bidi.resultLength) {
            return indexMap;
        }
        int[] newMap = new int[bidi.resultLength];
        System.arraycopy(indexMap, 0, newMap, 0, bidi.resultLength);
        return newMap;
    }

    static int[] invertMap(int[] srcMap) {
        int srcEntry;
        int srcLength = srcMap.length;
        int destLength = -1;
        int count = 0;
        int i = 0;
        while (i < srcLength) {
            srcEntry = srcMap[i];
            if (srcEntry > destLength) {
                destLength = srcEntry;
            }
            if (srcEntry >= 0) {
                ++count;
            }
            ++i;
        }
        int[] destMap = new int[++destLength];
        if (count < destLength) {
            Arrays.fill(destMap, -1);
        }
        i = 0;
        while (i < srcLength) {
            srcEntry = srcMap[i];
            if (srcEntry >= 0) {
                destMap[srcEntry] = i;
            }
            ++i;
        }
        return destMap;
    }
}

