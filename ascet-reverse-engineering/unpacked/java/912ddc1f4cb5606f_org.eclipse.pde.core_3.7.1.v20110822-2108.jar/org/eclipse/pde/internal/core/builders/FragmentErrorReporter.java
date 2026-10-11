/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.internal.core.builders.PluginBaseErrorReporter;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

public class FragmentErrorReporter
extends PluginBaseErrorReporter {
    public FragmentErrorReporter(IFile file) {
        super(file);
    }

    protected void validateTopLevelAttributes(Element element) {
        Attr attr;
        super.validateTopLevelAttributes(element);
        if (this.assertAttributeDefined(element, "plugin-id", 0)) {
            this.validatePluginIDRef(element, element.getAttributeNode("plugin-id"));
        }
        if (this.assertAttributeDefined(element, "plugin-version", 0)) {
            this.validateVersionAttribute(element, element.getAttributeNode("plugin-version"));
        }
        if ((attr = element.getAttributeNode("match")) != null) {
            this.validateMatch(element, attr);
        }
    }

    protected String getRootElementName() {
        return "fragment";
    }
}

