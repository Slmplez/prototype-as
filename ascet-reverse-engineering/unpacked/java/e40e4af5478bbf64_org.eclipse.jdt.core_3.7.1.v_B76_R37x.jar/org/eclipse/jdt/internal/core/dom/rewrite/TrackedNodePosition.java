/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.rewrite.ITrackedNodePosition;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public class TrackedNodePosition
implements ITrackedNodePosition {
    private final TextEditGroup group;
    private final ASTNode node;

    public TrackedNodePosition(TextEditGroup group, ASTNode node) {
        this.group = group;
        this.node = node;
    }

    public int getStartPosition() {
        if (this.group.isEmpty()) {
            return this.node.getStartPosition();
        }
        IRegion coverage = TextEdit.getCoverage((TextEdit[])this.group.getTextEdits());
        if (coverage == null) {
            return this.node.getStartPosition();
        }
        return coverage.getOffset();
    }

    public int getLength() {
        if (this.group.isEmpty()) {
            return this.node.getLength();
        }
        IRegion coverage = TextEdit.getCoverage((TextEdit[])this.group.getTextEdits());
        if (coverage == null) {
            return this.node.getLength();
        }
        return coverage.getLength();
    }
}

