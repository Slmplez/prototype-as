/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.eval.CodeSnippetClassFile;

public class CodeSnippetTypeDeclaration
extends TypeDeclaration {
    public CodeSnippetTypeDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    public void generateCode(ClassFile enclosingClassFile) {
        if ((this.bits & 0x2000) != 0) {
            return;
        }
        this.bits |= 0x2000;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CodeSnippetClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
            return;
        }
        try {
            CodeSnippetClassFile classFile = new CodeSnippetClassFile(this.binding, enclosingClassFile, false);
            classFile.addFieldInfos();
            if (this.binding.isMemberType()) {
                classFile.recordInnerClasses(this.binding);
            } else if (this.binding.isLocalType()) {
                enclosingClassFile.recordInnerClasses(this.binding);
                classFile.recordInnerClasses(this.binding);
            }
            TypeVariableBinding[] typeVariables = this.binding.typeVariables();
            int i = 0;
            int max = typeVariables.length;
            while (i < max) {
                TypeVariableBinding typeVariableBinding = typeVariables[i];
                if ((typeVariableBinding.tagBits & 0x800L) != 0L) {
                    Util.recordNestedType(classFile, typeVariableBinding);
                }
                ++i;
            }
            if (this.memberTypes != null) {
                i = 0;
                max = this.memberTypes.length;
                while (i < max) {
                    TypeDeclaration memberType = this.memberTypes[i];
                    classFile.recordInnerClasses(memberType.binding);
                    memberType.generateCode(this.scope, classFile);
                    ++i;
                }
            }
            classFile.setForMethodInfos();
            if (this.methods != null) {
                i = 0;
                max = this.methods.length;
                while (i < max) {
                    this.methods[i].generateCode(this.scope, classFile);
                    ++i;
                }
            }
            classFile.addSpecialMethods();
            if (this.ignoreFurtherInvestigation) {
                throw new AbortType(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            classFile.addAttributes();
            this.scope.referenceCompilationUnit().compilationResult.record(this.binding.constantPoolName(), classFile);
        }
        catch (AbortType abortType) {
            if (this.binding == null) {
                return;
            }
            CodeSnippetClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
        }
    }
}

