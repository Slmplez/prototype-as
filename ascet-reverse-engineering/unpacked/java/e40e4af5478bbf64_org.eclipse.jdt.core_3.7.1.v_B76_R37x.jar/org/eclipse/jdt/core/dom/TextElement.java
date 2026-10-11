/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.IDocElement;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.internal.compiler.util.Util;

public final class TextElement
extends ASTNode
implements IDocElement {
    public static final SimplePropertyDescriptor TEXT_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private String text = Util.EMPTY_STRING;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TextElement");
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
        TEXT_PROPERTY = new SimplePropertyDescriptor(clazz2, "text", clazz, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TextElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TextElement.createPropertyList(clazz3, propertyList);
        TextElement.addProperty(TEXT_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = TextElement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    TextElement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TextElement.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == TEXT_PROPERTY) {
            if (get) {
                return this.getText();
            }
            this.setText((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final int getNodeType0() {
        return 66;
    }

    ASTNode clone0(AST target) {
        TextElement result = new TextElement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setText(this.getText());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    public String getText() {
        return this.text;
    }

    public void setText(String text) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        if (text.indexOf("*/") > 0) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(TEXT_PROPERTY);
        this.text = text;
        this.postValueChange(TEXT_PROPERTY);
    }

    int memSize() {
        int size = 44;
        if (this.text != Util.EMPTY_STRING) {
            size += TextElement.stringSize(this.text);
        }
        return size;
    }

    int treeSize() {
        return this.memSize();
    }
}

