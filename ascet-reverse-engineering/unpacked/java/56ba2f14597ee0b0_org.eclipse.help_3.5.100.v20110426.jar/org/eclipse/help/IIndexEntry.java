/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.ITopic;
import org.eclipse.help.IUAElement;

public interface IIndexEntry
extends IUAElement {
    public String getKeyword();

    public ITopic[] getTopics();

    public IIndexEntry[] getSubentries();
}

