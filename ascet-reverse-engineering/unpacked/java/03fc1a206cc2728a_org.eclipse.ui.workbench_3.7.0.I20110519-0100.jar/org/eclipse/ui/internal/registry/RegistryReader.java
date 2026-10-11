/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 */
package org.eclipse.ui.internal.registry;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.ui.internal.WorkbenchPlugin;

public abstract class RegistryReader {
    protected RegistryReader() {
    }

    protected static void logError(IConfigurationElement element, String text) {
        IExtension extension = element.getDeclaringExtension();
        StringBuffer buf = new StringBuffer();
        buf.append("Plugin " + extension.getNamespace() + ", extension " + extension.getExtensionPointUniqueIdentifier());
        String id = element.getAttribute("id");
        if (id != null) {
            buf.append(", id ");
            buf.append(id);
        }
        buf.append(": " + text);
        WorkbenchPlugin.log(buf.toString());
    }

    protected static void logMissingAttribute(IConfigurationElement element, String attributeName) {
        RegistryReader.logError(element, "Required attribute '" + attributeName + "' not defined");
    }

    protected static void logMissingElement(IConfigurationElement element, String elementName) {
        RegistryReader.logError(element, "Required sub element '" + elementName + "' not defined");
    }

    protected static void logUnknownElement(IConfigurationElement element) {
        RegistryReader.logError(element, "Unknown extension tag found: " + element.getName());
    }

    public static IExtension[] orderExtensions(IExtension[] extensions) {
        IExtension[] sortedExtension = new IExtension[extensions.length];
        System.arraycopy(extensions, 0, sortedExtension, 0, extensions.length);
        Comparator comparer = new Comparator(){

            public int compare(Object arg0, Object arg1) {
                String s1 = ((IExtension)arg0).getNamespace();
                String s2 = ((IExtension)arg1).getNamespace();
                return s1.compareToIgnoreCase(s2);
            }
        };
        Collections.sort(Arrays.asList(sortedExtension), comparer);
        return sortedExtension;
    }

    protected abstract boolean readElement(IConfigurationElement var1);

    protected void readElementChildren(IConfigurationElement element) {
        this.readElements(element.getChildren());
    }

    protected void readElements(IConfigurationElement[] elements) {
        int i = 0;
        while (i < elements.length) {
            if (!this.readElement(elements[i])) {
                RegistryReader.logUnknownElement(elements[i]);
            }
            ++i;
        }
    }

    protected void readExtension(IExtension extension) {
        this.readElements(extension.getConfigurationElements());
    }

    public void readRegistry(IExtensionRegistry registry, String pluginId, String extensionPoint) {
        IExtensionPoint point = registry.getExtensionPoint(pluginId, extensionPoint);
        if (point == null) {
            return;
        }
        IExtension[] extensions = point.getExtensions();
        extensions = RegistryReader.orderExtensions(extensions);
        int i = 0;
        while (i < extensions.length) {
            this.readExtension(extensions[i]);
            ++i;
        }
    }

    public static String getDescription(IConfigurationElement configElement) {
        IConfigurationElement[] children = configElement.getChildren("description");
        if (children.length >= 1) {
            return children[0].getValue();
        }
        return "";
    }

    public static String getClassValue(IConfigurationElement configElement, String classAttributeName) {
        String className = configElement.getAttribute(classAttributeName);
        if (className != null) {
            return className;
        }
        IConfigurationElement[] candidateChildren = configElement.getChildren(classAttributeName);
        if (candidateChildren.length == 0) {
            return null;
        }
        return candidateChildren[0].getAttribute("class");
    }
}

