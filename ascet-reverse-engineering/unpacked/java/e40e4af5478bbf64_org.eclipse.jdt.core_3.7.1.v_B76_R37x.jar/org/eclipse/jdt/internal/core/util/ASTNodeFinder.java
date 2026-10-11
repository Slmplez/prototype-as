/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.util.ASTNodeFinder;
import org.eclipse.jdt.internal.core.util.Util;

public class ASTNodeFinder {
    private CompilationUnitDeclaration unit;

    public ASTNodeFinder(CompilationUnitDeclaration unit) {
        this.unit = unit;
    }

    public FieldDeclaration findField(IField fieldHandle) {
        TypeDeclaration typeDecl = this.findType((IType)fieldHandle.getParent());
        if (typeDecl == null) {
            return null;
        }
        FieldDeclaration[] fields = typeDecl.fields;
        if (fields != null) {
            char[] fieldName = fieldHandle.getElementName().toCharArray();
            int i = 0;
            int length = fields.length;
            while (i < length) {
                FieldDeclaration field = fields[i];
                if (CharOperation.equals(fieldName, field.name)) {
                    return field;
                }
                ++i;
            }
        }
        return null;
    }

    public Initializer findInitializer(IInitializer initializerHandle) {
        TypeDeclaration typeDecl = this.findType((IType)initializerHandle.getParent());
        if (typeDecl == null) {
            return null;
        }
        FieldDeclaration[] fields = typeDecl.fields;
        if (fields != null) {
            int occurenceCount = ((SourceRefElement)((Object)initializerHandle)).occurrenceCount;
            int i = 0;
            int length = fields.length;
            while (i < length) {
                FieldDeclaration field = fields[i];
                if (field instanceof Initializer && --occurenceCount == 0) {
                    return (Initializer)field;
                }
                ++i;
            }
        }
        return null;
    }

    public AbstractMethodDeclaration findMethod(IMethod methodHandle) {
        TypeDeclaration typeDecl = this.findType((IType)methodHandle.getParent());
        if (typeDecl == null) {
            return null;
        }
        AbstractMethodDeclaration[] methods = typeDecl.methods;
        if (methods != null) {
            char[] selector = methodHandle.getElementName().toCharArray();
            String[] parameterTypeSignatures = methodHandle.getParameterTypes();
            int parameterCount = parameterTypeSignatures.length;
            int i = 0;
            int length = methods.length;
            while (i < length) {
                block7: {
                    AbstractMethodDeclaration method = methods[i];
                    if (CharOperation.equals(selector, method.selector)) {
                        int argsLength;
                        Argument[] args = method.arguments;
                        int n = argsLength = args == null ? 0 : args.length;
                        if (argsLength == parameterCount) {
                            int j = 0;
                            while (j < parameterCount) {
                                TypeReference type = args[j].type;
                                String signature = Util.typeSignature(type);
                                if (signature.equals(parameterTypeSignatures[j])) {
                                    ++j;
                                    continue;
                                }
                                break block7;
                            }
                            return method;
                        }
                    }
                }
                ++i;
            }
        }
        return null;
    }

    public TypeDeclaration findType(IType typeHandle) {
        IJavaElement parent = typeHandle.getParent();
        char[] typeName = typeHandle.getElementName().toCharArray();
        int occurenceCount = ((SourceType)typeHandle).occurrenceCount;
        boolean findAnonymous = typeName.length == 0;
        switch (parent.getElementType()) {
            class Visitor
            extends ASTVisitor {
                TypeDeclaration result;
                int count;
                final /* synthetic */ ASTNodeFinder this$0;
                private final /* synthetic */ boolean val$findAnonymous;
                private final /* synthetic */ int val$occurenceCount;
                private final /* synthetic */ char[] val$typeName;

                Visitor(ASTNodeFinder aSTNodeFinder, boolean bl, int n, char[] cArray) {
                    this.this$0 = aSTNodeFinder;
                    this.val$findAnonymous = bl;
                    this.val$occurenceCount = n;
                    this.val$typeName = cArray;
                    this.count = 0;
                }

                public boolean visit(TypeDeclaration typeDeclaration, BlockScope scope) {
                    if (this.result != null) {
                        return false;
                    }
                    if ((typeDeclaration.bits & 0x200) != 0) {
                        if (this.val$findAnonymous && ++this.count == this.val$occurenceCount) {
                            this.result = typeDeclaration;
                        }
                    } else if (!this.val$findAnonymous && CharOperation.equals(this.val$typeName, typeDeclaration.name)) {
                        this.result = typeDeclaration;
                    }
                    return false;
                }
            }
            case 5: {
                TypeDeclaration[] types = this.unit.types;
                if (types == null) break;
                int i = 0;
                int length = types.length;
                while (i < length) {
                    TypeDeclaration type = types[i];
                    if (CharOperation.equals(typeName, type.name)) {
                        return type;
                    }
                    ++i;
                }
                break;
            }
            case 7: {
                TypeDeclaration parentDecl = this.findType((IType)parent);
                if (parentDecl == null) {
                    return null;
                }
                TypeDeclaration[] types = parentDecl.memberTypes;
                if (types == null) break;
                int i = 0;
                int length = types.length;
                while (i < length) {
                    TypeDeclaration type = types[i];
                    if (CharOperation.equals(typeName, type.name)) {
                        return type;
                    }
                    ++i;
                }
                break;
            }
            case 8: {
                FieldDeclaration fieldDecl = this.findField((IField)parent);
                if (fieldDecl == null) {
                    return null;
                }
                Visitor visitor = new Visitor(this, findAnonymous, occurenceCount, typeName);
                fieldDecl.traverse((ASTVisitor)visitor, null);
                return visitor.result;
            }
            case 10: {
                Initializer initializer = this.findInitializer((IInitializer)parent);
                if (initializer == null) {
                    return null;
                }
                Visitor visitor = new Visitor(this, findAnonymous, occurenceCount, typeName);
                initializer.traverse((ASTVisitor)visitor, null);
                return visitor.result;
            }
            case 9: {
                AbstractMethodDeclaration methodDecl = this.findMethod((IMethod)parent);
                if (methodDecl == null) {
                    return null;
                }
                Visitor visitor = new Visitor(this, findAnonymous, occurenceCount, typeName);
                methodDecl.traverse((ASTVisitor)visitor, (ClassScope)null);
                return visitor.result;
            }
        }
        return null;
    }
}

