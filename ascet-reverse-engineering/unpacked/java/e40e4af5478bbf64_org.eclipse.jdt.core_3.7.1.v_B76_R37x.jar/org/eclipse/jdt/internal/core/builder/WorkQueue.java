/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.builder.SourceFile;

public class WorkQueue {
    private SimpleSet needsCompileList = new SimpleSet();
    private SimpleSet compiledList = new SimpleSet();

    public void add(SourceFile element) {
        this.needsCompileList.add(element);
    }

    public void addAll(SourceFile[] elements) {
        int i = 0;
        int l = elements.length;
        while (i < l) {
            this.add(elements[i]);
            ++i;
        }
    }

    public void clear() {
        this.needsCompileList.clear();
        this.compiledList.clear();
    }

    public void finished(SourceFile element) {
        this.needsCompileList.remove(element);
        this.compiledList.add(element);
    }

    public boolean isCompiled(SourceFile element) {
        return this.compiledList.includes(element);
    }

    public boolean isWaiting(SourceFile element) {
        return this.needsCompileList.includes(element);
    }

    public String toString() {
        return "WorkQueue: " + this.needsCompileList;
    }
}

