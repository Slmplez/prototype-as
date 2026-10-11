/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.emf.validation.internal.util;

import java.net.URL;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.emf.validation.internal.util.XmlConfigurationElement;

public class ConstraintsConfigurationElement
extends XmlConfigurationElement {
    public ConstraintsConfigurationElement(IConfigurationElement original, URL url) {
        super(original.getName(), original.getDeclaringExtension(), url);
        this.setValue(original.getValue());
        String[] names = original.getAttributeNames();
        int i = 0;
        while (i < names.length) {
            String name = names[i];
            this.putAttribute(name, original.getAttribute(name));
            ++i;
        }
        IConfigurationElement[] originalChildren = original.getChildren();
        int i2 = 0;
        while (i2 < originalChildren.length) {
            IConfigurationElement child = originalChildren[i2];
            if (!"include".equals(child.getName())) {
                this.addChild(child);
            }
            ++i2;
        }
    }
}

