/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.part;

import java.util.Stack;
import org.eclipse.ui.part.DrillFrame;

class DrillStack {
    Stack fStack = null;

    public DrillStack() {
        this.reset();
    }

    public DrillFrame add(DrillFrame oRecord) {
        this.fStack.push(oRecord);
        return oRecord;
    }

    public boolean canGoBack() {
        return this.fStack.size() > 0;
    }

    public boolean canGoHome() {
        return this.fStack.size() > 0;
    }

    public DrillFrame goBack() {
        DrillFrame aFrame = (DrillFrame)this.fStack.pop();
        return aFrame;
    }

    public DrillFrame goHome() {
        DrillFrame aFrame = (DrillFrame)this.fStack.elementAt(0);
        this.reset();
        return aFrame;
    }

    public void reset() {
        this.fStack = new Stack();
    }

    public int size() {
        return this.fStack.size();
    }

    public DrillFrame top() {
        return (DrillFrame)this.fStack.peek();
    }
}

