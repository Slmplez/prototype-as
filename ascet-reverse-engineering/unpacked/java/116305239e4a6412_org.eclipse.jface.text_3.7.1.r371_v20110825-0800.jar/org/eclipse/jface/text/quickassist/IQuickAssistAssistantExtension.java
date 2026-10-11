/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.core.commands.IHandler;

public interface IQuickAssistAssistantExtension {
    public IHandler getHandler(String var1);

    public void enableColoredLabels(boolean var1);
}

