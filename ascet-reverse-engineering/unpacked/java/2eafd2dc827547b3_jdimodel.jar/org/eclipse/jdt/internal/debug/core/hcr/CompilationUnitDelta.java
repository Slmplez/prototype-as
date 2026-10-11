/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFileState
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.dom.ASTMatcher
 *  org.eclipse.jdt.core.dom.ASTParser
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.MethodDeclaration
 */
package org.eclipse.jdt.internal.debug.core.hcr;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.internal.debug.core.hcr.MethodSearchVisitor;

public class CompilationUnitDelta {
    private CompilationUnit fCurrentAst;
    private CompilationUnit fPrevAst;
    private ASTParser fParser = null;
    private ASTMatcher fMatcher = null;
    private boolean fHasHistory = false;

    public CompilationUnitDelta(ICompilationUnit cu, long timestamp) throws CoreException {
        IFile file;
        IFileState[] states;
        if (cu.isWorkingCopy()) {
            cu = cu.getPrimary();
        }
        if ((states = (file = (IFile)cu.getUnderlyingResource()).getHistory(null)) == null || states.length <= 0) {
            return;
        }
        this.fHasHistory = true;
        IFileState found = null;
        int i = 0;
        while (i < states.length) {
            IFileState state = states[i];
            long d = state.getModificationTime();
            if (d < timestamp) {
                found = state;
                break;
            }
            ++i;
        }
        if (found == null) {
            found = states[states.length - 1];
        }
        InputStream oldContents = null;
        InputStream newContents = null;
        try {
            oldContents = found.getContents();
            newContents = file.getContents();
        }
        catch (CoreException coreException) {
            return;
        }
        this.fPrevAst = this.parse(oldContents, cu);
        this.fCurrentAst = this.parse(newContents, cu);
    }

    public boolean hasChanged(String methodName, String signature) {
        MethodDeclaration curr;
        if (!this.fHasHistory) {
            return false;
        }
        if (this.fPrevAst == null || this.fCurrentAst == null) {
            return true;
        }
        MethodSearchVisitor visitor = new MethodSearchVisitor();
        MethodDeclaration prev = this.findMethod(this.fPrevAst, visitor, methodName, signature);
        if (prev != null && (curr = this.findMethod(this.fCurrentAst, visitor, methodName, signature)) != null) {
            return !this.getMatcher().match(prev, (Object)curr);
        }
        return true;
    }

    private MethodDeclaration findMethod(CompilationUnit cu, MethodSearchVisitor visitor, String name, String signature) {
        visitor.setTargetMethod(name, signature);
        cu.accept((ASTVisitor)visitor);
        return visitor.getMatch();
    }

    private CompilationUnit parse(InputStream input, ICompilationUnit cu) {
        char[] buffer = this.readString(input);
        if (buffer != null) {
            if (this.fParser == null) {
                this.fParser = ASTParser.newParser((int)4);
            }
            this.fParser.setSource(buffer);
            this.fParser.setProject(cu.getJavaProject());
            this.fParser.setResolveBindings(true);
            this.fParser.setKind(8);
            this.fParser.setUnitName(cu.getElementName());
            return (CompilationUnit)this.fParser.createAST(null);
        }
        return null;
    }

    private ASTMatcher getMatcher() {
        if (this.fMatcher == null) {
            this.fMatcher = new ASTMatcher();
        }
        return this.fMatcher;
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private char[] readString(InputStream is) {
        if (is == null) {
            return null;
        }
        BufferedReader reader = null;
        StringBuffer buffer = new StringBuffer();
        char[] part = new char[2048];
        int read = 0;
        reader = new BufferedReader(new InputStreamReader(is, ResourcesPlugin.getEncoding()));
        while ((read = reader.read(part)) != -1) {
            buffer.append(part, 0, read);
        }
        char[] b = new char[buffer.length()];
        buffer.getChars(0, b.length, b, 0);
        char[] cArray = b;
        if (reader == null) return cArray;
        try {
            reader.close();
            return cArray;
        }
        catch (IOException iOException) {}
        return cArray;
        catch (IOException iOException) {
            try {
                if (reader == null) return null;
            }
            catch (Throwable throwable) {
                if (reader == null) throw throwable;
                try {
                    reader.close();
                    throw throwable;
                }
                catch (IOException iOException2) {}
                throw throwable;
            }
            try {
                reader.close();
                return null;
            }
            catch (IOException iOException3) {}
            return null;
        }
    }
}

