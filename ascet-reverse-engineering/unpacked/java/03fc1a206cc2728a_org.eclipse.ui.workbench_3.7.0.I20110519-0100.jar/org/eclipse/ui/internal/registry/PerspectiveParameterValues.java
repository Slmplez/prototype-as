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
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.PlatformUI;

public final class PerspectiveParameterValues
implements IParameterValues {
    public final Map getParameterValues() {
        HashMap<String, String> values = new HashMap<String, String>();
        IPerspectiveDescriptor[] perspectives = PlatformUI.getWorkbench().getPerspectiveRegistry().getPerspectives();
        int i = 0;
        while (i < perspectives.length) {
            IPerspectiveDescriptor perspective = perspectives[i];
            values.put(perspective.getLabel(), perspective.getId());
            ++i;
        }
        return values;
    }
}

