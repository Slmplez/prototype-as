/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 */
package org.eclipse.ui.internal.decorators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;
import org.eclipse.ui.internal.decorators.FullDecoratorDefinition;
import org.eclipse.ui.internal.decorators.LightweightDecoratorDefinition;
import org.eclipse.ui.internal.registry.RegistryReader;

public class DecoratorRegistryReader
extends RegistryReader {
    private Collection values = new ArrayList();
    private Collection ids = new HashSet();

    public boolean readElement(IConfigurationElement element) {
        DecoratorDefinition desc = this.getDecoratorDefinition(element);
        if (desc == null) {
            return false;
        }
        this.values.add(desc);
        return true;
    }

    DecoratorDefinition getDecoratorDefinition(IConfigurationElement element) {
        boolean noClass;
        String id = element.getAttribute("id");
        if (this.ids.contains(id)) {
            this.logDuplicateId(element);
            return null;
        }
        this.ids.add(id);
        boolean bl = noClass = element.getAttribute("class") == null;
        if (Boolean.valueOf(element.getAttribute("lightweight")).booleanValue() || noClass) {
            String iconPath = element.getAttribute("icon");
            if (noClass && iconPath == null) {
                DecoratorRegistryReader.logMissingElement(element, "icon");
                return null;
            }
            return new LightweightDecoratorDefinition(id, element);
        }
        return new FullDecoratorDefinition(id, element);
    }

    Collection readRegistry(IExtensionRegistry in) {
        this.values.clear();
        this.ids.clear();
        this.readRegistry(in, "org.eclipse.ui", "decorators");
        return this.values;
    }

    public Collection getValues() {
        return this.values;
    }

    protected void logDuplicateId(IConfigurationElement element) {
        DecoratorRegistryReader.logError(element, "Duplicate id found: " + element.getAttribute("id"));
    }
}

