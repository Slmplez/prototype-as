/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IParameterValues
 */
package org.eclipse.ui.internal.registry;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.views.IViewDescriptor;

public final class ViewParameterValues
implements IParameterValues {
    public final Map getParameterValues() {
        HashMap<String, String> values = new HashMap<String, String>();
        IViewDescriptor[] views = PlatformUI.getWorkbench().getViewRegistry().getViews();
        int i = 0;
        while (i < views.length) {
            IViewDescriptor view = views[i];
            values.put(view.getLabel(), view.getId());
            ++i;
        }
        return values;
    }
}

