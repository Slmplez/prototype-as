/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.ui.part.IPageBookViewPage
 */
package org.eclipse.ui.console;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.part.IPageBookViewPage;

public interface IConsolePageParticipant
extends IAdaptable {
    public void init(IPageBookViewPage var1, IConsole var2);

    public void dispose();

    public void activated();

    public void deactivated();
}

