/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import org.eclipse.core.runtime.Assert;
import org.eclipse.text.edits.TextEdit;

class TreeIterationInfo {
    private int fMark = -1;
    private TextEdit[][] fEditStack = new TextEdit[10][];
    private int[] fIndexStack = new int[10];

    TreeIterationInfo() {
    }

    public int getSize() {
        return this.fMark + 1;
    }

    public void push(TextEdit[] edits) {
        if (++this.fMark == this.fEditStack.length) {
            TextEdit[][] t1 = new TextEdit[this.fEditStack.length * 2][];
            System.arraycopy(this.fEditStack, 0, t1, 0, this.fEditStack.length);
            this.fEditStack = t1;
            int[] t2 = new int[this.fEditStack.length];
            System.arraycopy(this.fIndexStack, 0, t2, 0, this.fIndexStack.length);
            this.fIndexStack = t2;
        }
        this.fEditStack[this.fMark] = edits;
        this.fIndexStack[this.fMark] = -1;
    }

    public void setIndex(int index) {
        this.fIndexStack[this.fMark] = index;
    }

    public void pop() {
        this.fEditStack[this.fMark] = null;
        this.fIndexStack[this.fMark] = -1;
        --this.fMark;
    }

    public void accept(Visitor visitor) {
        int i = this.fMark;
        while (i >= 0) {
            Assert.isTrue((this.fIndexStack[i] >= 0 ? 1 : 0) != 0);
            int start = this.fIndexStack[i] + 1;
            TextEdit[] edits = this.fEditStack[i];
            int s = start;
            while (s < edits.length) {
                visitor.visit(edits[s]);
                ++s;
            }
            --i;
        }
    }

    static interface Visitor {
        public void visit(TextEdit var1);
    }
}

