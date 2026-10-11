/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;

public class ContentComparator {
    private boolean ignoreWhitespace = false;

    public ContentComparator(boolean ignoreWhitespace) {
        this.ignoreWhitespace = ignoreWhitespace;
    }

    /*
     * Loose catch block
     */
    public boolean compare(Object e1, Object e2, IProgressMonitor monitor) {
        InputStream is1 = null;
        InputStream is2 = null;
        monitor.beginTask(null, 100);
        is1 = this.getContents(e1, Policy.subMonitorFor(monitor, 50));
        is2 = this.getContents(e2, Policy.subMonitorFor(monitor, 50));
        boolean bl = this.contentsEqual(is1, is2, this.shouldIgnoreWhitespace());
        try {
            try {
                if (is1 != null) {
                    is1.close();
                }
            }
            finally {
                if (is2 != null) {
                    is2.close();
                }
            }
        }
        catch (IOException iOException) {}
        monitor.done();
        return bl;
        catch (TeamException e) {
            try {
                TeamPlugin.log(e);
            }
            catch (Throwable throwable) {
                try {
                    try {
                        if (is1 != null) {
                            is1.close();
                        }
                    }
                    finally {
                        if (is2 != null) {
                            is2.close();
                        }
                    }
                }
                catch (IOException iOException) {}
                monitor.done();
                throw throwable;
            }
            try {
                try {
                    if (is1 != null) {
                        is1.close();
                    }
                }
                finally {
                    if (is2 != null) {
                        is2.close();
                    }
                }
            }
            catch (IOException iOException) {}
            monitor.done();
            return false;
        }
    }

    protected boolean shouldIgnoreWhitespace() {
        return this.ignoreWhitespace;
    }

    /*
     * Exception decompiling
     */
    private boolean contentsEqual(InputStream is1, InputStream is2, boolean ignoreWhitespace) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [38[DOLOOP]], but top level block is 10[TRYBLOCK]
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

    private boolean isWhitespace(int c) {
        if (c == -1) {
            return false;
        }
        return Character.isWhitespace((char)c);
    }

    private InputStream getContents(Object resource, IProgressMonitor monitor) throws TeamException {
        try {
            if (resource instanceof IFile) {
                return new BufferedInputStream(((IFile)resource).getContents());
            }
            if (resource instanceof IResourceVariant) {
                IResourceVariant remote = (IResourceVariant)resource;
                if (!remote.isContainer()) {
                    return new BufferedInputStream(remote.getStorage(monitor).getContents());
                }
            } else if (resource instanceof IFileRevision) {
                IFileRevision remote = (IFileRevision)resource;
                return new BufferedInputStream(remote.getStorage(monitor).getContents());
            }
            return null;
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }
}

