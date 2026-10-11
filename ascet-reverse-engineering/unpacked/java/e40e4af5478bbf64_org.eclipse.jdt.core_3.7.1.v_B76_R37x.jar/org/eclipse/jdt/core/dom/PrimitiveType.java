/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class PrimitiveType
extends Type {
    public static final Code INT;
    public static final Code CHAR;
    public static final Code BOOLEAN;
    public static final Code SHORT;
    public static final Code LONG;
    public static final Code FLOAT;
    public static final Code DOUBLE;
    public static final Code BYTE;
    public static final Code VOID;
    private Code typeCode = INT;
    private static final Map CODES;
    public static final SimplePropertyDescriptor PRIMITIVE_TYPE_CODE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        INT = new Code("int");
        CHAR = new Code("char");
        BOOLEAN = new Code("boolean");
        SHORT = new Code("short");
        LONG = new Code("long");
        FLOAT = new Code("float");
        DOUBLE = new Code("double");
        BYTE = new Code("byte");
        VOID = new Code("void");
        CODES = new HashMap(20);
        Code[] ops = new Code[]{INT, BYTE, CHAR, BOOLEAN, SHORT, LONG, FLOAT, DOUBLE, VOID};
        int i = 0;
        while (i < ops.length) {
            CODES.put(ops[i].toString(), ops[i]);
            ++i;
        }
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PrimitiveType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.PrimitiveType$Code");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PRIMITIVE_TYPE_CODE_PROPERTY = new SimplePropertyDescriptor(clazz2, "primitiveTypeCode", clazz, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.PrimitiveType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PrimitiveType.createPropertyList(clazz3, propertyList);
        PrimitiveType.addProperty(PRIMITIVE_TYPE_CODE_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = PrimitiveType.reapPropertyList(propertyList);
    }

    public static Code toCode(String token) {
        return (Code)CODES.get(token);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    PrimitiveType(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return PrimitiveType.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == PRIMITIVE_TYPE_CODE_PROPERTY) {
            if (get) {
                return this.getPrimitiveTypeCode();
            }
            this.setPrimitiveTypeCode((Code)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final int getNodeType0() {
        return 39;
    }

    ASTNode clone0(AST target) {
        PrimitiveType result = new PrimitiveType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setPrimitiveTypeCode(this.getPrimitiveTypeCode());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public Code getPrimitiveTypeCode() {
        return this.typeCode;
    }

    public void setPrimitiveTypeCode(Code typeCode) {
        if (typeCode == null) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(PRIMITIVE_TYPE_CODE_PROPERTY);
        this.typeCode = typeCode;
        this.postValueChange(PRIMITIVE_TYPE_CODE_PROPERTY);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize();
    }

    public static class Code {
        private String name;

        Code(String name) {
            this.name = name;
        }

        public String toString() {
            return this.name;
        }
    }
}

