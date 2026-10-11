/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.HelpEvent
 */
package org.eclipse.ui.help;

import org.eclipse.swt.events.HelpEvent;

public interface IContextComputer {
    public Object[] computeContexts(HelpEvent var1);

    public Object[] getLocalContexts(HelpEvent var1);
}

