/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.internal.core.patch;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.compare.internal.core.patch.FilePatch2;

public class DiffProject {
    private String project;
    private Set fDiffs = new HashSet();

    public DiffProject(String project) {
        this.project = project;
    }

    public void add(FilePatch2 diff) {
        this.fDiffs.add(diff);
        if (diff.getProject() != this) {
            diff.setProject(this);
        }
    }

    public String getName() {
        return this.project;
    }

    public void remove(FilePatch2 diff) {
        this.fDiffs.remove(diff);
    }

    public boolean contains(FilePatch2 diff) {
        return this.fDiffs.contains(diff);
    }

    public FilePatch2[] getFileDiffs() {
        return this.fDiffs.toArray(new FilePatch2[this.fDiffs.size()]);
    }
}

