/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.ui.forms.widgets.ScrolledForm;

public interface ISpySection {
    public void build(ScrolledForm var1, SpyFormToolkit var2, ExecutionEvent var3);
}

