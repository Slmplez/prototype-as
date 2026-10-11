/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class MethodScope
extends BlockScope {
    public ReferenceContext referenceContext;
    public boolean isStatic;
    public boolean isConstructorCall = false;
    public FieldBinding initializedField;
    public int lastVisibleFieldID = -1;
    public int analysisIndex;
    public boolean isPropagatingInnerClassEmulation;
    public int lastIndex = 0;
    public long[] definiteInits = new long[4];
    public long[][] extraDefiniteInits = new long[4][];
    public boolean insideTypeAnnotation = false;
    public SyntheticArgumentBinding[] extraSyntheticArguments;

    public MethodScope(ClassScope parent, ReferenceContext context, boolean isStatic) {
        super(2, parent);
        this.locals = new LocalVariableBinding[5];
        this.referenceContext = context;
        this.isStatic = isStatic;
        this.startIndex = 0;
    }

    String basicToString(int tab) {
        String newLine = "\n";
        int i = tab;
        while (--i >= 0) {
            newLine = String.valueOf(newLine) + "\t";
        }
        String s = String.valueOf(newLine) + "--- Method Scope ---";
        newLine = String.valueOf(newLine) + "\t";
        s = String.valueOf(s) + newLine + "locals:";
        int i2 = 0;
        while (i2 < this.localIndex) {
            s = String.valueOf(s) + newLine + "\t" + this.locals[i2].toString();
            ++i2;
        }
        s = String.valueOf(s) + newLine + "startIndex = " + this.startIndex;
        s = String.valueOf(s) + newLine + "isConstructorCall = " + this.isConstructorCall;
        s = String.valueOf(s) + newLine + "initializedField = " + this.initializedField;
        s = String.valueOf(s) + newLine + "lastVisibleFieldID = " + this.lastVisibleFieldID;
        s = String.valueOf(s) + newLine + "referenceContext = " + this.referenceContext;
        return s;
    }

    private void checkAndSetModifiersForConstructor(MethodBinding methodBinding) {
        int flags;
        int modifiers = methodBinding.modifiers;
        ReferenceBinding declaringClass = methodBinding.declaringClass;
        if ((modifiers & 0x400000) != 0) {
            this.problemReporter().duplicateModifierForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
        }
        if ((((ConstructorDeclaration)this.referenceContext).bits & 0x80) != 0 && (flags = declaringClass.modifiers & 0x4005) != 0) {
            if ((flags & 0x4000) != 0) {
                modifiers &= 0xFFFFFFF8;
                modifiers |= 2;
            } else {
                modifiers &= 0xFFFFFFF8;
                modifiers |= flags;
            }
        }
        int realModifiers = modifiers & 0xFFFF;
        if (declaringClass.isEnum() && (((ConstructorDeclaration)this.referenceContext).bits & 0x80) == 0) {
            if ((realModifiers & 0xFFFFF7FD) != 0) {
                this.problemReporter().illegalModifierForEnumConstructor((AbstractMethodDeclaration)this.referenceContext);
                modifiers &= 0xFFFF0802;
            } else if ((((AbstractMethodDeclaration)this.referenceContext).modifiers & 0x800) != 0) {
                this.problemReporter().illegalModifierForMethod((AbstractMethodDeclaration)this.referenceContext);
            }
            modifiers |= 2;
        } else if ((realModifiers & 0xFFFFF7F8) != 0) {
            this.problemReporter().illegalModifierForMethod((AbstractMethodDeclaration)this.referenceContext);
            modifiers &= 0xFFFF0807;
        } else if ((((AbstractMethodDeclaration)this.referenceContext).modifiers & 0x800) != 0) {
            this.problemReporter().illegalModifierForMethod((AbstractMethodDeclaration)this.referenceContext);
        }
        int accessorBits = realModifiers & 7;
        if ((accessorBits & accessorBits - 1) != 0) {
            this.problemReporter().illegalVisibilityModifierCombinationForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
            if ((accessorBits & 1) != 0) {
                if ((accessorBits & 4) != 0) {
                    modifiers &= 0xFFFFFFFB;
                }
                if ((accessorBits & 2) != 0) {
                    modifiers &= 0xFFFFFFFD;
                }
            } else if ((accessorBits & 4) != 0 && (accessorBits & 2) != 0) {
                modifiers &= 0xFFFFFFFD;
            }
        }
        methodBinding.modifiers = modifiers;
    }

    private void checkAndSetModifiersForMethod(MethodBinding methodBinding) {
        int accessorBits;
        int modifiers = methodBinding.modifiers;
        ReferenceBinding declaringClass = methodBinding.declaringClass;
        if ((modifiers & 0x400000) != 0) {
            this.problemReporter().duplicateModifierForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
        }
        int realModifiers = modifiers & 0xFFFF;
        if (declaringClass.isInterface()) {
            if ((realModifiers & 0xFFFFFBFE) != 0) {
                if ((declaringClass.modifiers & 0x2000) != 0) {
                    this.problemReporter().illegalModifierForAnnotationMember((AbstractMethodDeclaration)this.referenceContext);
                } else {
                    this.problemReporter().illegalModifierForInterfaceMethod((AbstractMethodDeclaration)this.referenceContext);
                }
            }
            return;
        }
        if ((realModifiers & 0xFFFFF2C0) != 0) {
            this.problemReporter().illegalModifierForMethod((AbstractMethodDeclaration)this.referenceContext);
            modifiers &= 0xFFFF0D3F;
        }
        if (((accessorBits = realModifiers & 7) & accessorBits - 1) != 0) {
            this.problemReporter().illegalVisibilityModifierCombinationForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
            if ((accessorBits & 1) != 0) {
                if ((accessorBits & 4) != 0) {
                    modifiers &= 0xFFFFFFFB;
                }
                if ((accessorBits & 2) != 0) {
                    modifiers &= 0xFFFFFFFD;
                }
            } else if ((accessorBits & 4) != 0 && (accessorBits & 2) != 0) {
                modifiers &= 0xFFFFFFFD;
            }
        }
        if ((modifiers & 0x400) != 0) {
            int incompatibleWithAbstract = 2362;
            if ((modifiers & incompatibleWithAbstract) != 0) {
                this.problemReporter().illegalAbstractModifierCombinationForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
            }
            if (!methodBinding.declaringClass.isAbstract()) {
                this.problemReporter().abstractMethodInAbstractClass((SourceTypeBinding)declaringClass, (AbstractMethodDeclaration)this.referenceContext);
            }
        }
        if ((modifiers & 0x100) != 0 && (modifiers & 0x800) != 0) {
            this.problemReporter().nativeMethodsCannotBeStrictfp(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
        }
        if ((realModifiers & 8) != 0 && declaringClass.isNestedType() && !declaringClass.isStatic()) {
            this.problemReporter().unexpectedStaticModifierForMethod(declaringClass, (AbstractMethodDeclaration)this.referenceContext);
        }
        methodBinding.modifiers = modifiers;
    }

    public void checkUnusedParameters(MethodBinding method) {
        if (method.isAbstract() || method.isImplementing() && !this.compilerOptions().reportUnusedParameterWhenImplementingAbstract || method.isOverriding() && !method.isImplementing() && !this.compilerOptions().reportUnusedParameterWhenOverridingConcrete || method.isMain()) {
            return;
        }
        int i = 0;
        int maxLocals = this.localIndex;
        while (i < maxLocals) {
            LocalVariableBinding local = this.locals[i];
            if (local == null || (local.tagBits & 0x400L) == 0L) break;
            if (local.useFlag == 0 && (local.declaration.bits & 0x40000000) != 0) {
                this.problemReporter().unusedArgument(local.declaration);
            }
            ++i;
        }
    }

    public void computeLocalVariablePositions(int initOffset, CodeStream codeStream) {
        this.offset = initOffset;
        this.maxOffset = initOffset;
        int ilocal = 0;
        int maxLocals = this.localIndex;
        while (ilocal < maxLocals) {
            LocalVariableBinding local = this.locals[ilocal];
            if (local == null || (local.tagBits & 0x400L) == 0L) break;
            codeStream.record(local);
            local.resolvedPosition = this.offset++;
            if (local.type == TypeBinding.LONG || local.type == TypeBinding.DOUBLE) {
                this.offset += 2;
            }
            if (this.offset > 255) {
                this.problemReporter().noMoreAvailableSpaceForArgument(local, local.declaration);
            }
            ++ilocal;
        }
        if (this.extraSyntheticArguments != null) {
            int iarg = 0;
            int maxArguments = this.extraSyntheticArguments.length;
            while (iarg < maxArguments) {
                SyntheticArgumentBinding argument = this.extraSyntheticArguments[iarg];
                argument.resolvedPosition = this.offset++;
                if (argument.type == TypeBinding.LONG || argument.type == TypeBinding.DOUBLE) {
                    this.offset += 2;
                }
                if (this.offset > 255) {
                    this.problemReporter().noMoreAvailableSpaceForArgument(argument, (ASTNode)((Object)this.referenceContext));
                }
                ++iarg;
            }
        }
        this.computeLocalVariablePositions(ilocal, this.offset, codeStream);
    }

    MethodBinding createMethod(AbstractMethodDeclaration method) {
        TypeParameter[] typeParameters;
        int argLength;
        this.referenceContext = method;
        method.scope = this;
        SourceTypeBinding declaringClass = this.referenceType().binding;
        int modifiers = method.modifiers | 0x2000000;
        if (method.isConstructor()) {
            if (method.isDefaultConstructor()) {
                modifiers |= 0x4000000;
            }
            method.binding = new MethodBinding(modifiers, null, null, declaringClass);
            this.checkAndSetModifiersForConstructor(method.binding);
        } else {
            if (declaringClass.isInterface()) {
                modifiers |= 0x401;
            }
            method.binding = new MethodBinding(modifiers, method.selector, null, null, null, declaringClass);
            this.checkAndSetModifiersForMethod(method.binding);
        }
        this.isStatic = method.binding.isStatic();
        Argument[] argTypes = method.arguments;
        int n = argLength = argTypes == null ? 0 : argTypes.length;
        if (argLength > 0 && this.compilerOptions().sourceLevel >= 0x310000L) {
            if (argTypes[--argLength].isVarArgs()) {
                method.binding.modifiers |= 0x80;
            }
            while (--argLength >= 0) {
                if (!argTypes[argLength].isVarArgs()) continue;
                this.problemReporter().illegalVararg(argTypes[argLength], method);
            }
        }
        if ((typeParameters = method.typeParameters()) == null || typeParameters.length == 0) {
            method.binding.typeVariables = Binding.NO_TYPE_VARIABLES;
        } else {
            method.binding.typeVariables = this.createTypeVariables(typeParameters, method.binding);
            method.binding.modifiers |= 0x40000000;
        }
        return method.binding;
    }

    public FieldBinding findField(TypeBinding receiverType, char[] fieldName, InvocationSite invocationSite, boolean needResolve) {
        FieldBinding field = super.findField(receiverType, fieldName, invocationSite, needResolve);
        if (field == null) {
            return null;
        }
        if (!field.isValidBinding()) {
            return field;
        }
        if (field.isStatic()) {
            return field;
        }
        if (!this.isConstructorCall || receiverType != this.enclosingSourceType()) {
            return field;
        }
        if (invocationSite instanceof SingleNameReference) {
            return new ProblemFieldBinding(field, field.declaringClass, fieldName, 6);
        }
        if (invocationSite instanceof QualifiedNameReference) {
            QualifiedNameReference name = (QualifiedNameReference)invocationSite;
            if (name.binding == null) {
                return new ProblemFieldBinding(field, field.declaringClass, fieldName, 6);
            }
        }
        return field;
    }

    public boolean isInsideConstructor() {
        return this.referenceContext instanceof ConstructorDeclaration;
    }

    public boolean isInsideInitializer() {
        return this.referenceContext instanceof TypeDeclaration;
    }

    public boolean isInsideInitializerOrConstructor() {
        return this.referenceContext instanceof TypeDeclaration || this.referenceContext instanceof ConstructorDeclaration;
    }

    public ProblemReporter problemReporter() {
        ProblemReporter problemReporter = this.referenceCompilationUnit().problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    public final int recordInitializationStates(FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return -1;
        }
        UnconditionalFlowInfo unconditionalFlowInfo = flowInfo.unconditionalInitsWithoutSideEffect();
        long[] extraInits = unconditionalFlowInfo.extra == null ? null : unconditionalFlowInfo.extra[0];
        long inits = unconditionalFlowInfo.definiteInits;
        int i = this.lastIndex;
        block0: while (--i >= 0) {
            if (this.definiteInits[i] != inits) continue;
            long[] otherInits = this.extraDefiniteInits[i];
            if (extraInits != null && otherInits != null) {
                if (extraInits.length != otherInits.length) continue;
                int j = 0;
                int max = extraInits.length;
                while (j < max) {
                    if (extraInits[j] != otherInits[j]) continue block0;
                    ++j;
                }
                return i;
            }
            if (extraInits != null || otherInits != null) continue;
            return i;
        }
        if (this.definiteInits.length == this.lastIndex) {
            this.definiteInits = new long[this.lastIndex + 20];
            System.arraycopy(this.definiteInits, 0, this.definiteInits, 0, this.lastIndex);
            long[][] lArrayArray = new long[this.lastIndex + 20][];
            this.extraDefiniteInits = lArrayArray;
            System.arraycopy(this.extraDefiniteInits, 0, lArrayArray, 0, this.lastIndex);
        }
        this.definiteInits[this.lastIndex] = inits;
        if (extraInits != null) {
            this.extraDefiniteInits[this.lastIndex] = new long[extraInits.length];
            System.arraycopy(extraInits, 0, this.extraDefiniteInits[this.lastIndex], 0, extraInits.length);
        }
        return this.lastIndex++;
    }

    public AbstractMethodDeclaration referenceMethod() {
        if (this.referenceContext instanceof AbstractMethodDeclaration) {
            return (AbstractMethodDeclaration)this.referenceContext;
        }
        return null;
    }

    public TypeDeclaration referenceType() {
        return ((ClassScope)this.parent).referenceContext;
    }
}

