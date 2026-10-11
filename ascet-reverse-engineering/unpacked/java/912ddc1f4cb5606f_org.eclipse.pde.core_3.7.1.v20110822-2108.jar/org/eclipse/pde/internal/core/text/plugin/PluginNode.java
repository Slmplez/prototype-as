/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.internal.core.text.plugin.PluginBaseNode;

public class PluginNode
extends PluginBaseNode
implements IPlugin {
    private static final long serialVersionUID = 1L;

    public String getClassName() {
        return this.getXMLAttributeValue("class");
    }

    public void setClassName(String className) throws CoreException {
        this.setXMLAttribute("class", className);
    }

    protected String[] getSpecificAttributes() {
        String classname = this.getClassName();
        if (classname != null && classname.trim().length() > 0) {
            return new String[]{"   class=\"" + classname + "\""};
        }
        return new String[0];
    }

    public boolean hasExtensibleAPI() {
        return false;
    }
}

