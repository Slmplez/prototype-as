/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetThisReference
extends ThisReference
implements EvaluationConstants,
InvocationSite {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;
    boolean isImplicit;

    public CodeSnippetThisReference(int s, int sourceEnd, EvaluationContext evaluationContext, boolean isImplicit) {
        super(s, sourceEnd);
        this.evaluationContext = evaluationContext;
        this.isImplicit = isImplicit;
    }

    public boolean checkAccess(MethodScope methodScope) {
        if (this.evaluationContext.isConstructorCall) {
            methodScope.problemReporter().fieldsOrThisBeforeConstructorInvocation(this);
            return false;
        }
        if (this.evaluationContext.declaringTypeName == null || this.evaluationContext.isStatic) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return false;
        }
        return true;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (valueRequired) {
            codeStream.aload_0();
            codeStream.fieldAccess((byte)-76, this.delegateThis, null);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    public boolean isSuperAccess() {
        return false;
    }

    public boolean isTypeAccess() {
        return false;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        char[] declaringType = this.evaluationContext.declaringTypeName;
        output.append('(');
        if (declaringType == null) {
            output.append("<NO DECLARING TYPE>");
        } else {
            output.append(declaringType);
        }
        return output.append(")this");
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        SourceTypeBinding snippetType = null;
        MethodScope methodScope = scope.methodScope();
        if (!this.isImplicit && !this.checkAccess(methodScope)) {
            return null;
        }
        snippetType = scope.enclosingSourceType();
        this.delegateThis = scope.getField(snippetType, DELEGATE_THIS, this);
        if (this.delegateThis == null || !this.delegateThis.isValidBinding()) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return null;
        }
        this.resolvedType = this.delegateThis.type;
        return this.resolvedType;
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
    }

    public void setDepth(int depth) {
    }

    public void setFieldIndex(int index) {
    }
}

