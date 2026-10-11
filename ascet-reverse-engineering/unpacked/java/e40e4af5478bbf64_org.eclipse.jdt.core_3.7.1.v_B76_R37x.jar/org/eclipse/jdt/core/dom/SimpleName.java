/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SimpleName
extends Name {
    public static final SimplePropertyDescriptor IDENTIFIER_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final String MISSING_IDENTIFIER = "MISSING";
    private String identifier = "MISSING";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IDENTIFIER_PROPERTY = new SimplePropertyDescriptor(clazz2, "identifier", clazz, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SimpleName.createPropertyList(clazz3, propertyList);
        SimpleName.addProperty(IDENTIFIER_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = SimpleName.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    SimpleName(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SimpleName.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == IDENTIFIER_PROPERTY) {
            if (get) {
                return this.getIdentifier();
            }
            this.setIdentifier((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final int getNodeType0() {
        return 42;
    }

    ASTNode clone0(AST target) {
        SimpleName result = new SimpleName(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setIdentifier(this.getIdentifier());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public void setIdentifier(String identifier) {
        if (identifier == null) {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        long sourceLevel = scanner.sourceLevel;
        long complianceLevel = scanner.complianceLevel;
        try {
            scanner.sourceLevel = 0x2F0000L;
            scanner.complianceLevel = 0x310000L;
            char[] source = identifier.toCharArray();
            scanner.setSource(source);
            int length = source.length;
            scanner.resetTo(0, length - 1);
            try {
                int tokenType = scanner.scanIdentifier();
                if (tokenType != 26) {
                    throw new IllegalArgumentException();
                }
                if (scanner.currentPosition != length) {
                    throw new IllegalArgumentException();
                }
            }
            catch (InvalidInputException invalidInputException) {
                throw new IllegalArgumentException();
            }
        }
        finally {
            this.ast.scanner.sourceLevel = sourceLevel;
            this.ast.scanner.complianceLevel = complianceLevel;
        }
        this.preValueChange(IDENTIFIER_PROPERTY);
        this.identifier = identifier;
        this.postValueChange(IDENTIFIER_PROPERTY);
    }

    void internalSetIdentifier(String ident) {
        this.preValueChange(IDENTIFIER_PROPERTY);
        this.identifier = ident;
        this.postValueChange(IDENTIFIER_PROPERTY);
    }

    public boolean isDeclaration() {
        StructuralPropertyDescriptor d = this.getLocationInParent();
        if (d == null) {
            return false;
        }
        ASTNode parent = this.getParent();
        if (parent instanceof TypeDeclaration) {
            return d == TypeDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof MethodDeclaration) {
            MethodDeclaration p = (MethodDeclaration)parent;
            return !p.isConstructor() && d == MethodDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof SingleVariableDeclaration) {
            return d == SingleVariableDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof VariableDeclarationFragment) {
            return d == VariableDeclarationFragment.NAME_PROPERTY;
        }
        if (parent instanceof EnumDeclaration) {
            return d == EnumDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof EnumConstantDeclaration) {
            return d == EnumConstantDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof TypeParameter) {
            return d == TypeParameter.NAME_PROPERTY;
        }
        if (parent instanceof AnnotationTypeDeclaration) {
            return d == AnnotationTypeDeclaration.NAME_PROPERTY;
        }
        if (parent instanceof AnnotationTypeMemberDeclaration) {
            return d == AnnotationTypeMemberDeclaration.NAME_PROPERTY;
        }
        return false;
    }

    void appendName(StringBuffer buffer) {
        buffer.append(this.getIdentifier());
    }

    int memSize() {
        int size = 52;
        if (this.identifier != MISSING_IDENTIFIER) {
            size += SimpleName.stringSize(this.identifier);
        }
        return size;
    }

    int treeSize() {
        return this.memSize();
    }
}

