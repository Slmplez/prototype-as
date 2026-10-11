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

public class PluginErrorReporter
extends PluginBaseErrorReporter {
    public PluginErrorReporter(IFile file) {
        super(file);
    }

    protected void validateTopLevelAttributes(Element element) {
        super.validateTopLevelAttributes(element);
        Attr attr = element.getAttributeNode("class");
        if (attr != null) {
            this.validateJavaAttribute(element, attr);
        }
    }

    protected String getRootElementName() {
        return "plugin";
    }
}

