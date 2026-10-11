/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.internal.decorators.LightweightActionDescriptor;
import org.eclipse.ui.internal.registry.ActionSetDescriptor;
import org.eclipse.ui.internal.registry.RegistryReader;

public class PluginActionSetReader
extends RegistryReader {
    private List cache = new ArrayList();

    protected LightweightActionDescriptor createActionDescriptor(IConfigurationElement element) {
        return new LightweightActionDescriptor(element);
    }

    public LightweightActionDescriptor[] readActionDescriptors(ActionSetDescriptor actionSet) {
        this.readElements(new IConfigurationElement[]{actionSet.getConfigurationElement()});
        LightweightActionDescriptor[] actions = new LightweightActionDescriptor[this.cache.size()];
        this.cache.toArray(actions);
        return actions;
    }

    protected boolean readElement(IConfigurationElement element) {
        String tag = element.getName();
        if (tag.equals("actionSet")) {
            this.readElementChildren(element);
            return true;
        }
        if (tag.equals("objectContribution")) {
            return true;
        }
        if (tag.equals("menu")) {
            return true;
        }
        if (tag.equals("action")) {
            this.cache.add(this.createActionDescriptor(element));
            return true;
        }
        return false;
    }
}

