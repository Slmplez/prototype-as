/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TypedListener;

class EventTable {
    int[] types;
    Listener[] listeners;
    int level;
    static final int GROW_SIZE = 4;

    EventTable() {
    }

    public Listener[] getListeners(int eventType) {
        if (this.types == null) {
            return new Listener[0];
        }
        int count = 0;
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == eventType) {
                ++count;
            }
            ++i;
        }
        if (count == 0) {
            return new Listener[0];
        }
        Listener[] result = new Listener[count];
        count = 0;
        int i2 = 0;
        while (i2 < this.types.length) {
            if (this.types[i2] == eventType) {
                result[count++] = this.listeners[i2];
            }
            ++i2;
        }
        return result;
    }

    public void hook(int eventType, Listener listener) {
        if (this.types == null) {
            this.types = new int[4];
        }
        if (this.listeners == null) {
            this.listeners = new Listener[4];
        }
        int length = this.types.length;
        int index = length - 1;
        while (index >= 0) {
            if (this.types[index] != 0) break;
            --index;
        }
        if (++index == length) {
            int[] newTypes = new int[length + 4];
            System.arraycopy(this.types, 0, newTypes, 0, length);
            this.types = newTypes;
            Listener[] newListeners = new Listener[length + 4];
            System.arraycopy(this.listeners, 0, newListeners, 0, length);
            this.listeners = newListeners;
        }
        this.types[index] = eventType;
        this.listeners[index] = listener;
    }

    public boolean hooks(int eventType) {
        if (this.types == null) {
            return false;
        }
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == eventType) {
                return true;
            }
            ++i;
        }
        return false;
    }

    /*
     * Exception decompiling
     */
    public void sendEvent(Event event) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 3[WHILELOOP]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public int size() {
        if (this.types == null) {
            return 0;
        }
        int count = 0;
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] != 0) {
                ++count;
            }
            ++i;
        }
        return count;
    }

    void remove(int index) {
        if (this.level == 0) {
            int end = this.types.length - 1;
            System.arraycopy(this.types, index + 1, this.types, index, end - index);
            System.arraycopy(this.listeners, index + 1, this.listeners, index, end - index);
            index = end;
        } else if (this.level > 0) {
            this.level = -this.level;
        }
        this.types[index] = 0;
        this.listeners[index] = null;
    }

    public void unhook(int eventType, Listener listener) {
        if (this.types == null) {
            return;
        }
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == eventType && this.listeners[i] == listener) {
                this.remove(i);
                return;
            }
            ++i;
        }
    }

    public void unhook(int eventType, SWTEventListener listener) {
        if (this.types == null) {
            return;
        }
        int i = 0;
        while (i < this.types.length) {
            TypedListener typedListener;
            if (this.types[i] == eventType && this.listeners[i] instanceof TypedListener && (typedListener = (TypedListener)this.listeners[i]).getEventListener() == listener) {
                this.remove(i);
                return;
            }
            ++i;
        }
    }
}

