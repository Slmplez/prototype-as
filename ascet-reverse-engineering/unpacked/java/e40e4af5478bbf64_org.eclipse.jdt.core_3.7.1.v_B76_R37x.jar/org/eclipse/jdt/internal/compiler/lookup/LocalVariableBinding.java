/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class LocalVariableBinding
extends VariableBinding {
    public int resolvedPosition;
    public static final int UNUSED = 0;
    public static final int USED = 1;
    public static final int FAKE_USED = 2;
    public int useFlag;
    public BlockScope declaringScope;
    public LocalDeclaration declaration;
    public int[] initializationPCs;
    public int initializationCount = 0;

    public LocalVariableBinding(char[] name, TypeBinding type, int modifiers, boolean isArgument) {
        super(name, type, modifiers, isArgument ? Constant.NotAConstant : null);
        if (isArgument) {
            this.tagBits |= 0x400L;
        }
        this.tagBits |= 0x800L;
    }

    public LocalVariableBinding(LocalDeclaration declaration, TypeBinding type, int modifiers, boolean isArgument) {
        this(declaration.name, type, modifiers, isArgument);
        this.declaration = declaration;
        this.tagBits |= 0x800L;
    }

    public final int kind() {
        return 2;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        StringBuffer buffer = new StringBuffer();
        BlockScope scope = this.declaringScope;
        int occurenceCount = 0;
        if (scope != null) {
            SourceTypeBinding typeBinding;
            MethodScope methodScope = scope instanceof MethodScope ? (MethodScope)scope : scope.enclosingMethodScope();
            ReferenceContext referenceContext = methodScope.referenceContext;
            if (referenceContext instanceof AbstractMethodDeclaration) {
                MethodBinding methodBinding = ((AbstractMethodDeclaration)referenceContext).binding;
                if (methodBinding != null) {
                    buffer.append(methodBinding.computeUniqueKey(false));
                }
            } else if (referenceContext instanceof TypeDeclaration && (typeBinding = ((TypeDeclaration)referenceContext).binding) != null) {
                buffer.append(((Binding)typeBinding).computeUniqueKey(false));
            }
            this.getScopeKey(scope, buffer);
            LocalVariableBinding[] locals = scope.locals;
            int i = 0;
            while (i < scope.localIndex) {
                LocalVariableBinding local = locals[i];
                if (CharOperation.equals(this.name, local.name)) {
                    if (this == local) break;
                    ++occurenceCount;
                }
                ++i;
            }
        }
        buffer.append('#');
        buffer.append(this.name);
        if (occurenceCount > 0) {
            buffer.append('#');
            buffer.append(occurenceCount);
        }
        int length = buffer.length();
        char[] uniqueKey = new char[length];
        buffer.getChars(0, length, uniqueKey, 0);
        return uniqueKey;
    }

    public AnnotationBinding[] getAnnotations() {
        Annotation[] annotationNodes;
        if (this.declaringScope == null) {
            if ((this.tagBits & 0x200000000L) != 0L) {
                if (this.declaration == null) {
                    return Binding.NO_ANNOTATIONS;
                }
                Annotation[] annotations = this.declaration.annotations;
                if (annotations != null) {
                    int length = annotations.length;
                    AnnotationBinding[] annotationBindings = new AnnotationBinding[length];
                    int i = 0;
                    while (i < length) {
                        AnnotationBinding compilerAnnotation = annotations[i].getCompilerAnnotation();
                        if (compilerAnnotation == null) {
                            return Binding.NO_ANNOTATIONS;
                        }
                        annotationBindings[i] = compilerAnnotation;
                        ++i;
                    }
                    return annotationBindings;
                }
            }
            return Binding.NO_ANNOTATIONS;
        }
        SourceTypeBinding sourceType = this.declaringScope.enclosingSourceType();
        if (sourceType == null) {
            return Binding.NO_ANNOTATIONS;
        }
        AnnotationBinding[] annotations = sourceType.retrieveAnnotations(this);
        if ((this.tagBits & 0x200000000L) == 0L && (this.tagBits & 0x400L) != 0L && this.declaration != null && (annotationNodes = this.declaration.annotations) != null) {
            int length = annotationNodes.length;
            ASTNode.resolveAnnotations(this.declaringScope, annotationNodes, this);
            annotations = new AnnotationBinding[length];
            int i = 0;
            while (i < length) {
                annotations[i] = new AnnotationBinding(annotationNodes[i]);
                ++i;
            }
            this.setAnnotations(annotations);
        }
        return annotations;
    }

    private void getScopeKey(BlockScope scope, StringBuffer buffer) {
        int scopeIndex = scope.scopeIndex();
        if (scopeIndex != -1) {
            this.getScopeKey((BlockScope)scope.parent, buffer);
            buffer.append('#');
            buffer.append(scopeIndex);
        }
    }

    public boolean isSecret() {
        return this.declaration == null && (this.tagBits & 0x400L) == 0L;
    }

    public void recordInitializationEndPC(int pc) {
        if (this.initializationPCs[(this.initializationCount - 1 << 1) + 1] == -1) {
            this.initializationPCs[(this.initializationCount - 1 << 1) + 1] = pc;
        }
    }

    public void recordInitializationStartPC(int pc) {
        int index;
        if (this.initializationPCs == null) {
            return;
        }
        if (this.initializationCount > 0) {
            int previousEndPC = this.initializationPCs[(this.initializationCount - 1 << 1) + 1];
            if (previousEndPC == -1) {
                return;
            }
            if (previousEndPC == pc) {
                this.initializationPCs[(this.initializationCount - 1 << 1) + 1] = -1;
                return;
            }
        }
        if ((index = this.initializationCount << 1) == this.initializationPCs.length) {
            this.initializationPCs = new int[this.initializationCount << 2];
            System.arraycopy(this.initializationPCs, 0, this.initializationPCs, 0, index);
        }
        this.initializationPCs[index] = pc;
        this.initializationPCs[index + 1] = -1;
        ++this.initializationCount;
    }

    public void setAnnotations(AnnotationBinding[] annotations) {
        if (this.declaringScope == null) {
            return;
        }
        SourceTypeBinding sourceType = this.declaringScope.enclosingSourceType();
        if (sourceType != null) {
            sourceType.storeAnnotations(this, annotations);
        }
    }

    public void resetInitializations() {
        this.initializationCount = 0;
        this.initializationPCs = null;
    }

    public String toString() {
        String s = super.toString();
        switch (this.useFlag) {
            case 1: {
                s = String.valueOf(s) + "[pos: " + String.valueOf(this.resolvedPosition) + "]";
                break;
            }
            case 0: {
                s = String.valueOf(s) + "[pos: unused]";
                break;
            }
            case 2: {
                s = String.valueOf(s) + "[pos: fake_used]";
            }
        }
        s = String.valueOf(s) + "[id:" + String.valueOf(this.id) + "]";
        if (this.initializationCount > 0) {
            s = String.valueOf(s) + "[pc: ";
            int i = 0;
            while (i < this.initializationCount) {
                if (i > 0) {
                    s = String.valueOf(s) + ", ";
                }
                s = String.valueOf(s) + String.valueOf(this.initializationPCs[i << 1]) + "-" + (this.initializationPCs[(i << 1) + 1] == -1 ? "?" : String.valueOf(this.initializationPCs[(i << 1) + 1]));
                ++i;
            }
            s = String.valueOf(s) + "]";
        }
        return s;
    }

    public boolean isParameter() {
        return (this.tagBits & 0x400L) != 0L;
    }
}

