/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.InvocationException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Value
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IDebugEventFilter
 *  org.eclipse.debug.core.model.ITerminate
 *  org.eclipse.debug.core.model.IThread
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.compiler.IProblem
 *  org.eclipse.jdt.core.dom.ASTParser
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.CompilationUnit
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import com.sun.jdi.InvocationException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventFilter;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.debug.core.IEvaluationRunnable;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaArrayType;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.debug.eval.IEvaluationListener;
import org.eclipse.jdt.debug.eval.IEvaluationResult;
import org.eclipse.jdt.internal.debug.core.JDIDebugOptions;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;
import org.eclipse.jdt.internal.debug.eval.EvaluationResult;
import org.eclipse.jdt.internal.debug.eval.ast.engine.ASTEvaluationEngine;
import org.eclipse.jdt.internal.debug.eval.ast.engine.ASTInstructionCompiler;
import org.eclipse.jdt.internal.debug.eval.ast.engine.AbstractRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.ArrayRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.EvaluationEngineMessages;
import org.eclipse.jdt.internal.debug.eval.ast.engine.EvaluationSourceGenerator;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.Interpreter;
import org.eclipse.jdt.internal.debug.eval.ast.engine.JavaObjectRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.RuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionSequence;

public class ASTEvaluationEngine
implements IAstEvaluationEngine {
    private IJavaProject fProject;
    private IJavaDebugTarget fDebugTarget;
    private static Pattern fgThisPattern = Pattern.compile("(.*[^a-zA-Z0-9]+|^)(this)([^a-zA-Z0-9]+|$).*");

    public ASTEvaluationEngine(IJavaProject project, IJavaDebugTarget debugTarget) {
        this.setJavaProject(project);
        this.setDebugTarget(debugTarget);
    }

    public void setJavaProject(IJavaProject project) {
        this.fProject = project;
    }

    public void setDebugTarget(IJavaDebugTarget debugTarget) {
        this.fDebugTarget = debugTarget;
    }

    public void evaluate(String snippet, IJavaStackFrame frame, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.traceCaller(snippet, frame.getThread());
        this.checkInterface(frame);
        ICompiledExpression expression = this.getCompiledExpression(snippet, frame);
        this.evaluateExpression(expression, frame, listener, evaluationDetail, hitBreakpoints);
    }

    public void evaluate(String snippet, IJavaObject thisContext, IJavaThread thread, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.traceCaller(snippet, thread);
        ICompiledExpression expression = this.getCompiledExpression(snippet, thisContext);
        this.evaluateExpression(expression, thisContext, thread, listener, evaluationDetail, hitBreakpoints);
    }

    private void traceCaller(String snippet, IThread thread) {
        if (JDIDebugOptions.DEBUG_AST_EVAL_THREAD_TRACE) {
            StringBuffer buf = new StringBuffer();
            buf.append(JDIDebugOptions.FORMAT.format(new Date()));
            buf.append(" : Evaluation Request Trace - Expression: ");
            buf.append(snippet);
            buf.append("\n\tThread: ");
            try {
                String name = thread.getName();
                buf.append('[');
                buf.append(name);
                buf.append("] ");
            }
            catch (DebugException debugException) {
                buf.append(thread.toString());
            }
            System.out.println(buf.toString());
            System.out.flush();
            Thread.dumpStack();
        }
    }

    private void checkInterface(IJavaStackFrame frame) throws DebugException {
        if (frame.getReferenceType() instanceof IJavaInterfaceType) {
            Status status = new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationEngineMessages.ASTEvaluationEngine_0, null);
            throw new DebugException((IStatus)status);
        }
    }

    public void evaluateExpression(ICompiledExpression expression, IJavaStackFrame frame, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.traceCaller(expression.getSnippet(), frame.getThread());
        RuntimeContext context = new RuntimeContext(this.getJavaProject(), frame);
        this.doEvaluation(expression, context, (IJavaThread)frame.getThread(), listener, evaluationDetail, hitBreakpoints);
    }

    public void evaluateExpression(ICompiledExpression expression, IJavaObject thisContext, IJavaThread thread, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.traceCaller(expression.getSnippet(), thread);
        AbstractRuntimeContext context = null;
        context = thisContext instanceof IJavaArray ? new ArrayRuntimeContext((IJavaArray)thisContext, thread, this.getJavaProject()) : new JavaObjectRuntimeContext(thisContext, this.getJavaProject(), thread);
        this.doEvaluation(expression, context, thread, listener, evaluationDetail, hitBreakpoints);
    }

    private void doEvaluation(ICompiledExpression expression, IRuntimeContext context, IJavaThread thread, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        if (expression instanceof InstructionSequence) {
            if (thread.isSuspended() && ((JDIThread)thread).isInvokingMethod() || thread.isPerformingEvaluation() && evaluationDetail == 64) {
                EvaluationResult result = new EvaluationResult(this, expression.getSnippet(), thread);
                result.addError(EvaluationEngineMessages.ASTEvaluationEngine_Cannot_perform_nested_evaluations);
                listener.evaluationComplete(result);
                return;
            }
        } else {
            throw new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, EvaluationEngineMessages.ASTEvaluationEngine_AST_evaluation_engine_cannot_evaluate_expression, null));
        }
        thread.queueRunnable(new EvalRunnable((InstructionSequence)expression, thread, context, listener, evaluationDetail, hitBreakpoints));
    }

    public ICompiledExpression getCompiledExpression(String snippet, IJavaStackFrame frame) {
        IJavaProject javaProject = this.getJavaProject();
        RuntimeContext context = new RuntimeContext(javaProject, frame);
        EvaluationSourceGenerator mapper = null;
        CompilationUnit unit = null;
        try {
            IJavaVariable[] localsVar = context.getLocals();
            int numLocalsVar = localsVar.length;
            HashSet<String> names = new HashSet<String>();
            IJavaVariable[] locals = new IJavaVariable[numLocalsVar];
            int numLocals = 0;
            int i = 0;
            while (i < numLocalsVar) {
                if (!this.isLocalType(localsVar[i].getSignature()) && !names.contains(localsVar[i].getName())) {
                    locals[numLocals++] = localsVar[i];
                    names.add(localsVar[i].getName());
                }
                ++i;
            }
            String[] localTypesNames = new String[numLocals];
            String[] localVariables = new String[numLocals];
            int i2 = 0;
            while (i2 < numLocals) {
                localVariables[i2] = locals[i2].getName();
                localTypesNames[i2] = Signature.toString((String)locals[i2].getGenericSignature()).replace('/', '.');
                ++i2;
            }
            mapper = new EvaluationSourceGenerator(localTypesNames, localVariables, snippet);
            IJavaReferenceType receivingType = frame.getReferenceType();
            unit = this.parseCompilationUnit(mapper.getSource(receivingType, javaProject, frame.isStatic()).toCharArray(), mapper.getCompilationUnitName(), javaProject);
        }
        catch (CoreException e) {
            InstructionSequence expression = new InstructionSequence(snippet);
            expression.addError(e.getStatus().getMessage());
            return expression;
        }
        return this.createExpressionFromAST(snippet, mapper, unit);
    }

    private CompilationUnit parseCompilationUnit(char[] source, String unitName, IJavaProject project) {
        ASTParser parser = ASTParser.newParser((int)4);
        parser.setSource(source);
        parser.setUnitName(unitName);
        parser.setProject(project);
        parser.setResolveBindings(true);
        Map options = EvaluationSourceGenerator.getCompilerOptions(project);
        parser.setCompilerOptions(options);
        return (CompilationUnit)parser.createAST(null);
    }

    private boolean isLocalType(String typeName) {
        StringTokenizer strTok = new StringTokenizer(typeName, "$");
        strTok.nextToken();
        while (strTok.hasMoreTokens()) {
            char char0 = strTok.nextToken().charAt(0);
            if ('0' > char0 || char0 > '9') continue;
            return true;
        }
        return false;
    }

    private ICompiledExpression getCompiledExpression(String snippet, IJavaArrayType arrayType) {
        CompilationUnit unit;
        EvaluationSourceGenerator mapper;
        block7: {
            mapper = null;
            unit = null;
            try {
                IJavaType[] javaTypes;
                IJavaProject javaProject = this.getJavaProject();
                String newSnippet = ASTEvaluationEngine.replaceThisReferences(snippet);
                int dimension = 1;
                IJavaType componentType = arrayType.getComponentType();
                while (componentType instanceof IJavaArrayType) {
                    componentType = ((IJavaArrayType)componentType).getComponentType();
                    ++dimension;
                }
                String recTypeName = "java.lang.Object";
                String typeName = arrayType.getName();
                if (componentType instanceof IJavaReferenceType) {
                    StringBuffer buf = new StringBuffer();
                    buf.append("java.lang.Object");
                    int i = 0;
                    while (i < dimension) {
                        buf.append("[]");
                        ++i;
                    }
                    typeName = buf.toString();
                }
                String[] localTypesNames = new String[]{typeName};
                String[] localVariables = new String[]{ArrayRuntimeContext.ARRAY_THIS_VARIABLE};
                mapper = new EvaluationSourceGenerator(localTypesNames, localVariables, newSnippet);
                int index = typeName.indexOf(36);
                if (index >= 0) {
                    recTypeName = typeName.substring(0, index);
                }
                if ((javaTypes = this.getDebugTarget().getJavaTypes(recTypeName)).length > 0) {
                    IJavaReferenceType recType = (IJavaReferenceType)javaTypes[0];
                    unit = this.parseCompilationUnit(mapper.getSource(recType, this.getJavaProject(), false).toCharArray(), mapper.getCompilationUnitName(), javaProject);
                    break block7;
                }
                Status status = new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, EvaluationEngineMessages.ASTEvaluationEngine_1, null);
                throw new CoreException((IStatus)status);
            }
            catch (CoreException e) {
                InstructionSequence expression = new InstructionSequence(snippet);
                expression.addError(e.getStatus().getMessage());
                return expression;
            }
        }
        return this.createExpressionFromAST(snippet, mapper, unit);
    }

    public ICompiledExpression getCompiledExpression(String snippet, IJavaObject thisContext) {
        try {
            if (thisContext instanceof IJavaArray) {
                return this.getCompiledExpression(snippet, (IJavaArrayType)thisContext.getJavaType());
            }
            return this.getCompiledExpression(snippet, (IJavaReferenceType)thisContext.getJavaType());
        }
        catch (DebugException e) {
            InstructionSequence expression = new InstructionSequence(snippet);
            expression.addError(e.getStatus().getMessage());
            return expression;
        }
    }

    public ICompiledExpression getCompiledExpression(String snippet, IJavaReferenceType type) {
        if (type instanceof IJavaArrayType) {
            return this.getCompiledExpression(snippet, (IJavaArrayType)type);
        }
        IJavaProject javaProject = this.getJavaProject();
        EvaluationSourceGenerator mapper = null;
        CompilationUnit unit = null;
        mapper = new EvaluationSourceGenerator(new String[0], new String[0], snippet);
        try {
            unit = this.parseCompilationUnit(mapper.getSource(type, javaProject, false).toCharArray(), mapper.getCompilationUnitName(), javaProject);
        }
        catch (CoreException e) {
            InstructionSequence expression = new InstructionSequence(snippet);
            expression.addError(e.getStatus().getMessage());
            return expression;
        }
        return this.createExpressionFromAST(snippet, mapper, unit);
    }

    private ICompiledExpression createExpressionFromAST(String snippet, EvaluationSourceGenerator mapper, CompilationUnit unit) {
        IProblem[] problems = unit.getProblems();
        if (problems.length != 0) {
            boolean snippetError = false;
            boolean runMethodError = false;
            InstructionSequence errorSequence = new InstructionSequence(snippet);
            int codeSnippetStart = mapper.getSnippetStart();
            int codeSnippetEnd = codeSnippetStart + mapper.getSnippet().length();
            int runMethodStart = mapper.getRunMethodStart();
            int runMethodEnd = runMethodStart + mapper.getRunMethodLength();
            int i = 0;
            while (i < problems.length) {
                IProblem problem = problems[i];
                int errorOffset = problem.getSourceStart();
                int problemId = problem.getID();
                if (problemId == 0x1000144) {
                    errorSequence.addError(problem.getMessage());
                    snippetError = true;
                }
                if (problemId != 67108969 && problemId != 67108965 && problemId != 0x8000083 && problemId != 33554503 && problemId != 0x1000003 && problem.isError()) {
                    if (codeSnippetStart <= errorOffset && errorOffset <= codeSnippetEnd) {
                        errorSequence.addError(problem.getMessage());
                        snippetError = true;
                    } else if (runMethodStart <= errorOffset && errorOffset <= runMethodEnd) {
                        runMethodError = true;
                    }
                }
                ++i;
            }
            if (snippetError || runMethodError) {
                if (runMethodError) {
                    errorSequence.addError(EvaluationEngineMessages.ASTEvaluationEngine_Evaluations_must_contain_either_an_expression_or_a_block_of_well_formed_statements_1);
                }
                return errorSequence;
            }
        }
        ASTInstructionCompiler visitor = new ASTInstructionCompiler(mapper.getSnippetStart(), snippet);
        unit.accept((ASTVisitor)visitor);
        return visitor.getInstructions();
    }

    public IJavaProject getJavaProject() {
        return this.fProject;
    }

    public IJavaDebugTarget getDebugTarget() {
        return this.fDebugTarget;
    }

    public void dispose() {
    }

    public static String replaceThisReferences(String snippet) {
        StringBuffer updatedSnippet = new StringBuffer();
        Matcher matcher = fgThisPattern.matcher(snippet);
        int start = 0;
        while (matcher.find()) {
            int end = matcher.start(2);
            updatedSnippet.append(snippet.substring(start, end));
            updatedSnippet.append(ArrayRuntimeContext.ARRAY_THIS_VARIABLE);
            start = end + 4;
        }
        if (start < snippet.length()) {
            updatedSnippet.append(snippet.substring(start, snippet.length()));
        }
        return updatedSnippet.toString();
    }

    class EvalRunnable
    implements Runnable {
        private InstructionSequence fExpression;
        private IJavaThread fThread;
        private int fEvaluationDetail;
        private boolean fHitBreakpoints;
        private IRuntimeContext fContext;
        private IEvaluationListener fListener;

        public EvalRunnable(InstructionSequence expression, IJavaThread thread, IRuntimeContext context, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) {
            this.fExpression = expression;
            this.fThread = thread;
            this.fContext = context;
            this.fListener = listener;
            this.fEvaluationDetail = evaluationDetail;
            this.fHitBreakpoints = hitBreakpoints;
        }

        public void run() {
            StringBuffer buf;
            if (JDIDebugOptions.DEBUG_AST_EVAL) {
                StringBuffer buf2 = new StringBuffer();
                buf2.append(JDIDebugOptions.FORMAT.format(new Date()));
                buf2.append(" : AST Evaluation");
                buf2.append("\n\tExpression: ");
                buf2.append(this.fExpression.getSnippet());
                buf2.append("\n\tThread: ");
                try {
                    String name = this.fThread.getName();
                    buf2.append('[');
                    buf2.append(name);
                    buf2.append("] ");
                }
                catch (DebugException debugException) {}
                buf2.append(this.fThread.toString());
                buf2.append("\n\tDetail: ");
                if (this.fEvaluationDetail == 64) {
                    buf2.append("EVALUATION");
                } else if (this.fEvaluationDetail == 128) {
                    buf2.append("EVALUATION_IMPLICIT");
                } else {
                    buf2.append(this.fEvaluationDetail);
                }
                buf2.append(" Hit Breakpoints: ");
                buf2.append(this.fHitBreakpoints);
                System.out.println(buf2.toString());
            }
            EvaluationResult result = new EvaluationResult(ASTEvaluationEngine.this, this.fExpression.getSnippet(), this.fThread);
            if (this.fExpression.hasErrors()) {
                String[] errors = this.fExpression.getErrorMessages();
                int i = 0;
                int numErrors = errors.length;
                while (i < numErrors) {
                    result.addError(errors[i]);
                    ++i;
                }
                this.evaluationFinished(result);
                if (JDIDebugOptions.DEBUG_AST_EVAL) {
                    StringBuffer buf3 = new StringBuffer();
                    buf3.append("\tErrors: ");
                    int i2 = 0;
                    while (i2 < errors.length) {
                        if (i2 > 0) {
                            buf3.append('\n');
                        }
                        buf3.append("\t\t");
                        buf3.append(errors[i2]);
                        ++i2;
                    }
                    System.out.println(buf3.toString());
                }
                return;
            }
            Interpreter interpreter = new Interpreter(this.fExpression, this.fContext);
            class EvaluationRunnable
            implements IEvaluationRunnable,
            ITerminate {
                CoreException fException;
                boolean fTerminated;
                final /* synthetic */ EvalRunnable this$1;
                private final /* synthetic */ Interpreter val$interpreter;

                EvaluationRunnable(EvalRunnable evalRunnable, Interpreter interpreter) {
                    this.this$1 = evalRunnable;
                    this.val$interpreter = interpreter;
                    this.fTerminated = false;
                }

                public void run(IJavaThread jt, IProgressMonitor pm) {
                    EventFilter filter = EvalRunnable.access$1(this.this$1).new EventFilter();
                    try {
                        try {
                            DebugPlugin.getDefault().addDebugEventFilter((IDebugEventFilter)filter);
                            this.val$interpreter.execute();
                        }
                        catch (CoreException exception) {
                            this.fException = exception;
                            if (EvalRunnable.access$0(this.this$1) == 64 && exception.getStatus().getException() instanceof InvocationException) {
                                InvocationException invocationException = (InvocationException)exception.getStatus().getException();
                                ObjectReference exObject = invocationException.exception();
                                IJavaObject modelObject = (IJavaObject)((Object)JDIValue.createValue((JDIDebugTarget)EvalRunnable.access$1(this.this$1).getDebugTarget(), (Value)exObject));
                                try {
                                    modelObject.sendMessage("printStackTrace", "()V", null, jt, false);
                                }
                                catch (DebugException debugException) {}
                            }
                            DebugPlugin.getDefault().removeDebugEventFilter((IDebugEventFilter)filter);
                        }
                    }
                    finally {
                        DebugPlugin.getDefault().removeDebugEventFilter((IDebugEventFilter)filter);
                    }
                }

                public void terminate() {
                    this.fTerminated = true;
                    this.val$interpreter.stop();
                }

                public boolean canTerminate() {
                    return true;
                }

                public boolean isTerminated() {
                    return false;
                }

                public CoreException getException() {
                    return this.fException;
                }
            }
            EvaluationRunnable er = new EvaluationRunnable(this, interpreter);
            Throwable exception = null;
            long start = System.currentTimeMillis();
            try {
                this.fThread.runEvaluation(er, null, this.fEvaluationDetail, this.fHitBreakpoints);
            }
            catch (DebugException e) {
                exception = e;
            }
            long end = System.currentTimeMillis();
            IJavaValue value = interpreter.getResult();
            if (exception == null) {
                exception = er.getException();
            }
            result.setTerminated(er.fTerminated);
            if (exception != null) {
                if (JDIDebugOptions.DEBUG_AST_EVAL) {
                    buf = new StringBuffer();
                    buf.append("\tException: ");
                    buf.append(exception.toString());
                    System.out.println(buf.toString());
                }
                if (exception instanceof DebugException) {
                    result.setException((DebugException)exception);
                } else {
                    result.setException(new DebugException(exception.getStatus()));
                }
            } else if (value != null) {
                result.setValue(value);
                if (JDIDebugOptions.DEBUG_AST_EVAL) {
                    buf = new StringBuffer();
                    buf.append("\tResult: ");
                    buf.append(value);
                    System.out.println(buf.toString());
                }
            } else {
                result.addError(EvaluationEngineMessages.ASTEvaluationEngine_An_unknown_error_occurred_during_evaluation);
            }
            if (JDIDebugOptions.DEBUG_AST_EVAL) {
                buf = new StringBuffer();
                buf.append("\tDuration: ");
                buf.append(end - start);
                buf.append("ms");
                System.out.println(buf.toString());
            }
            this.evaluationFinished(result);
        }

        private void evaluationFinished(IEvaluationResult result) {
            if (JDIDebugPlugin.getDefault() != null) {
                this.fListener.evaluationComplete(result);
            }
        }

        static /* synthetic */ int access$0(EvalRunnable evalRunnable) {
            return evalRunnable.fEvaluationDetail;
        }

        static /* synthetic */ ASTEvaluationEngine access$1(EvalRunnable evalRunnable) {
            return evalRunnable.ASTEvaluationEngine.this;
        }
    }

    class EventFilter
    implements IDebugEventFilter {
        EventFilter() {
        }

        public DebugEvent[] filterDebugEvents(DebugEvent[] events) {
            DebugEvent event;
            if (events.length == 1 && (event = events[0]).getSource() instanceof IJavaVariable && event.getKind() == 16 && ((IJavaVariable)event.getSource()).getDebugTarget().equals(ASTEvaluationEngine.this.getDebugTarget())) {
                return null;
            }
            return events;
        }
    }
}

