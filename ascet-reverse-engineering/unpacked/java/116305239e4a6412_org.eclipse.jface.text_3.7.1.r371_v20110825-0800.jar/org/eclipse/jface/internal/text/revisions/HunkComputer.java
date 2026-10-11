/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.revisions;

import java.util.ArrayList;
import org.eclipse.jface.internal.text.revisions.Hunk;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;

public final class HunkComputer {
    public static Hunk[] computeHunks(ILineDiffer differ, int lines) {
        ArrayList<Hunk> hunks = new ArrayList<Hunk>(lines);
        int added = 0;
        int changed = 0;
        ILineDiffInfo info = null;
        int line = 0;
        while (line < lines) {
            info = differ.getLineInfo(line);
            if (info != null) {
                int changeType = info.getChangeType();
                switch (changeType) {
                    case 1: {
                        ++added;
                        break;
                    }
                    case 2: {
                        ++changed;
                        break;
                    }
                    case 0: {
                        if ((added -= info.getRemovedLinesAbove()) == 0 && changed == 0) break;
                        hunks.add(new Hunk(line - changed - Math.max(0, added), added, changed));
                        added = 0;
                        changed = 0;
                    }
                }
            }
            ++line;
        }
        if (info != null && ((added -= info.getRemovedLinesBelow()) != 0 || changed != 0)) {
            hunks.add(new Hunk(lines - changed, added, changed));
            added = 0;
            changed = 0;
        }
        return hunks.toArray(new Hunk[hunks.size()]);
    }

    private HunkComputer() {
    }
}

