/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager
 *  org.eclipse.jdt.internal.compiler.Compiler
 *  org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration
 *  org.eclipse.jdt.internal.compiler.env.ICompilationUnit
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 */
package org.eclipse.jdt.internal.compiler.apt.dispatch;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.dispatch.IProcessorProvider;
import org.eclipse.jdt.internal.compiler.apt.dispatch.ProcessorInfo;
import org.eclipse.jdt.internal.compiler.apt.dispatch.RoundDispatcher;
import org.eclipse.jdt.internal.compiler.apt.dispatch.RoundEnvImpl;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public abstract class BaseAnnotationProcessorManager
extends AbstractAnnotationProcessorManager
implements IProcessorProvider {
    protected PrintWriter _out;
    protected PrintWriter _err;
    protected BaseProcessingEnvImpl _processingEnv;
    protected boolean _isFirstRound = true;
    protected List<ProcessorInfo> _processors = new ArrayList<ProcessorInfo>();
    protected boolean _printProcessorInfo = false;
    protected boolean _printRounds = false;
    protected int _round;

    public void configure(Object batchCompiler, String[] options) {
        throw new UnsupportedOperationException();
    }

    public void configureFromPlatform(Compiler compiler, Object compilationUnitLocator, Object javaProject) {
        throw new UnsupportedOperationException();
    }

    @Override
    public List<ProcessorInfo> getDiscoveredProcessors() {
        return this._processors;
    }

    public ICompilationUnit[] getDeletedUnits() {
        return this._processingEnv.getDeletedUnits();
    }

    public ICompilationUnit[] getNewUnits() {
        return this._processingEnv.getNewUnits();
    }

    public ReferenceBinding[] getNewClassFiles() {
        return this._processingEnv.getNewClassFiles();
    }

    public void reset() {
        this._processingEnv.reset();
    }

    public void setErr(PrintWriter err) {
        this._err = err;
    }

    public void setOut(PrintWriter out) {
        this._out = out;
    }

    public void setProcessors(Object[] processors) {
        throw new UnsupportedOperationException();
    }

    public void processAnnotations(CompilationUnitDeclaration[] units, ReferenceBinding[] referenceBindings, boolean isLastRound) {
        PrintWriter traceRounds;
        RoundEnvImpl roundEnv = new RoundEnvImpl(units, referenceBindings, isLastRound, this._processingEnv);
        if (this._isFirstRound) {
            this._isFirstRound = false;
        }
        PrintWriter traceProcessorInfo = this._printProcessorInfo ? this._out : null;
        PrintWriter printWriter = traceRounds = this._printRounds ? this._out : null;
        if (traceRounds != null) {
            traceRounds.println("Round " + ++this._round + ':');
        }
        RoundDispatcher dispatcher = new RoundDispatcher(this, roundEnv, roundEnv.getRootAnnotations(), traceProcessorInfo, traceRounds);
        dispatcher.round();
    }
}

