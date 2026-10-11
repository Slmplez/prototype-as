/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.internal.core.text.plugin.PluginBaseNode;

public class FragmentNode
extends PluginBaseNode
implements IFragment {
    private static final long serialVersionUID = 1L;

    public String getPluginId() {
        return this.getXMLAttributeValue("plugin-id");
    }

    public String getPluginVersion() {
        return this.getXMLAttributeValue("plugin-version");
    }

    public int getRule() {
        String match = this.getXMLAttributeValue("match");
        if (match == null || match.trim().length() == 0) {
            return 0;
        }
        if (match.equals("compatible")) {
            return 2;
        }
        if (match.equals("perfect")) {
            return 3;
        }
        if (match.equals("equivalent")) {
            return 1;
        }
        return 4;
    }

    public void setPluginId(String id) throws CoreException {
        this.setXMLAttribute("plugin-id", id);
    }

    public void setPluginVersion(String version) throws CoreException {
        this.setXMLAttribute("plugin-version", version);
    }

    public void setRule(int rule) throws CoreException {
        String match = "";
        switch (rule) {
            case 2: {
                match = "compatible";
                break;
            }
            case 1: {
                match = "equivalent";
                break;
            }
            case 3: {
                match = "perfect";
                break;
            }
            case 4: {
                match = "greaterOrEqual";
            }
        }
        this.setXMLAttribute("match", match);
    }

    protected String[] getSpecificAttributes() {
        String match;
        String pluginVersion;
        ArrayList<String> result = new ArrayList<String>();
        String pluginID = this.getPluginId();
        if (pluginID != null && pluginID.trim().length() > 0) {
            result.add("   plugin-id=\"" + pluginID + "\"");
        }
        if ((pluginVersion = this.getPluginVersion()) != null && pluginVersion.trim().length() > 0) {
            result.add("   plugin-version=\"" + pluginVersion + "\"");
        }
        if ((match = this.getXMLAttributeValue("match")) != null && match.trim().length() > 0) {
            result.add("   match=\"" + match + "\"");
        }
        return result.toArray(new String[result.size()]);
    }
}

