/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.compare.internal.core.patch;

import java.util.List;
import org.eclipse.compare.internal.core.patch.FileDiffResult;
import org.eclipse.compare.internal.core.patch.Hunk;
import org.eclipse.compare.internal.core.patch.LineReader;
import org.eclipse.compare.patch.IHunkFilter;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;

public class HunkResult {
    private static final boolean DEBUG = false;
    private static final int MAXIMUM_FUZZ_FACTOR = 2;
    private Hunk fHunk;
    private boolean fMatches;
    private int fShift;
    private int fFuzz = -1;
    private final FileDiffResult fDiffResult;

    public HunkResult(FileDiffResult diffResult, Hunk hunk) {
        this.fDiffResult = diffResult;
        this.fHunk = hunk;
    }

    public boolean patch(List lines) {
        int fuzz;
        this.fMatches = false;
        PatchConfiguration configuration = this.getConfiguration();
        int n = fuzz = this.fFuzz != -1 ? this.fFuzz : configuration.getFuzz();
        if (this.isEnabled(configuration)) {
            if (this.fHunk.tryPatch(configuration, lines, this.fShift, fuzz)) {
                this.fShift += this.fHunk.doPatch(configuration, lines, this.fShift, fuzz);
                this.fMatches = true;
            } else {
                boolean found = false;
                int oldShift = this.fShift;
                int hugeShift = lines.size();
                int i = 1;
                while (i <= hugeShift) {
                    if (this.fHunk.tryPatch(configuration, lines, this.fShift - i, fuzz)) {
                        if (this.isAdjustShift()) {
                            this.fShift -= i;
                        }
                        found = true;
                        break;
                    }
                    ++i;
                }
                if (!found) {
                    i = 1;
                    while (i <= hugeShift) {
                        if (this.fHunk.tryPatch(configuration, lines, this.fShift + i, fuzz)) {
                            if (this.isAdjustShift()) {
                                this.fShift += i;
                            }
                            found = true;
                            break;
                        }
                        ++i;
                    }
                }
                if (found) {
                    this.fShift += this.fHunk.doPatch(configuration, lines, this.fShift, fuzz);
                    this.fMatches = true;
                }
            }
        }
        return this.fMatches;
    }

    private boolean isAdjustShift() {
        return true;
    }

    private PatchConfiguration getConfiguration() {
        return this.getDiffResult().getConfiguration();
    }

    public int calculateFuzz(List lines, IProgressMonitor monitor) {
        this.fMatches = false;
        PatchConfiguration configuration = this.getConfiguration();
        int fuzz = 0;
        int maxFuzz = configuration.getFuzz() == -1 ? 2 : configuration.getFuzz();
        while (fuzz <= maxFuzz) {
            if (this.fHunk.tryPatch(configuration, lines, this.fShift, fuzz)) {
                this.fShift += this.fHunk.doPatch(configuration, lines, this.fShift, fuzz);
                this.fMatches = true;
                break;
            }
            int hugeShift = lines.size();
            int i = 1;
            while (i <= hugeShift) {
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                if (this.fHunk.tryPatch(configuration, lines, this.fShift - i, fuzz)) {
                    if (this.isAdjustShift()) {
                        this.fShift -= i;
                    }
                    this.fMatches = true;
                    break;
                }
                ++i;
            }
            if (!this.fMatches) {
                i = 1;
                while (i <= hugeShift) {
                    if (monitor.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    if (this.fHunk.tryPatch(configuration, lines, this.fShift + i, fuzz)) {
                        if (this.isAdjustShift()) {
                            this.fShift += i;
                        }
                        this.fMatches = true;
                        break;
                    }
                    ++i;
                }
            }
            if (this.fMatches) {
                this.fShift += this.fHunk.doPatch(configuration, lines, this.fShift, fuzz);
                break;
            }
            ++fuzz;
        }
        this.fFuzz = this.fMatches ? fuzz : -1;
        return this.fFuzz;
    }

    public int getShift() {
        return this.fShift;
    }

    public void setShift(int shift) {
        this.fShift = shift;
    }

    public Hunk getHunk() {
        return this.fHunk;
    }

    public FileDiffResult getDiffResult() {
        return this.fDiffResult;
    }

    public boolean isOK() {
        return this.fMatches;
    }

    public String getContents(boolean afterState, boolean fullContext) {
        if (fullContext) {
            boolean problemFound = false;
            List lines = this.getDiffResult().getBeforeLines();
            if (afterState) {
                if (this.isOK()) {
                    int oldShift = this.fShift;
                    try {
                        this.fShift = 0;
                        problemFound = !this.patch(lines);
                    }
                    finally {
                        this.fShift = oldShift;
                    }
                } else {
                    problemFound = true;
                }
            }
            if (!problemFound) {
                return LineReader.createString(this.fDiffResult.isPreserveLineDelimeters(), lines);
            }
        }
        return this.getHunk().getContents(afterState, this.getConfiguration().isReversed());
    }

    private boolean isEnabled(PatchConfiguration configuration) {
        IHunkFilter[] filters = configuration.getHunkFilters();
        int i = 0;
        while (i < filters.length) {
            if (!filters[i].select(this.fHunk)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void setMatches(boolean matches) {
        this.fMatches = matches;
    }

    public String getCharset() {
        return this.fDiffResult.getCharset();
    }

    public int getFuzz() {
        return this.fFuzz;
    }
}

