/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class Clinit
extends AbstractMethodDeclaration {
    private static int ENUM_CONSTANTS_THRESHOLD = 2000;
    private FieldBinding assertionSyntheticFieldBinding = null;
    private FieldBinding classLiteralSyntheticField = null;

    public Clinit(CompilationResult compilationResult) {
        super(compilationResult);
        this.modifiers = 0;
        this.selector = TypeConstants.CLINIT;
    }

    public void analyseCode(ClassScope classScope, InitializationFlowContext staticInitializerFlowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            ExceptionHandlingFlowContext clinitContext = new ExceptionHandlingFlowContext(staticInitializerFlowContext.parent, this, Binding.NO_EXCEPTIONS, staticInitializerFlowContext, this.scope, FlowInfo.DEAD_END);
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= 0x40;
            }
            flowInfo = flowInfo.mergedWith(staticInitializerFlowContext.initsOnReturn);
            FieldBinding[] fields = this.scope.enclosingSourceType().fields();
            int i = 0;
            int count = fields.length;
            while (i < count) {
                FieldBinding field = fields[i];
                if (field.isStatic() && field.isFinal() && !flowInfo.isDefinitelyAssigned(fields[i])) {
                    this.scope.problemReporter().uninitializedBlankFinalField(field, this.scope.referenceType().declarationOf(field.original()));
                }
                ++i;
            }
            staticInitializerFlowContext.checkInitializerExceptions(this.scope, clinitContext, flowInfo);
        }
        catch (AbortMethod abortMethod) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        int clinitOffset = 0;
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        boolean restart = false;
        do {
            try {
                clinitOffset = classFile.contentsOffset;
                this.generateCode(classScope, classFile, clinitOffset);
                restart = false;
            }
            catch (AbortMethod e) {
                if (e.compilationResult == CodeStream.RESTART_IN_WIDE_MODE) {
                    if (!restart) {
                        classFile.contentsOffset = clinitOffset;
                        --classFile.methodCount;
                        classFile.codeStream.resetInWideMode();
                        restart = true;
                        continue;
                    }
                    classFile.contentsOffset = clinitOffset;
                    --classFile.methodCount;
                    continue;
                }
                if (e.compilationResult == CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE) {
                    classFile.contentsOffset = clinitOffset;
                    --classFile.methodCount;
                    classFile.codeStream.resetForCodeGenUnusedLocals();
                    restart = true;
                    continue;
                }
                classFile.contentsOffset = clinitOffset;
                --classFile.methodCount;
                restart = false;
            }
        } while (restart);
    }

    private void generateCode(ClassScope classScope, ClassFile classFile, int clinitOffset) {
        BlockScope lastInitializerScope;
        TypeDeclaration declaringType;
        CodeStream codeStream;
        int codeAttributeOffset;
        int constantPoolIndex;
        int constantPoolOffset;
        ConstantPool constantPool;
        block33: {
            FieldDeclaration[] fieldDeclarations;
            MethodScope staticInitializerScope;
            block30: {
                int max;
                int i;
                int enumCount;
                int remainingFieldCount;
                block32: {
                    block31: {
                        constantPool = classFile.constantPool;
                        constantPoolOffset = constantPool.currentOffset;
                        constantPoolIndex = constantPool.currentIndex;
                        classFile.generateMethodInfoHeaderForClinit();
                        codeAttributeOffset = classFile.contentsOffset;
                        classFile.generateCodeAttributeHeader();
                        codeStream = classFile.codeStream;
                        this.resolve(classScope);
                        codeStream.reset(this, classFile);
                        declaringType = classScope.referenceContext;
                        staticInitializerScope = declaringType.staticInitializerScope;
                        staticInitializerScope.computeLocalVariablePositions(0, codeStream);
                        if (this.assertionSyntheticFieldBinding != null) {
                            codeStream.generateClassLiteralAccessForType(classScope.outerMostClassScope().enclosingSourceType(), this.classLiteralSyntheticField);
                            codeStream.invokeJavaLangClassDesiredAssertionStatus();
                            BranchLabel falseLabel = new BranchLabel(codeStream);
                            codeStream.ifne(falseLabel);
                            codeStream.iconst_1();
                            BranchLabel jumpLabel = new BranchLabel(codeStream);
                            codeStream.decrStackSize(1);
                            codeStream.goto_(jumpLabel);
                            falseLabel.place();
                            codeStream.iconst_0();
                            jumpLabel.place();
                            codeStream.fieldAccess((byte)-77, this.assertionSyntheticFieldBinding, null);
                        }
                        fieldDeclarations = declaringType.fields;
                        lastInitializerScope = null;
                        remainingFieldCount = 0;
                        if (TypeDeclaration.kind(declaringType.modifiers) != 3) break block30;
                        enumCount = declaringType.enumConstantsCounter;
                        if (enumCount <= ENUM_CONSTANTS_THRESHOLD) break block31;
                        int begin = -1;
                        int count = 0;
                        if (fieldDeclarations == null) break block32;
                        int max2 = fieldDeclarations.length;
                        int i2 = 0;
                        while (i2 < max2) {
                            FieldDeclaration fieldDecl = fieldDeclarations[i2];
                            if (fieldDecl.isStatic() && fieldDecl.getKind() == 3) {
                                if (begin == -1) {
                                    begin = i2;
                                }
                                if (++count > ENUM_CONSTANTS_THRESHOLD) {
                                    SyntheticMethodBinding syntheticMethod = declaringType.binding.addSyntheticMethodForEnumInitialization(begin, i2);
                                    codeStream.invoke((byte)-72, syntheticMethod, null);
                                    begin = i2;
                                    count = 1;
                                }
                            }
                            ++i2;
                        }
                        if (count == 0) break block32;
                        SyntheticMethodBinding syntheticMethod = declaringType.binding.addSyntheticMethodForEnumInitialization(begin, max2);
                        codeStream.invoke((byte)-72, syntheticMethod, null);
                        break block32;
                    }
                    if (fieldDeclarations != null) {
                        i = 0;
                        max = fieldDeclarations.length;
                        while (i < max) {
                            FieldDeclaration fieldDecl = fieldDeclarations[i];
                            if (fieldDecl.isStatic()) {
                                if (fieldDecl.getKind() == 3) {
                                    fieldDecl.generateCode(staticInitializerScope, codeStream);
                                } else {
                                    ++remainingFieldCount;
                                }
                            }
                            ++i;
                        }
                    }
                }
                codeStream.generateInlinedValue(enumCount);
                codeStream.anewarray(declaringType.binding);
                if (enumCount > 0 && fieldDeclarations != null) {
                    i = 0;
                    max = fieldDeclarations.length;
                    while (i < max) {
                        FieldDeclaration fieldDecl = fieldDeclarations[i];
                        if (fieldDecl.getKind() == 3) {
                            codeStream.dup();
                            codeStream.generateInlinedValue(fieldDecl.binding.id);
                            codeStream.fieldAccess((byte)-78, fieldDecl.binding, null);
                            codeStream.aastore();
                        }
                        ++i;
                    }
                }
                codeStream.fieldAccess((byte)-77, declaringType.enumValuesSyntheticfield, null);
                if (remainingFieldCount != 0) {
                    i = 0;
                    max = fieldDeclarations.length;
                    while (i < max && remainingFieldCount >= 0) {
                        FieldDeclaration fieldDecl = fieldDeclarations[i];
                        switch (fieldDecl.getKind()) {
                            case 3: {
                                break;
                            }
                            case 2: {
                                if (!fieldDecl.isStatic()) break;
                                --remainingFieldCount;
                                lastInitializerScope = ((Initializer)fieldDecl).block.scope;
                                fieldDecl.generateCode(staticInitializerScope, codeStream);
                                break;
                            }
                            case 1: {
                                if (!fieldDecl.binding.isStatic()) break;
                                --remainingFieldCount;
                                lastInitializerScope = null;
                                fieldDecl.generateCode(staticInitializerScope, codeStream);
                            }
                        }
                        ++i;
                    }
                }
                break block33;
            }
            if (fieldDeclarations != null) {
                int i = 0;
                int max = fieldDeclarations.length;
                while (i < max) {
                    FieldDeclaration fieldDecl = fieldDeclarations[i];
                    switch (fieldDecl.getKind()) {
                        case 2: {
                            if (!fieldDecl.isStatic()) break;
                            lastInitializerScope = ((Initializer)fieldDecl).block.scope;
                            fieldDecl.generateCode(staticInitializerScope, codeStream);
                            break;
                        }
                        case 1: {
                            if (!fieldDecl.binding.isStatic()) break;
                            lastInitializerScope = null;
                            fieldDecl.generateCode(staticInitializerScope, codeStream);
                        }
                    }
                    ++i;
                }
            }
        }
        if (codeStream.position == 0) {
            classFile.contentsOffset = clinitOffset;
            --classFile.methodCount;
            constantPool.resetForClinit(constantPoolIndex, constantPoolOffset);
        } else {
            if ((this.bits & 0x40) != 0) {
                int before = codeStream.position;
                codeStream.return_();
                if (lastInitializerScope != null) {
                    codeStream.updateLastRecordedEndPC(lastInitializerScope, before);
                }
            }
            codeStream.recordPositionsFrom(0, declaringType.sourceStart);
            classFile.completeCodeAttributeForClinit(codeAttributeOffset);
        }
    }

    public boolean isClinit() {
        return true;
    }

    public boolean isInitializationMethod() {
        return true;
    }

    public boolean isStatic() {
        return true;
    }

    public void parseStatements(Parser parser, CompilationUnitDeclaration unit) {
    }

    public StringBuffer print(int tab, StringBuffer output) {
        Clinit.printIndent(tab, output).append("<clinit>()");
        this.printBody(tab + 1, output);
        return output;
    }

    public void resolve(ClassScope classScope) {
        this.scope = new MethodScope(classScope, classScope.referenceContext, true);
    }

    public void traverse(ASTVisitor visitor, ClassScope classScope) {
        visitor.visit(this, classScope);
        visitor.endVisit(this, classScope);
    }

    public void setAssertionSupport(FieldBinding assertionSyntheticFieldBinding, boolean needClassLiteralField) {
        SourceTypeBinding sourceType;
        this.assertionSyntheticFieldBinding = assertionSyntheticFieldBinding;
        if (needClassLiteralField && !(sourceType = this.scope.outerMostClassScope().enclosingSourceType()).isInterface() && !sourceType.isBaseType()) {
            this.classLiteralSyntheticField = sourceType.addSyntheticFieldForClassLiteral(sourceType, this.scope);
        }
    }
}

