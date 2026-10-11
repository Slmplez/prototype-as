/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IHelpResource;

public interface IContext {
    public IHelpResource[] getRelatedTopics();

    public String getText();
}

