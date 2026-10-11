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
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class CharacterLiteral
extends Expression {
    public static final SimplePropertyDescriptor ESCAPED_VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private String escapedValue = "'X'";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CharacterLiteral");
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
        ESCAPED_VALUE_PROPERTY = new SimplePropertyDescriptor(clazz2, "escapedValue", clazz, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.CharacterLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CharacterLiteral.createPropertyList(clazz3, properyList);
        CharacterLiteral.addProperty(ESCAPED_VALUE_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = CharacterLiteral.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    CharacterLiteral(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return CharacterLiteral.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == ESCAPED_VALUE_PROPERTY) {
            if (get) {
                return this.getEscapedValue();
            }
            this.setEscapedValue((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final int getNodeType0() {
        return 13;
    }

    ASTNode clone0(AST target) {
        CharacterLiteral result = new CharacterLiteral(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setEscapedValue(this.getEscapedValue());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public String getEscapedValue() {
        return this.escapedValue;
    }

    public void setEscapedValue(String value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        char[] source = value.toCharArray();
        scanner.setSource(source);
        scanner.resetTo(0, source.length);
        try {
            int tokenType = scanner.getNextToken();
            switch (tokenType) {
                case 51: {
                    break;
                }
                default: {
                    throw new IllegalArgumentException();
                }
            }
        }
        catch (InvalidInputException invalidInputException) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(ESCAPED_VALUE_PROPERTY);
        this.escapedValue = value;
        this.postValueChange(ESCAPED_VALUE_PROPERTY);
    }

    void internalSetEscapedValue(String value) {
        this.preValueChange(ESCAPED_VALUE_PROPERTY);
        this.escapedValue = value;
        this.postValueChange(ESCAPED_VALUE_PROPERTY);
    }

    public char charValue() {
        Scanner scanner = this.ast.scanner;
        char[] source = this.escapedValue.toCharArray();
        scanner.setSource(source);
        scanner.resetTo(0, source.length);
        int firstChar = scanner.getNextChar();
        int secondChar = scanner.getNextChar();
        if (firstChar == -1 || firstChar != 39) {
            throw new IllegalArgumentException("illegal character literal");
        }
        char value = (char)secondChar;
        int nextChar = scanner.getNextChar();
        if (secondChar == 92) {
            if (nextChar == -1) {
                throw new IllegalArgumentException("illegal character literal");
            }
            switch (nextChar) {
                case 98: {
                    value = '\b';
                    break;
                }
                case 116: {
                    value = '\t';
                    break;
                }
                case 110: {
                    value = '\n';
                    break;
                }
                case 102: {
                    value = '\f';
                    break;
                }
                case 114: {
                    value = '\r';
                    break;
                }
                case 34: {
                    value = '\"';
                    break;
                }
                case 39: {
                    value = '\'';
                    break;
                }
                case 92: {
                    value = '\\';
                    break;
                }
                default: {
                    try {
                        if (ScannerHelper.isDigit((char)nextChar)) {
                            int number = ScannerHelper.getNumericValue((char)nextChar);
                            nextChar = scanner.getNextChar();
                            if (nextChar == -1) {
                                throw new IllegalArgumentException("illegal character literal");
                            }
                            if (nextChar != 39) {
                                if (!ScannerHelper.isDigit((char)nextChar)) {
                                    throw new IllegalArgumentException("illegal character literal");
                                }
                                number = number * 8 + ScannerHelper.getNumericValue((char)nextChar);
                                nextChar = scanner.getNextChar();
                                if (nextChar == -1) {
                                    throw new IllegalArgumentException("illegal character literal");
                                }
                                if (nextChar != 39) {
                                    if (!ScannerHelper.isDigit((char)nextChar)) {
                                        throw new IllegalArgumentException("illegal character literal");
                                    }
                                    number = number * 8 + ScannerHelper.getNumericValue((char)nextChar);
                                }
                            }
                            return (char)number;
                        }
                        throw new IllegalArgumentException("illegal character literal");
                    }
                    catch (InvalidInputException invalidInputException) {
                        throw new IllegalArgumentException("illegal character literal");
                    }
                }
            }
            nextChar = scanner.getNextChar();
            if (nextChar == -1) {
                throw new IllegalArgumentException("illegal character literal");
            }
        }
        if (nextChar == -1 || nextChar != 39) {
            throw new IllegalArgumentException("illegal character literal");
        }
        return value;
    }

    public void setCharValue(char value) {
        StringBuffer b = new StringBuffer(3);
        b.append('\'');
        switch (value) {
            case '\b': {
                b.append("\\b");
                break;
            }
            case '\t': {
                b.append("\\t");
                break;
            }
            case '\n': {
                b.append("\\n");
                break;
            }
            case '\f': {
                b.append("\\f");
                break;
            }
            case '\r': {
                b.append("\\r");
                break;
            }
            case '\"': {
                b.append("\\\"");
                break;
            }
            case '\'': {
                b.append("\\'");
                break;
            }
            case '\\': {
                b.append("\\\\");
                break;
            }
            case '\u0000': {
                b.append("\\0");
                break;
            }
            case '\u0001': {
                b.append("\\1");
                break;
            }
            case '\u0002': {
                b.append("\\2");
                break;
            }
            case '\u0003': {
                b.append("\\3");
                break;
            }
            case '\u0004': {
                b.append("\\4");
                break;
            }
            case '\u0005': {
                b.append("\\5");
                break;
            }
            case '\u0006': {
                b.append("\\6");
                break;
            }
            case '\u0007': {
                b.append("\\7");
                break;
            }
            default: {
                b.append(value);
            }
        }
        b.append('\'');
        this.setEscapedValue(b.toString());
    }

    int memSize() {
        int size = 44 + CharacterLiteral.stringSize(this.escapedValue);
        return size;
    }

    int treeSize() {
        return this.memSize();
    }
}

