/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.eval.EvaluationConstants;

public class CodeSnippetReturnStatement
extends ReturnStatement
implements InvocationSite,
EvaluationConstants {
    MethodBinding setResultMethod;

    public CodeSnippetReturnStatement(Expression expr, int s, int e) {
        super(expr, s, e);
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo info = super.analyseCode(currentScope, flowContext, flowInfo);
        this.expression.bits &= 0xFFFFFFEF;
        return info;
    }

    public void generateReturnBytecode(CodeStream codeStream) {
        codeStream.return_();
    }

    public void generateStoreSaveValueIfNecessary(CodeStream codeStream) {
        codeStream.aload_0();
        if (this.expression == null || this.expression.resolvedType == TypeBinding.VOID) {
            codeStream.aconst_null();
            codeStream.generateClassLiteralAccessForType(TypeBinding.VOID, null);
        } else {
            int valueTypeID = this.expression.resolvedType.id;
            if (valueTypeID == 7 || valueTypeID == 8) {
                codeStream.dup_x2();
                codeStream.pop();
            } else {
                codeStream.swap();
            }
            if (this.expression.resolvedType.isBaseType() && this.expression.resolvedType != TypeBinding.NULL) {
                codeStream.generateBoxingConversion(this.expression.resolvedType.id);
            }
            codeStream.generateClassLiteralAccessForType(this.expression.resolvedType, null);
        }
        codeStream.invoke((byte)-74, this.setResultMethod, null);
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

    public boolean needValue() {
        return true;
    }

    public void prepareSaveValueLocation(TryStatement targetTryStatement) {
    }

    public void resolve(BlockScope scope) {
        if (this.expression != null && this.expression.resolveType(scope) != null) {
            ReferenceBinding javaLangClass = scope.getJavaLangClass();
            if (!javaLangClass.isValidBinding()) {
                scope.problemReporter().codeSnippetMissingClass("java.lang.Class", this.sourceStart, this.sourceEnd);
                return;
            }
            ReferenceBinding javaLangObject = scope.getJavaLangObject();
            if (!javaLangObject.isValidBinding()) {
                scope.problemReporter().codeSnippetMissingClass("java.lang.Object", this.sourceStart, this.sourceEnd);
                return;
            }
            TypeBinding[] argumentTypes = new TypeBinding[]{javaLangObject, javaLangClass};
            this.setResultMethod = scope.getImplicitMethod(SETRESULT_SELECTOR, argumentTypes, this);
            if (!this.setResultMethod.isValidBinding()) {
                scope.problemReporter().codeSnippetMissingMethod(ROOT_FULL_CLASS_NAME, new String(SETRESULT_SELECTOR), new String(SETRESULT_ARGUMENTS), this.sourceStart, this.sourceEnd);
                return;
            }
            if (this.expression.constant != Constant.NotAConstant) {
                this.expression.implicitConversion = this.expression.constant.typeID() << 4;
            }
        }
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
    }

    public void setDepth(int depth) {
    }

    public void setFieldIndex(int depth) {
    }
}

