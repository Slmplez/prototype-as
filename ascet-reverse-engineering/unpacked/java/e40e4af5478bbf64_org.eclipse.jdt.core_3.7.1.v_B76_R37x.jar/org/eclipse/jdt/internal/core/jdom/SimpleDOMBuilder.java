/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.core.jdom.AbstractDOMBuilder;
import org.eclipse.jdt.internal.core.jdom.DOMField;
import org.eclipse.jdt.internal.core.jdom.DOMImport;
import org.eclipse.jdt.internal.core.jdom.DOMInitializer;
import org.eclipse.jdt.internal.core.jdom.DOMMember;
import org.eclipse.jdt.internal.core.jdom.DOMMethod;
import org.eclipse.jdt.internal.core.jdom.DOMPackage;
import org.eclipse.jdt.internal.core.jdom.DOMType;

public class SimpleDOMBuilder
extends AbstractDOMBuilder
implements ISourceElementRequestor {
    public void acceptProblem(CategorizedProblem problem) {
    }

    public void acceptImport(int declarationStart, int declarationEnd, int nameStart, int nameEnd, char[][] tokens, boolean onDemand, int modifiers) {
        int[] sourceRange = new int[]{declarationStart, declarationEnd};
        String importName = new String(CharOperation.concatWith(tokens, '.'));
        if (onDemand) {
            importName = String.valueOf(importName) + ".*";
        }
        this.fNode = new DOMImport(this.fDocument, sourceRange, importName, onDemand, modifiers);
        this.addChild(this.fNode);
    }

    public void acceptPackage(ImportReference importReference) {
        int[] sourceRange = new int[]{importReference.declarationSourceStart, importReference.declarationSourceEnd};
        char[] name = CharOperation.concatWith(importReference.getImportName(), '.');
        this.fNode = new DOMPackage(this.fDocument, sourceRange, new String(name));
        this.addChild(this.fNode);
    }

    public IDOMCompilationUnit createCompilationUnit(String sourceCode, String name) {
        return this.createCompilationUnit(sourceCode.toCharArray(), name.toCharArray());
    }

    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit compilationUnit) {
        this.initializeBuild(compilationUnit.getContents(), true, true);
        this.getParser(JavaCore.getOptions()).parseCompilationUnit(compilationUnit, false, null);
        return super.createCompilationUnit(compilationUnit);
    }

    protected void enterAbstractMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        int[] sourceRange = new int[]{methodInfo.declarationStart, -1};
        int[] nameRange = new int[]{methodInfo.nameSourceStart, methodInfo.nameSourceEnd};
        this.fNode = new DOMMethod(this.fDocument, sourceRange, CharOperation.charToString(methodInfo.name), nameRange, methodInfo.modifiers, methodInfo.isConstructor, CharOperation.charToString(methodInfo.returnType), CharOperation.charArrayToStringArray(methodInfo.parameterTypes), CharOperation.charArrayToStringArray(methodInfo.parameterNames), CharOperation.charArrayToStringArray(methodInfo.exceptionTypes));
        this.addChild(this.fNode);
        this.fStack.push(this.fNode);
    }

    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        String nameString = new String(this.fDocument, methodInfo.nameSourceStart, methodInfo.nameSourceEnd - methodInfo.nameSourceStart);
        int openParenPosition = nameString.indexOf(40);
        if (openParenPosition > -1) {
            methodInfo.nameSourceEnd = methodInfo.nameSourceStart + openParenPosition - 1;
        }
        this.enterAbstractMethod(methodInfo);
    }

    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        int[] sourceRange = new int[]{fieldInfo.declarationStart, -1};
        int[] nameRange = new int[]{fieldInfo.nameSourceStart, fieldInfo.nameSourceEnd};
        boolean isSecondary = false;
        if (this.fNode instanceof DOMField) {
            isSecondary = fieldInfo.declarationStart == this.fNode.fSourceRange[0];
        }
        this.fNode = new DOMField(this.fDocument, sourceRange, CharOperation.charToString(fieldInfo.name), nameRange, fieldInfo.modifiers, CharOperation.charToString(fieldInfo.type), isSecondary);
        this.addChild(this.fNode);
        this.fStack.push(this.fNode);
    }

    public void enterInitializer(int declarationSourceStart, int modifiers) {
        int[] sourceRange = new int[]{declarationSourceStart, -1};
        this.fNode = new DOMInitializer(this.fDocument, sourceRange, modifiers);
        this.addChild(this.fNode);
        this.fStack.push(this.fNode);
    }

    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        this.enterAbstractMethod(methodInfo);
    }

    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        if (this.fBuildingType) {
            int[] sourceRange = new int[]{typeInfo.declarationStart, -1};
            int[] nameRange = new int[]{typeInfo.nameSourceStart, typeInfo.nameSourceEnd};
            this.fNode = new DOMType(this.fDocument, sourceRange, new String(typeInfo.name), nameRange, typeInfo.modifiers, CharOperation.charArrayToStringArray(typeInfo.superinterfaces), TypeDeclaration.kind(typeInfo.modifiers) == 1);
            this.addChild(this.fNode);
            this.fStack.push(this.fNode);
        }
    }

    public void exitConstructor(int declarationEnd) {
        this.exitMember(declarationEnd);
    }

    public void exitField(int initializationStart, int declarationEnd, int declarationSourceEnd) {
        this.exitMember(declarationEnd);
    }

    public void exitInitializer(int declarationEnd) {
        this.exitMember(declarationEnd);
    }

    protected void exitMember(int declarationEnd) {
        DOMMember m = (DOMMember)this.fStack.pop();
        m.setSourceRangeEnd(declarationEnd);
        this.fNode = m;
    }

    public void exitMethod(int declarationEnd, Expression defaultValue) {
        this.exitMember(declarationEnd);
    }

    public void exitType(int declarationEnd) {
        this.exitType(declarationEnd, declarationEnd);
    }

    protected SourceElementParser getParser(Map settings) {
        return new SourceElementParser(this, new DefaultProblemFactory(), new CompilerOptions(settings), false, true);
    }
}

