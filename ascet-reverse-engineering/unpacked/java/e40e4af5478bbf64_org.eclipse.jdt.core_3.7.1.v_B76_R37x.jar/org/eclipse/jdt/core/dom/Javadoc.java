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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class Javadoc
extends Comment {
    public static final SimplePropertyDescriptor COMMENT_PROPERTY;
    public static final ChildListPropertyDescriptor TAGS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private static final String MINIMAL_DOC_COMMENT = "/** */";
    private String comment = "/** */";
    private ASTNode.NodeList tags = new ASTNode.NodeList(TAGS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        COMMENT_PROPERTY = new SimplePropertyDescriptor(clazz3, "comment", clazz2, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.TagElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TAGS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "tags", clazz, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Javadoc.createPropertyList(clazz5, properyList);
        Javadoc.addProperty(COMMENT_PROPERTY, properyList);
        Javadoc.addProperty(TAGS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = Javadoc.reapPropertyList(properyList);
        properyList = new ArrayList(2);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Javadoc.createPropertyList(clazz6, properyList);
        Javadoc.addProperty(TAGS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = Javadoc.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    Javadoc(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return Javadoc.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == COMMENT_PROPERTY) {
            if (get) {
                return this.getComment();
            }
            this.setComment((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == TAGS_PROPERTY) {
            return this.tags();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 29;
    }

    ASTNode clone0(AST target) {
        Javadoc result = new Javadoc(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        if (this.ast.apiLevel == 2) {
            result.setComment(this.getComment());
        }
        result.tags().addAll(ASTNode.copySubtrees(target, this.tags()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.tags);
        }
        visitor.endVisit(this);
    }

    public String getComment() {
        this.supportedOnlyIn2();
        return this.comment;
    }

    public void setComment(String docComment) {
        this.supportedOnlyIn2();
        if (docComment == null) {
            throw new IllegalArgumentException();
        }
        char[] source = docComment.toCharArray();
        Scanner scanner = this.ast.scanner;
        scanner.resetTo(0, source.length);
        scanner.setSource(source);
        try {
            int token;
            boolean onlyOneComment = false;
            while ((token = scanner.getNextToken()) != 69) {
                switch (token) {
                    case 1003: {
                        if (onlyOneComment) {
                            throw new IllegalArgumentException();
                        }
                        onlyOneComment = true;
                        break;
                    }
                    default: {
                        onlyOneComment = false;
                    }
                }
            }
            if (!onlyOneComment) {
                throw new IllegalArgumentException();
            }
        }
        catch (InvalidInputException invalidInputException) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(COMMENT_PROPERTY);
        this.comment = docComment;
        this.postValueChange(COMMENT_PROPERTY);
    }

    public List tags() {
        return this.tags;
    }

    int memSize() {
        int size = super.memSize() + 8;
        if (this.comment != MINIMAL_DOC_COMMENT) {
            size += Javadoc.stringSize(this.comment);
        }
        return size;
    }

    int treeSize() {
        return this.memSize() + this.tags.listSize();
    }
}

