/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.PreferenceNode
 */
package org.eclipse.ui.internal.preferences;

import java.util.ArrayList;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExtensionNode;

public class WorkbenchPreferenceExpressionNode
extends PreferenceNode
implements IPluginContribution {
    public WorkbenchPreferenceExpressionNode(String id) {
        super(id);
    }

    public IPreferenceNode findSubNode(String id) {
        return WorkbenchPreferenceExpressionNode.getNodeExpression(super.findSubNode(id));
    }

    public IPreferenceNode[] getSubNodes() {
        IPreferenceNode[] prefNodes = super.getSubNodes();
        int size = prefNodes.length;
        ArrayList<IPreferenceNode> list = new ArrayList<IPreferenceNode>(size);
        int i = 0;
        while (i < size) {
            IPreferenceNode prefNode = WorkbenchPreferenceExpressionNode.getNodeExpression(prefNodes[i]);
            if (prefNode != null) {
                list.add(prefNode);
            }
            ++i;
        }
        return list.toArray(new IPreferenceNode[list.size()]);
    }

    public static IPreferenceNode getNodeExpression(IPreferenceNode prefNode) {
        WorkbenchPreferenceExtensionNode node;
        if (prefNode == null) {
            return null;
        }
        if (prefNode instanceof WorkbenchPreferenceExtensionNode && WorkbenchActivityHelper.restrictUseOf(node = (WorkbenchPreferenceExtensionNode)prefNode)) {
            return null;
        }
        return prefNode;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return "";
    }
}

