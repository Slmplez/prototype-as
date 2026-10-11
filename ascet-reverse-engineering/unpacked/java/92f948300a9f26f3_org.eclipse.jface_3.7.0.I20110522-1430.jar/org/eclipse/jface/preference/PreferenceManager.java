/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.preference;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceNode;

public class PreferenceManager {
    public static final int PRE_ORDER = 0;
    public static final int POST_ORDER = 1;
    private static final String ROOT_NODE_ID = "";
    PreferenceNode root;
    String separator;

    public PreferenceManager() {
        this('.', new PreferenceNode(ROOT_NODE_ID));
    }

    public PreferenceManager(char separatorChar) {
        this(separatorChar, new PreferenceNode(ROOT_NODE_ID));
    }

    public PreferenceManager(char separatorChar, PreferenceNode rootNode) {
        this.separator = new String(new char[]{separatorChar});
        this.root = rootNode;
    }

    public boolean addTo(String path, IPreferenceNode node) {
        IPreferenceNode target = this.find(path);
        if (target == null) {
            return false;
        }
        target.add(node);
        return true;
    }

    public void addToRoot(IPreferenceNode node) {
        Assert.isNotNull((Object)node);
        this.root.add(node);
    }

    protected void buildSequence(IPreferenceNode node, List sequence, int order) {
        if (order == 0) {
            sequence.add(node);
        }
        IPreferenceNode[] subnodes = node.getSubNodes();
        int i = 0;
        while (i < subnodes.length) {
            this.buildSequence(subnodes[i], sequence, order);
            ++i;
        }
        if (order == 1) {
            sequence.add(node);
        }
    }

    public IPreferenceNode find(String path) {
        return this.find(path, this.root);
    }

    protected IPreferenceNode find(String path, IPreferenceNode top) {
        Assert.isNotNull((Object)path);
        StringTokenizer stok = new StringTokenizer(path, this.separator);
        IPreferenceNode node = top;
        while (stok.hasMoreTokens()) {
            String id = stok.nextToken();
            if ((node = node.findSubNode(id)) != null) continue;
            return null;
        }
        if (node == top) {
            return null;
        }
        return node;
    }

    public List getElements(int order) {
        Assert.isTrue((order == 0 || order == 1 ? 1 : 0) != 0, (String)"invalid traversal order");
        ArrayList sequence = new ArrayList();
        IPreferenceNode[] subnodes = this.getRoot().getSubNodes();
        int i = 0;
        while (i < subnodes.length) {
            this.buildSequence(subnodes[i], sequence, order);
            ++i;
        }
        return sequence;
    }

    protected IPreferenceNode getRoot() {
        return this.root;
    }

    public final IPreferenceNode[] getRootSubNodes() {
        return this.getRoot().getSubNodes();
    }

    public IPreferenceNode remove(String path) {
        Assert.isNotNull((Object)path);
        int index = path.lastIndexOf(this.separator);
        if (index == -1) {
            return this.root.remove(path);
        }
        Assert.isTrue((index < path.length() - 1 ? 1 : 0) != 0, (String)"Path can not end with a dot");
        String parentPath = path.substring(0, index);
        String id = path.substring(index + 1);
        IPreferenceNode parentNode = this.find(parentPath);
        if (parentNode == null) {
            return null;
        }
        return parentNode.remove(id);
    }

    public boolean remove(IPreferenceNode node) {
        Assert.isNotNull((Object)node);
        return this.root.remove(node);
    }

    public void removeAll() {
        this.root = new PreferenceNode(ROOT_NODE_ID);
    }
}

