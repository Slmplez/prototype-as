/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core.history;

import org.eclipse.team.core.history.IFileRevision;

public interface IFileHistory {
    public IFileRevision[] getFileRevisions();

    public IFileRevision getFileRevision(String var1);

    public IFileRevision[] getContributors(IFileRevision var1);

    public IFileRevision[] getTargets(IFileRevision var1);
}

