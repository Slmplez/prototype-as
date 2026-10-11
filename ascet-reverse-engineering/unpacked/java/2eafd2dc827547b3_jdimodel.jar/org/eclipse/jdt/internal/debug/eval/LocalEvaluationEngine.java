/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.InvocationException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Value
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IVariable
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.eval.ICodeSnippetRequestor
 *  org.eclipse.jdt.core.eval.IEvaluationContext
 */
package org.eclipse.jdt.internal.debug.eval;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.InvocationException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.core.eval.IEvaluationContext;
import org.eclipse.jdt.debug.core.IEvaluationRunnable;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.debug.eval.IClassFileEvaluationEngine;
import org.eclipse.jdt.debug.eval.IEvaluationListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.JavaDebugUtils;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;
import org.eclipse.jdt.internal.debug.eval.EvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.EvaluationResult;

public class LocalEvaluationEngine
implements IClassFileEvaluationEngine,
ICodeSnippetRequestor,
IEvaluationRunnable {
    private static final String CODE_SNIPPET_NAME = "CodeSnippet.class";
    private static int ENGINE_COUNT = 0;
    private IJavaProject fJavaProject;
    private IJavaDebugTarget fDebugTarget;
    private File fOutputDirectory;
    private IEvaluationListener fListener;
    private IJavaStackFrame fStackFrame;
    private EvaluationResult fResult;
    private List fSnippetFiles;
    private List fDirectories;
    private IEvaluationContext fEvaluationContext;
    private int[] fLocalVariableModifiers;
    private String[] fLocalVariableNames;
    private String[] fLocalVariableTypeNames;
    private IJavaObject fThis;
    private boolean fDisposed = false;
    private int fEvaluationCount = 0;
    private String fCodeSnippetClassName = null;
    private boolean fHitBreakpoints = false;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final int[] EMPTY_INT_ARRAY = new int[0];

    public LocalEvaluationEngine(IJavaProject project, IJavaDebugTarget vm, File directory) {
        this.setJavaProject(project);
        this.setDebugTarget(vm);
        this.setOutputDirectory(directory);
        ++ENGINE_COUNT;
    }

    public boolean acceptClassFiles(byte[][] classFileBytes, String[][] classFileCompoundNames, String codeSnippetClassName) {
        try {
            this.deploy(classFileBytes, classFileCompoundNames);
        }
        catch (DebugException e) {
            this.getResult().setException(e);
            return false;
        }
        if (codeSnippetClassName != null) {
            this.setCodeSnippetClassName(codeSnippetClassName);
            try {
                this.getThread().runEvaluation(this, null, 64, this.getHitBreakpoints());
            }
            catch (DebugException debugException) {}
        }
        return true;
    }

    public void run(IJavaThread thread, IProgressMonitor monitor) {
        block9: {
            IJavaObject codeSnippetInstance = null;
            try {
                codeSnippetInstance = this.newInstance(this.getCodeSnippetClassName());
                this.initializeLocals(codeSnippetInstance);
                codeSnippetInstance.sendMessage("run", "()V", null, this.getThread(), false);
                this.restoreLocals(codeSnippetInstance);
                IVariable[] fields = codeSnippetInstance.getVariables();
                IJavaVariable resultValue = null;
                IJavaVariable resultType = null;
                int i = 0;
                while (i < fields.length) {
                    if (fields[i].getName().equals("resultType")) {
                        resultType = (IJavaVariable)fields[i];
                    }
                    if (fields[i].getName().equals("resultValue")) {
                        resultValue = (IJavaVariable)fields[i];
                    }
                    ++i;
                }
                IJavaValue result = this.convertResult((IJavaClassObject)resultType.getValue(), (IJavaValue)resultValue.getValue());
                this.getResult().setValue(result);
            }
            catch (DebugException e) {
                ObjectReference theException;
                this.getResult().setException(e);
                Throwable underlyingException = e.getStatus().getException();
                if (!(underlyingException instanceof InvocationException) || (theException = ((InvocationException)underlyingException).exception()) == null) break block9;
                try {
                    try {
                        IJavaObject v = (IJavaObject)((Object)JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), (Value)theException));
                        v.sendMessage("printStackTrace", "()V", null, this.getThread(), false);
                    }
                    catch (DebugException de) {
                        JDIDebugPlugin.log(de);
                    }
                }
                catch (RuntimeException re) {
                    JDIDebugPlugin.log(re);
                }
            }
        }
    }

    protected void initializeLocals(IJavaObject object) throws DebugException {
        IJavaVariable[] locals = null;
        IJavaObject thisObject = this.getThis();
        if (this.getStackFrame() != null) {
            locals = this.getStackFrame().getLocalVariables();
        }
        if (locals != null) {
            int i = 0;
            while (i < locals.length) {
                IJavaVariable local = locals[i];
                IJavaFieldVariable field = object.getField(String.valueOf(LOCAL_VAR_PREFIX) + local.getName(), false);
                if (field == null) {
                    throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___unable_to_initialize_local_variables__4, null));
                }
                field.setValue(local.getValue());
                ++i;
            }
        }
        if (thisObject != null) {
            IJavaFieldVariable field = object.getField(DELEGATE_THIS, false);
            if (field == null) {
                throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___unable_to_initialize___this___context__5, null));
            }
            field.setValue(thisObject);
        }
    }

    protected void restoreLocals(IJavaObject object) throws DebugException {
        IJavaVariable[] locals = null;
        if (this.getStackFrame() != null) {
            locals = this.getStackFrame().getLocalVariables();
        }
        if (locals != null) {
            int i = 0;
            while (i < locals.length) {
                IJavaVariable local = locals[i];
                IJavaFieldVariable field = object.getField(String.valueOf(LOCAL_VAR_PREFIX) + local.getName(), false);
                if (field == null) {
                    throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___unable_to_initialize_local_variables__6, null));
                }
                local.setValue(field.getValue());
                ++i;
            }
        }
    }

    public void acceptProblem(IMarker problemMarker, String fragmentSource, int fragmentKind) {
        if (problemMarker.getAttribute("severity", -1) != 2) {
            return;
        }
        this.getResult().addError(problemMarker.getAttribute("message", ""));
    }

    public IJavaDebugTarget getDebugTarget() {
        return this.fDebugTarget;
    }

    private void setDebugTarget(IJavaDebugTarget debugTarget) {
        this.fDebugTarget = debugTarget;
    }

    public IJavaProject getJavaProject() {
        return this.fJavaProject;
    }

    private void setJavaProject(IJavaProject javaProject) {
        this.fJavaProject = javaProject;
    }

    public File getOutputDirectory() {
        return this.fOutputDirectory;
    }

    private void setOutputDirectory(File outputDirectory) {
        this.fOutputDirectory = outputDirectory;
    }

    public void evaluate(String snippet, IJavaThread thread, IEvaluationListener listener, boolean hitBreakpoints) throws DebugException {
        this.checkDisposed();
        this.checkEvaluating();
        try {
            this.evaluationStarted();
            this.setListener(listener);
            this.setHitBreakpoints(hitBreakpoints);
            this.setResult(new EvaluationResult(this, snippet, thread));
            this.checkThread();
            this.setThis(null);
            this.setLocalVariableNames(EMPTY_STRING_ARRAY);
            this.setLocalVariableTypeNames(EMPTY_STRING_ARRAY);
            this.setLocalVariableModifiers(EMPTY_INT_ARRAY);
            Runnable r = new Runnable(){

                public void run() {
                    try {
                        try {
                            LocalEvaluationEngine.this.getEvaluationContext().evaluateCodeSnippet(LocalEvaluationEngine.this.getSnippet(), (ICodeSnippetRequestor)LocalEvaluationEngine.this, null);
                        }
                        catch (JavaModelException e) {
                            LocalEvaluationEngine.this.getResult().setException(new DebugException(e.getStatus()));
                            LocalEvaluationEngine.this.evaluationComplete();
                        }
                    }
                    finally {
                        LocalEvaluationEngine.this.evaluationComplete();
                    }
                }
            };
            Thread t = new Thread(r);
            t.setDaemon(true);
            t.start();
        }
        catch (DebugException d) {
            this.evaluationAborted();
            throw d;
        }
    }

    public void evaluate(String snippet, IJavaStackFrame frame, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.checkDisposed();
        this.checkEvaluating();
        try {
            this.evaluationStarted();
            this.setListener(listener);
            this.setStackFrame(frame);
            this.setHitBreakpoints(hitBreakpoints);
            this.setResult(new EvaluationResult(this, snippet, (IJavaThread)frame.getThread()));
            this.checkThread();
            IJavaVariable[] locals = frame.getLocalVariables();
            ArrayList<String> typeNames = new ArrayList<String>(locals.length);
            ArrayList<String> varNames = new ArrayList<String>(locals.length);
            int i = 0;
            while (i < locals.length) {
                IJavaVariable var = locals[i];
                String typeName = this.getTranslatedTypeName(var.getReferenceTypeName());
                if (typeName != null) {
                    typeNames.add(typeName);
                    varNames.add(var.getName());
                }
                ++i;
            }
            this.setLocalVariableTypeNames(typeNames.toArray(new String[typeNames.size()]));
            this.setLocalVariableNames(varNames.toArray(new String[varNames.size()]));
            int[] modifiers = new int[typeNames.size()];
            Arrays.fill(modifiers, 0);
            this.setLocalVariableModifiers(modifiers);
            this.setThis(frame.getThis());
            final boolean isStatic = frame.isStatic();
            final boolean isConstructor = frame.isConstructor();
            final IType receivingType = JavaDebugUtils.resolveDeclaringType(frame);
            this.validateReceivingType(receivingType);
            Runnable r = new Runnable(){

                public void run() {
                    try {
                        try {
                            LocalEvaluationEngine.this.getEvaluationContext().evaluateCodeSnippet(LocalEvaluationEngine.this.getSnippet(), LocalEvaluationEngine.this.getLocalVariableTypeNames(), LocalEvaluationEngine.this.getLocalVariableNames(), LocalEvaluationEngine.this.getLocalVariableModifiers(), receivingType, isStatic, isConstructor, (ICodeSnippetRequestor)LocalEvaluationEngine.this, null);
                        }
                        catch (JavaModelException e) {
                            LocalEvaluationEngine.this.getResult().setException(new DebugException(e.getStatus()));
                            LocalEvaluationEngine.this.evaluationComplete();
                        }
                    }
                    finally {
                        LocalEvaluationEngine.this.evaluationComplete();
                    }
                }
            };
            Thread t = new Thread(r);
            t.setDaemon(true);
            t.start();
        }
        catch (DebugException d) {
            this.evaluationAborted();
            throw d;
        }
        catch (CoreException e) {
            this.evaluationAborted();
            throw new DebugException(e.getStatus());
        }
    }

    private void validateReceivingType(IType receivingType) throws DebugException {
        if (receivingType == null) {
            throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___unable_to_determine_receiving_type_context__18, null));
        }
        if (receivingType.getDeclaringType() != null) {
            throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_in_context_of_inner_type_not_supported__19, null));
        }
    }

    public void evaluate(String snippet, IJavaObject thisContext, IJavaThread thread, IEvaluationListener listener, int evaluationDetail, boolean hitBreakpoints) throws DebugException {
        this.checkDisposed();
        this.checkEvaluating();
        try {
            this.evaluationStarted();
            this.setListener(listener);
            this.setHitBreakpoints(hitBreakpoints);
            this.setResult(new EvaluationResult(this, snippet, thread));
            this.checkThread();
            this.setLocalVariableTypeNames(new String[0]);
            this.setLocalVariableNames(new String[0]);
            this.setLocalVariableModifiers(new int[0]);
            this.setThis(thisContext);
            final IType receivingType = JavaDebugUtils.resolveType(thisContext.getJavaType());
            this.validateReceivingType(receivingType);
            Runnable r = new Runnable(){

                public void run() {
                    try {
                        try {
                            LocalEvaluationEngine.this.getEvaluationContext().evaluateCodeSnippet(LocalEvaluationEngine.this.getSnippet(), LocalEvaluationEngine.this.getLocalVariableTypeNames(), LocalEvaluationEngine.this.getLocalVariableNames(), LocalEvaluationEngine.this.getLocalVariableModifiers(), receivingType, false, false, (ICodeSnippetRequestor)LocalEvaluationEngine.this, null);
                        }
                        catch (JavaModelException e) {
                            LocalEvaluationEngine.this.getResult().setException(new DebugException(e.getStatus()));
                            LocalEvaluationEngine.this.evaluationComplete();
                        }
                    }
                    finally {
                        LocalEvaluationEngine.this.evaluationComplete();
                    }
                }
            };
            Thread t = new Thread(r);
            t.setDaemon(true);
            t.start();
        }
        catch (DebugException d) {
            this.evaluationAborted();
            throw d;
        }
        catch (CoreException e) {
            this.evaluationAborted();
            throw new DebugException(e.getStatus());
        }
    }

    protected void checkDisposed() throws DebugException {
        if (this.isDisposed()) {
            throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___evaluation_context_has_been_disposed__7, null));
        }
    }

    protected void checkEvaluating() throws DebugException {
        if (this.isEvaluating()) {
            throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, "Cannot perform nested evaluations.", null));
        }
    }

    protected void checkThread() throws DebugException {
        if (!this.getThread().isSuspended()) {
            throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___evaluation_thread_must_be_suspended__8, null));
        }
    }

    public void dispose() {
        this.fDisposed = true;
        --ENGINE_COUNT;
        if (this.isEvaluating()) {
            return;
        }
        List snippetFiles = this.getSnippetFiles();
        Iterator iter = snippetFiles.iterator();
        while (iter.hasNext()) {
            File file = (File)iter.next();
            if (!file.exists() || CODE_SNIPPET_NAME.equals(file.getName()) && ENGINE_COUNT > 0 || file.delete()) continue;
            JDIDebugPlugin.log((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, MessageFormat.format((String)"Unable to delete temporary evaluation class file {0}.", (Object[])new String[]{file.getAbsolutePath()}), null));
        }
        List directories = this.getDirectories();
        int i = directories.size() - 1;
        while (i >= 0) {
            File dir = (File)directories.get(i);
            String[] listing = dir.list();
            if (dir.exists() && listing != null && listing.length == 0 && !dir.delete()) {
                JDIDebugPlugin.log((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, MessageFormat.format((String)"Unable to delete temporary evaluation directory {0}.", (Object[])new String[]{dir.getAbsolutePath()}), null));
            }
            --i;
        }
        this.reset();
        this.setJavaProject(null);
        this.setDebugTarget(null);
        this.setOutputDirectory(null);
        this.setResult(null);
        this.setEvaluationContext(null);
    }

    private void reset() {
        this.setThis(null);
        this.setStackFrame(null);
        this.setListener(null);
    }

    protected IEvaluationListener getListener() {
        return this.fListener;
    }

    private void setListener(IEvaluationListener listener) {
        this.fListener = listener;
    }

    protected IJavaStackFrame getStackFrame() {
        return this.fStackFrame;
    }

    private void setStackFrame(IJavaStackFrame stackFrame) {
        this.fStackFrame = stackFrame;
    }

    protected IJavaThread getThread() {
        return this.getResult().getThread();
    }

    protected String getSnippet() {
        return this.getResult().getSnippet();
    }

    protected EvaluationResult getResult() {
        return this.fResult;
    }

    private void setResult(EvaluationResult result) {
        this.fResult = result;
    }

    protected void deploy(byte[][] classFiles, String[][] classFileNames) throws DebugException {
        int i = 0;
        while (i < classFiles.length) {
            String[] compoundName = classFileNames[i];
            File dir = this.getOutputDirectory();
            try {
                String pkgDirName = dir.getCanonicalPath();
                int j = 0;
                while (j < compoundName.length - 1) {
                    File pkgDir = new File(pkgDirName = String.valueOf(pkgDirName) + File.separator + compoundName[j]);
                    if (!pkgDir.exists()) {
                        pkgDir.mkdir();
                        this.addDirectory(pkgDir);
                    }
                    ++j;
                }
                String name = String.valueOf(compoundName[compoundName.length - 1]) + ".class";
                File classFile = new File(String.valueOf(pkgDirName) + File.separator + name);
                if (!classFile.exists()) {
                    classFile.createNewFile();
                }
                FileOutputStream stream = new FileOutputStream(classFile);
                stream.write(classFiles[i]);
                stream.close();
                this.addSnippetFile(classFile);
            }
            catch (IOException e) {
                throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, MessageFormat.format((String)EvaluationMessages.LocalEvaluationEngine__0__occurred_deploying_class_file_for_evaluation_9, (Object[])new String[]{e.toString()}), (Throwable)e));
            }
            ++i;
        }
    }

    private void addSnippetFile(File file) {
        if (this.fSnippetFiles == null) {
            this.fSnippetFiles = new ArrayList();
        }
        this.fSnippetFiles.add(file);
    }

    private void addDirectory(File file) {
        if (this.fDirectories == null) {
            this.fDirectories = new ArrayList();
        }
        this.fDirectories.add(file);
    }

    protected IEvaluationContext getEvaluationContext() {
        if (this.fEvaluationContext == null) {
            this.fEvaluationContext = this.getJavaProject().newEvaluationContext();
        }
        return this.fEvaluationContext;
    }

    private void setEvaluationContext(IEvaluationContext context) {
        this.fEvaluationContext = context;
    }

    protected List getSnippetFiles() {
        if (this.fSnippetFiles == null) {
            return Collections.EMPTY_LIST;
        }
        return this.fSnippetFiles;
    }

    protected List getDirectories() {
        if (this.fDirectories == null) {
            return Collections.EMPTY_LIST;
        }
        return this.fDirectories;
    }

    protected boolean isDisposed() {
        return this.fDisposed;
    }

    protected void evaluationComplete() {
        if (JDIDebugPlugin.getDefault() != null) {
            this.getListener().evaluationComplete(this.getResult());
        }
        this.evaluationEnded();
        this.reset();
        if (this.isDisposed()) {
            this.dispose();
        }
    }

    private void evaluationStarted() {
        ++this.fEvaluationCount;
    }

    private void evaluationEnded() {
        if (this.fEvaluationCount > 0) {
            --this.fEvaluationCount;
        }
    }

    protected boolean isEvaluating() {
        return this.fEvaluationCount > 0;
    }

    private void evaluationAborted() {
        this.evaluationEnded();
        if (this.isDisposed()) {
            this.dispose();
        }
    }

    protected IJavaObject newInstance(String className) throws DebugException {
        IJavaObject object = null;
        IJavaClassType clazz = null;
        IJavaType[] types = this.getDebugTarget().getJavaTypes(className);
        if (types != null && types.length > 0) {
            clazz = (IJavaClassType)types[0];
        }
        if (clazz == null) {
            types = this.getDebugTarget().getJavaTypes("java.lang.Class");
            IJavaClassType classClass = null;
            if (types != null && types.length > 0) {
                classClass = (IJavaClassType)types[0];
            }
            if (classClass == null) {
                throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___unable_to_instantiate_code_snippet_class__11, null));
            }
            IJavaValue[] args = new IJavaValue[]{this.getDebugTarget().newValue(className)};
            IJavaObject classObject = (IJavaObject)classClass.sendMessage("forName", "(Ljava/lang/String;)Ljava/lang/Class;", args, this.getThread());
            object = (IJavaObject)classObject.sendMessage("newInstance", "()Ljava/lang/Object;", null, this.getThread(), false);
        } else {
            object = clazz.newInstance("<init>", null, this.getThread());
        }
        return object;
    }

    protected IJavaValue convertResult(IJavaClassObject resultType, IJavaValue result) throws DebugException {
        if (resultType == null) {
            return null;
        }
        String sig = resultType.getInstanceType().getSignature();
        if (sig.equals("V") || sig.equals("Lvoid;")) {
            return this.getDebugTarget().voidValue();
        }
        if (result.getJavaType() == null) {
            return result;
        }
        if (sig.length() == 1) {
            IVariable[] vars = result.getVariables();
            IJavaVariable var = null;
            int i = 0;
            while (i < vars.length) {
                IJavaVariable jv = (IJavaVariable)vars[i];
                if (!jv.isStatic() && jv.getSignature().equals(sig)) {
                    var = jv;
                    break;
                }
                ++i;
            }
            if (var != null) {
                return (IJavaValue)var.getValue();
            }
        } else {
            return result;
        }
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5012, EvaluationMessages.LocalEvaluationEngine_Evaluation_failed___internal_error_retreiving_result__17, null));
    }

    private int[] getLocalVariableModifiers() {
        return this.fLocalVariableModifiers;
    }

    private void setLocalVariableModifiers(int[] localVariableModifiers) {
        this.fLocalVariableModifiers = localVariableModifiers;
    }

    private String[] getLocalVariableNames() {
        return this.fLocalVariableNames;
    }

    private void setLocalVariableNames(String[] localVariableNames) {
        this.fLocalVariableNames = localVariableNames;
    }

    private String[] getLocalVariableTypeNames() {
        return this.fLocalVariableTypeNames;
    }

    private void setLocalVariableTypeNames(String[] localVariableTypeNames) {
        this.fLocalVariableTypeNames = localVariableTypeNames;
    }

    private void setThis(IJavaObject thisObject) {
        this.fThis = thisObject;
    }

    private IJavaObject getThis() {
        return this.fThis;
    }

    protected String getTranslatedTypeName(String typeName) {
        int index = typeName.lastIndexOf(36);
        if (index == -1) {
            return typeName;
        }
        if (index + 1 > typeName.length()) {
            return typeName;
        }
        String last = typeName.substring(index + 1);
        try {
            Integer.parseInt(last);
            return null;
        }
        catch (NumberFormatException numberFormatException) {
            return typeName.replace('$', '.');
        }
    }

    protected String[] getNestedTypeNames(String typeName) {
        int index = typeName.lastIndexOf(46);
        if (index >= 0) {
            typeName = typeName.substring(index + 1);
        }
        index = typeName.indexOf(36);
        ArrayList<String> list = new ArrayList<String>(1);
        while (index >= 0) {
            list.add(typeName.substring(0, index));
            typeName = typeName.substring(index + 1);
            index = typeName.indexOf(36);
        }
        list.add(typeName);
        return list.toArray(new String[list.size()]);
    }

    public String[] getImports() {
        return this.getEvaluationContext().getImports();
    }

    public void setImports(String[] imports) {
        this.getEvaluationContext().setImports(imports);
    }

    private void setCodeSnippetClassName(String name) {
        this.fCodeSnippetClassName = name;
    }

    protected String getCodeSnippetClassName() {
        return this.fCodeSnippetClassName;
    }

    public boolean isRequestingClassFiles() {
        return true;
    }

    protected boolean getHitBreakpoints() {
        return this.fHitBreakpoints;
    }

    private void setHitBreakpoints(boolean hit) {
        this.fHitBreakpoints = hit;
    }
}

