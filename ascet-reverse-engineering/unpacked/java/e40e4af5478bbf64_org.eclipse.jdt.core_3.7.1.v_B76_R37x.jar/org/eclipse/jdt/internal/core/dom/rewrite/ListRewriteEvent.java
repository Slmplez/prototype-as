/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;

public class ListRewriteEvent
extends RewriteEvent {
    public static final int NEW = 1;
    public static final int OLD = 2;
    public static final int BOTH = 3;
    private List originalNodes;
    private List listEntries;

    public ListRewriteEvent(List originalNodes) {
        this.originalNodes = new ArrayList(originalNodes);
    }

    public ListRewriteEvent(RewriteEvent[] children) {
        this.listEntries = new ArrayList(children.length * 2);
        this.originalNodes = new ArrayList(children.length * 2);
        int i = 0;
        while (i < children.length) {
            RewriteEvent curr = children[i];
            this.listEntries.add(curr);
            if (curr.getOriginalValue() != null) {
                this.originalNodes.add(curr.getOriginalValue());
            }
            ++i;
        }
    }

    private List getEntries() {
        if (this.listEntries == null) {
            int nNodes = this.originalNodes.size();
            this.listEntries = new ArrayList(nNodes * 2);
            int i = 0;
            while (i < nNodes) {
                ASTNode node = (ASTNode)this.originalNodes.get(i);
                this.listEntries.add(new NodeRewriteEvent(node, node));
                ++i;
            }
        }
        return this.listEntries;
    }

    public int getChangeKind() {
        if (this.listEntries != null) {
            int i = 0;
            while (i < this.listEntries.size()) {
                RewriteEvent curr = (RewriteEvent)this.listEntries.get(i);
                if (curr.getChangeKind() != 0) {
                    return 8;
                }
                ++i;
            }
        }
        return 0;
    }

    public boolean isListRewrite() {
        return true;
    }

    public RewriteEvent[] getChildren() {
        List entries = this.getEntries();
        return entries.toArray(new RewriteEvent[entries.size()]);
    }

    public Object getOriginalValue() {
        return this.originalNodes;
    }

    public Object getNewValue() {
        List entries = this.getEntries();
        ArrayList<Object> res = new ArrayList<Object>(entries.size());
        int i = 0;
        while (i < entries.size()) {
            RewriteEvent curr = (RewriteEvent)entries.get(i);
            Object newVal = curr.getNewValue();
            if (newVal != null) {
                res.add(newVal);
            }
            ++i;
        }
        return res;
    }

    public RewriteEvent removeEntry(ASTNode originalEntry) {
        return this.replaceEntry(originalEntry, null);
    }

    public RewriteEvent replaceEntry(ASTNode entry, ASTNode newEntry) {
        if (entry == null) {
            throw new IllegalArgumentException();
        }
        List entries = this.getEntries();
        int nEntries = entries.size();
        int i = 0;
        while (i < nEntries) {
            NodeRewriteEvent curr = (NodeRewriteEvent)entries.get(i);
            if (curr.getOriginalValue() == entry || curr.getNewValue() == entry) {
                curr.setNewValue(newEntry);
                if (curr.getNewValue() == null && curr.getOriginalValue() == null) {
                    entries.remove(i);
                    return null;
                }
                return curr;
            }
            ++i;
        }
        return null;
    }

    public void revertChange(NodeRewriteEvent event) {
        Object originalValue = event.getOriginalValue();
        if (originalValue == null) {
            List entries = this.getEntries();
            entries.remove(event);
        } else {
            event.setNewValue(originalValue);
        }
    }

    public int getIndex(ASTNode node, int kind) {
        List entries = this.getEntries();
        int i = entries.size() - 1;
        while (i >= 0) {
            RewriteEvent curr = (RewriteEvent)entries.get(i);
            if ((kind & 2) != 0 && curr.getOriginalValue() == node) {
                return i;
            }
            if ((kind & 1) != 0 && curr.getNewValue() == node) {
                return i;
            }
            --i;
        }
        return -1;
    }

    public RewriteEvent insert(ASTNode insertedNode, int insertIndex) {
        NodeRewriteEvent change = new NodeRewriteEvent(null, insertedNode);
        if (insertIndex != -1) {
            this.getEntries().add(insertIndex, change);
        } else {
            this.getEntries().add(change);
        }
        return change;
    }

    public void setNewValue(ASTNode newValue, int insertIndex) {
        NodeRewriteEvent curr = (NodeRewriteEvent)this.getEntries().get(insertIndex);
        curr.setNewValue(newValue);
    }

    public int getChangeKind(int index) {
        return ((NodeRewriteEvent)this.getEntries().get(index)).getChangeKind();
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append(" [list change\n\t");
        RewriteEvent[] events = this.getChildren();
        int i = 0;
        while (i < events.length) {
            if (i != 0) {
                buf.append("\n\t");
            }
            buf.append(events[i]);
            ++i;
        }
        buf.append("\n]");
        return buf.toString();
    }
}

