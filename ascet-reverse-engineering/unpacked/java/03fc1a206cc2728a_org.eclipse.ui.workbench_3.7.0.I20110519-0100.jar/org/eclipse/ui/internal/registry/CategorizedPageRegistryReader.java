/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;

public abstract class CategorizedPageRegistryReader
extends RegistryReader {
    public static final String ATT_CATEGORY = "category";
    static final String PREFERENCE_SEPARATOR = "/";
    List topLevelNodes;

    void processNodes() {
        boolean workDone;
        ArrayList<CategoryNode> deferred;
        this.topLevelNodes = new ArrayList();
        CategoryNode[] nodes = this.createCategoryNodes(this.getNodes());
        do {
            workDone = false;
            deferred = new ArrayList<CategoryNode>();
            int i = 0;
            while (i < nodes.length) {
                CategoryNode categoryNode = nodes[i];
                Object node = categoryNode.getNode();
                String category = this.getCategory(node);
                if (category == null) {
                    this.topLevelNodes.add(node);
                } else {
                    StringTokenizer tokenizer = new StringTokenizer(category, PREFERENCE_SEPARATOR);
                    Object parent = null;
                    while (tokenizer.hasMoreElements()) {
                        String currentToken = tokenizer.nextToken();
                        Object child = null;
                        child = parent == null ? this.findNode(currentToken) : this.findNode(parent, currentToken);
                        if (child == null) {
                            parent = null;
                            break;
                        }
                        parent = child;
                    }
                    if (parent != null) {
                        workDone = true;
                        this.add(parent, node);
                    } else {
                        deferred.add(categoryNode);
                    }
                }
                ++i;
            }
        } while ((nodes = deferred.toArray(new CategoryNode[deferred.size()])).length > 0 && workDone);
        int i = 0;
        while (i < nodes.length) {
            CategoryNode categoryNode = nodes[i];
            WorkbenchPlugin.log("Invalid preference page path: " + categoryNode.getFlatCategory());
            this.topLevelNodes.add(categoryNode.getNode());
            ++i;
        }
    }

    abstract String getCategory(Object var1);

    abstract void add(Object var1, Object var2);

    abstract Collection getNodes();

    CategoryNode[] createCategoryNodes(Collection nodesToCategorize) {
        ArrayList<CategoryNode> nodes = new ArrayList<CategoryNode>();
        Iterator nodesIterator = nodesToCategorize.iterator();
        while (nodesIterator.hasNext()) {
            nodes.add(this.createCategoryNode(this, nodesIterator.next()));
        }
        return nodes.toArray(new CategoryNode[nodes.size()]);
    }

    abstract CategoryNode createCategoryNode(CategorizedPageRegistryReader var1, Object var2);

    abstract Object findNode(String var1);

    abstract Object findNode(Object var1, String var2);

    abstract class CategoryNode {
        private final CategorizedPageRegistryReader reader;
        private String flatCategory;

        public CategoryNode(CategorizedPageRegistryReader reader) {
            this.reader = reader;
        }

        public String getFlatCategory() {
            if (this.flatCategory == null) {
                this.initialize();
                if (this.flatCategory == null) {
                    this.flatCategory = this.getLabelText();
                }
            }
            return this.flatCategory;
        }

        abstract String getLabelText();

        private void initialize() {
            String category = this.reader.getCategory(this.getNode());
            if (category == null) {
                return;
            }
            StringBuffer sb = new StringBuffer();
            StringTokenizer stok = new StringTokenizer(category, CategorizedPageRegistryReader.PREFERENCE_SEPARATOR);
            Object immediateParent = null;
            while (stok.hasMoreTokens()) {
                String pathID = stok.nextToken();
                immediateParent = this.reader.findNode(pathID);
                if (immediateParent == null) {
                    return;
                }
                if (sb.length() > 0) {
                    sb.append(CategorizedPageRegistryReader.PREFERENCE_SEPARATOR);
                }
                sb.append(this.getLabelText(immediateParent));
            }
            if (sb.length() > 0) {
                sb.append(CategorizedPageRegistryReader.PREFERENCE_SEPARATOR);
            }
            sb.append(this.getLabelText());
            this.flatCategory = sb.toString();
        }

        abstract String getLabelText(Object var1);

        abstract Object getNode();
    }
}

