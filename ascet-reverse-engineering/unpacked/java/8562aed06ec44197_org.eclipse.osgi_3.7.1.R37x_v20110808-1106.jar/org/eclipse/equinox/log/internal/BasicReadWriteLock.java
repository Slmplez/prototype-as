/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BasicReadWriteLock {
    private List<Thread> currentReaders = new ArrayList<Thread>(2);
    private int writersWaiting = 0;
    private Thread writing = null;

    public synchronized int readLock() {
        while (this.writing != null || this.writersWaiting != 0) {
            try {
                if (this.writing == Thread.currentThread()) {
                    throw new IllegalStateException("Attempted to nest read lock inside a write lock");
                }
                this.wait();
            }
            catch (InterruptedException interruptedException) {
                Thread.currentThread().interrupt();
            }
        }
        this.currentReaders.add(Thread.currentThread());
        if (this.currentReaders.size() == 1) {
            return 1;
        }
        Thread current = Thread.currentThread();
        int result = 0;
        Iterator<Thread> iterator = this.currentReaders.iterator();
        while (iterator.hasNext()) {
            Thread reader = iterator.next();
            if (reader != current) continue;
            ++result;
        }
        return result;
    }

    public synchronized void readUnlock() {
        this.currentReaders.remove(Thread.currentThread());
        this.notifyAll();
    }

    /*
     * Exception decompiling
     */
    public synchronized void writeLock() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [5[UNCONDITIONALDOLOOP]], but top level block is 0[TRYBLOCK]
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

    public synchronized void writeUnlock() {
        this.writing = null;
        this.notifyAll();
    }
}

