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
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class NumberLiteral
extends Expression {
    public static final SimplePropertyDescriptor TOKEN_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private String tokenValue = "0";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.NumberLiteral");
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
        TOKEN_PROPERTY = new SimplePropertyDescriptor(clazz2, "token", clazz, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.NumberLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NumberLiteral.createPropertyList(clazz3, propertyList);
        NumberLiteral.addProperty(TOKEN_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = NumberLiteral.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    NumberLiteral(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return NumberLiteral.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == TOKEN_PROPERTY) {
            if (get) {
                return this.getToken();
            }
            this.setToken((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final int getNodeType0() {
        return 34;
    }

    ASTNode clone0(AST target) {
        NumberLiteral result = new NumberLiteral(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setToken(this.getToken());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public String getToken() {
        return this.tokenValue;
    }

    public void setToken(String token) {
        block13: {
            if (token == null || token.length() == 0) {
                throw new IllegalArgumentException();
            }
            Scanner scanner = this.ast.scanner;
            char[] source = token.toCharArray();
            scanner.setSource(source);
            scanner.resetTo(0, source.length);
            scanner.tokenizeComments = false;
            scanner.tokenizeWhiteSpace = false;
            try {
                try {
                    int tokenType = scanner.getNextToken();
                    switch (tokenType) {
                        case 47: 
                        case 48: 
                        case 49: 
                        case 50: {
                            break;
                        }
                        case 2: {
                            tokenType = scanner.getNextToken();
                            switch (tokenType) {
                                case 47: 
                                case 48: 
                                case 49: 
                                case 50: {
                                    break block13;
                                }
                                default: {
                                    throw new IllegalArgumentException("Invalid number literal : >" + token + "<");
                                }
                            }
                        }
                        default: {
                            throw new IllegalArgumentException("Invalid number literal : >" + token + "<");
                        }
                    }
                }
                catch (InvalidInputException invalidInputException) {
                    throw new IllegalArgumentException();
                }
            }
            finally {
                scanner.tokenizeComments = true;
                scanner.tokenizeWhiteSpace = true;
            }
        }
        this.preValueChange(TOKEN_PROPERTY);
        this.tokenValue = token;
        this.postValueChange(TOKEN_PROPERTY);
    }

    void internalSetToken(String token) {
        this.preValueChange(TOKEN_PROPERTY);
        this.tokenValue = token;
        this.postValueChange(TOKEN_PROPERTY);
    }

    int memSize() {
        int size = 44 + NumberLiteral.stringSize(this.tokenValue);
        return size;
    }

    int treeSize() {
        return this.memSize();
    }
}

