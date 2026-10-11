/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.eval;

import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.core.eval.IEvaluationContext;
import org.eclipse.jdt.core.eval.IGlobalVariable;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SelectionRequestor;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.builder.NameEnvironment;
import org.eclipse.jdt.internal.core.builder.ProblemFactory;
import org.eclipse.jdt.internal.core.eval.GlobalVariableWrapper;
import org.eclipse.jdt.internal.core.eval.RequestorWrapper;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.GlobalVariable;
import org.eclipse.jdt.internal.eval.IRequestor;
import org.eclipse.jdt.internal.eval.InstallException;

public class EvaluationContextWrapper
implements IEvaluationContext {
    protected EvaluationContext context;
    protected JavaProject project;

    public EvaluationContextWrapper(EvaluationContext context, JavaProject project) {
        this.context = context;
        this.project = project;
    }

    public IGlobalVariable[] allVariables() {
        GlobalVariable[] vars = this.context.allVariables();
        int length = vars.length;
        IGlobalVariable[] result = new GlobalVariableWrapper[length];
        int i = 0;
        while (i < length) {
            result[i] = new GlobalVariableWrapper(vars[i]);
            ++i;
        }
        return result;
    }

    protected void checkBuilderState() {
    }

    public void codeComplete(String codeSnippet, int position, ICompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(codeSnippet, position, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(String codeSnippet, int position, ICompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        this.codeComplete(codeSnippet, position, (CompletionRequestor)new CompletionRequestorWrapper(requestor), owner);
    }

    public void codeComplete(String codeSnippet, int position, CompletionRequestor requestor) throws JavaModelException {
        this.codeComplete(codeSnippet, position, requestor, (WorkingCopyOwner)DefaultWorkingCopyOwner.PRIMARY);
    }

    public void codeComplete(String codeSnippet, int position, CompletionRequestor requestor, IProgressMonitor monitor) throws JavaModelException {
        this.codeComplete(codeSnippet, position, requestor, DefaultWorkingCopyOwner.PRIMARY, null);
    }

    public void codeComplete(String codeSnippet, int position, CompletionRequestor requestor, WorkingCopyOwner owner) throws JavaModelException {
        this.codeComplete(codeSnippet, position, requestor, owner, null);
    }

    public void codeComplete(String codeSnippet, int position, CompletionRequestor requestor, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        SearchableEnvironment environment = this.project.newSearchableNameEnvironment(owner);
        this.context.complete(codeSnippet.toCharArray(), position, environment, requestor, this.project.getOptions(true), this.project, owner, monitor);
    }

    public IJavaElement[] codeSelect(String codeSnippet, int offset, int length) throws JavaModelException {
        return this.codeSelect(codeSnippet, offset, length, DefaultWorkingCopyOwner.PRIMARY);
    }

    public IJavaElement[] codeSelect(String codeSnippet, int offset, int length, WorkingCopyOwner owner) throws JavaModelException {
        SearchableEnvironment environment = this.project.newSearchableNameEnvironment(owner);
        SelectionRequestor requestor = new SelectionRequestor(environment.nameLookup, null);
        this.context.select(codeSnippet.toCharArray(), offset, offset + length - 1, environment, requestor, this.project.getOptions(true), owner);
        return requestor.getElements();
    }

    public void deleteVariable(IGlobalVariable variable) {
        if (!(variable instanceof GlobalVariableWrapper)) {
            throw new Error("Unknown implementation of IGlobalVariable");
        }
        GlobalVariableWrapper wrapper = (GlobalVariableWrapper)variable;
        this.context.deleteVariable(wrapper.variable);
    }

    public void evaluateCodeSnippet(String codeSnippet, String[] localVariableTypeNames, String[] localVariableNames, int[] localVariableModifiers, IType declaringType, boolean isStatic, boolean isConstructorCall, ICodeSnippetRequestor requestor, IProgressMonitor progressMonitor) throws JavaModelException {
        this.checkBuilderState();
        int length = localVariableTypeNames.length;
        char[][] varTypeNames = new char[length][];
        int i = 0;
        while (i < length) {
            varTypeNames[i] = localVariableTypeNames[i].toCharArray();
            ++i;
        }
        length = localVariableNames.length;
        char[][] varNames = new char[length][];
        int i2 = 0;
        while (i2 < length) {
            varNames[i2] = localVariableNames[i2].toCharArray();
            ++i2;
        }
        Map options = this.project.getOptions(true);
        if (declaringType != null) {
            this.context.setPackageName(declaringType.getPackageFragment().getElementName().toCharArray());
            ICompilationUnit compilationUnit = declaringType.getCompilationUnit();
            if (compilationUnit != null) {
                IImportDeclaration[] imports = compilationUnit.getImports();
                int importsLength = imports.length;
                if (importsLength != 0) {
                    char[][] importsNames = new char[importsLength][];
                    int i3 = 0;
                    while (i3 < importsLength) {
                        importsNames[i3] = imports[i3].getElementName().toCharArray();
                        ++i3;
                    }
                    this.context.setImports(importsNames);
                    options.put("org.eclipse.jdt.core.compiler.problem.unusedImport", "ignore");
                }
            } else {
                char[][] imports;
                SourceMapper sourceMapper = ((ClassFile)declaringType.getClassFile()).getSourceMapper();
                if (sourceMapper != null && (imports = sourceMapper.getImports((BinaryType)declaringType)) != null) {
                    this.context.setImports(imports);
                    options.put("org.eclipse.jdt.core.compiler.problem.unusedImport", "ignore");
                }
            }
        }
        INameEnvironment environment = null;
        try {
            try {
                environment = this.getBuildNameEnvironment();
                this.context.evaluate(codeSnippet.toCharArray(), varTypeNames, varNames, localVariableModifiers, declaringType == null ? null : declaringType.getFullyQualifiedName().toCharArray(), isStatic, isConstructorCall, environment, options, this.getInfrastructureEvaluationRequestor(requestor), this.getProblemFactory());
            }
            catch (InstallException e) {
                this.handleInstallException(e);
                if (environment != null) {
                    environment.cleanup();
                }
            }
        }
        finally {
            if (environment != null) {
                environment.cleanup();
            }
        }
    }

    public void evaluateCodeSnippet(String codeSnippet, ICodeSnippetRequestor requestor, IProgressMonitor progressMonitor) throws JavaModelException {
        this.checkBuilderState();
        INameEnvironment environment = null;
        try {
            try {
                environment = this.getBuildNameEnvironment();
                this.context.evaluate(codeSnippet.toCharArray(), environment, this.project.getOptions(true), this.getInfrastructureEvaluationRequestor(requestor), this.getProblemFactory());
            }
            catch (InstallException e) {
                this.handleInstallException(e);
                if (environment != null) {
                    environment.cleanup();
                }
            }
        }
        finally {
            if (environment != null) {
                environment.cleanup();
            }
        }
    }

    public void evaluateVariable(IGlobalVariable variable, ICodeSnippetRequestor requestor, IProgressMonitor progressMonitor) throws JavaModelException {
        this.checkBuilderState();
        INameEnvironment environment = null;
        try {
            try {
                environment = this.getBuildNameEnvironment();
                this.context.evaluateVariable(((GlobalVariableWrapper)variable).variable, environment, this.project.getOptions(true), this.getInfrastructureEvaluationRequestor(requestor), this.getProblemFactory());
            }
            catch (InstallException e) {
                this.handleInstallException(e);
                if (environment != null) {
                    environment.cleanup();
                }
            }
        }
        finally {
            if (environment != null) {
                environment.cleanup();
            }
        }
    }

    protected INameEnvironment getBuildNameEnvironment() {
        return new NameEnvironment(this.getProject());
    }

    public char[] getVarClassName() {
        return this.context.getVarClassName();
    }

    public String[] getImports() {
        char[][] imports = this.context.getImports();
        int length = imports.length;
        String[] result = new String[length];
        int i = 0;
        while (i < length) {
            result[i] = new String(imports[i]);
            ++i;
        }
        return result;
    }

    public EvaluationContext getInfrastructureEvaluationContext() {
        return this.context;
    }

    protected IRequestor getInfrastructureEvaluationRequestor(ICodeSnippetRequestor requestor) {
        return new RequestorWrapper(requestor);
    }

    public String getPackageName() {
        return new String(this.context.getPackageName());
    }

    protected IProblemFactory getProblemFactory() {
        return ProblemFactory.getProblemFactory(Locale.getDefault());
    }

    public IJavaProject getProject() {
        return this.project;
    }

    protected void handleInstallException(InstallException e) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(992, e.toString()));
    }

    public IGlobalVariable newVariable(String typeName, String name, String initializer) {
        GlobalVariable newVar = this.context.newVariable(typeName.toCharArray(), name.toCharArray(), initializer == null ? null : initializer.toCharArray());
        return new GlobalVariableWrapper(newVar);
    }

    public void setImports(String[] imports) {
        int length = imports.length;
        char[][] result = new char[length][];
        int i = 0;
        while (i < length) {
            result[i] = imports[i].toCharArray();
            ++i;
        }
        this.context.setImports(result);
    }

    public void setPackageName(String packageName) {
        this.context.setPackageName(packageName.toCharArray());
    }

    public void validateImports(ICodeSnippetRequestor requestor) {
        this.checkBuilderState();
        INameEnvironment environment = null;
        try {
            environment = this.getBuildNameEnvironment();
            this.context.evaluateImports(environment, this.getInfrastructureEvaluationRequestor(requestor), this.getProblemFactory());
        }
        finally {
            if (environment != null) {
                environment.cleanup();
            }
        }
    }

    public void codeComplete(String codeSnippet, int position, final ICodeCompletionRequestor requestor) throws JavaModelException {
        if (requestor == null) {
            this.codeComplete(codeSnippet, position, (ICompletionRequestor)null);
            return;
        }
        this.codeComplete(codeSnippet, position, new ICompletionRequestor(){

            public void acceptAnonymousType(char[] superTypePackageName, char[] superTypeName, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptClass(char[] packageName, char[] className, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptClass(packageName, className, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptError(IProblem error) {
            }

            public void acceptField(char[] declaringTypePackageName, char[] declaringTypeName, char[] name, char[] typePackageName, char[] typeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptField(declaringTypePackageName, declaringTypeName, name, typePackageName, typeName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptInterface(char[] packageName, char[] interfaceName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptInterface(packageName, interfaceName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptKeyword(char[] keywordName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptKeyword(keywordName, completionStart, completionEnd);
            }

            public void acceptLabel(char[] labelName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptLabel(labelName, completionStart, completionEnd);
            }

            public void acceptLocalVariable(char[] name, char[] typePackageName, char[] typeName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptMethod(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] returnTypePackageName, char[] returnTypeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
                requestor.acceptMethod(declaringTypePackageName, declaringTypeName, selector, parameterPackageNames, parameterTypeNames, returnTypePackageName, returnTypeName, completionName, modifiers, completionStart, completionEnd);
            }

            public void acceptMethodDeclaration(char[] declaringTypePackageName, char[] declaringTypeName, char[] selector, char[][] parameterPackageNames, char[][] parameterTypeNames, char[][] parameterNames, char[] returnTypePackageName, char[] returnTypeName, char[] completionName, int modifiers, int completionStart, int completionEnd, int relevance) {
            }

            public void acceptModifier(char[] modifierName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptModifier(modifierName, completionStart, completionEnd);
            }

            public void acceptPackage(char[] packageName, char[] completionName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptPackage(packageName, completionName, completionStart, completionEnd);
            }

            public void acceptType(char[] packageName, char[] typeName, char[] completionName, int completionStart, int completionEnd, int relevance) {
                requestor.acceptType(packageName, typeName, completionName, completionStart, completionEnd);
            }

            public void acceptVariableName(char[] typePackageName, char[] typeName, char[] name, char[] completionName, int completionStart, int completionEnd, int relevance) {
            }
        });
    }
}

