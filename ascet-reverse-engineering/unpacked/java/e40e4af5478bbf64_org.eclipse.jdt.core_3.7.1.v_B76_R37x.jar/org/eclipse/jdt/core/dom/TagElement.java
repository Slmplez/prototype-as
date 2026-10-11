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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.IDocElement;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public final class TagElement
extends ASTNode
implements IDocElement {
    public static final SimplePropertyDescriptor TAG_NAME_PROPERTY;
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final String TAG_AUTHOR = "@author";
    public static final String TAG_CODE = "@code";
    public static final String TAG_DEPRECATED = "@deprecated";
    public static final String TAG_DOCROOT = "@docRoot";
    public static final String TAG_EXCEPTION = "@exception";
    public static final String TAG_INHERITDOC = "@inheritDoc";
    public static final String TAG_LINK = "@link";
    public static final String TAG_LINKPLAIN = "@linkplain";
    public static final String TAG_LITERAL = "@literal";
    public static final String TAG_PARAM = "@param";
    public static final String TAG_RETURN = "@return";
    public static final String TAG_SEE = "@see";
    public static final String TAG_SERIAL = "@serial";
    public static final String TAG_SERIALDATA = "@serialData";
    public static final String TAG_SERIALFIELD = "@serialField";
    public static final String TAG_SINCE = "@since";
    public static final String TAG_THROWS = "@throws";
    public static final String TAG_VALUE = "@value";
    public static final String TAG_VERSION = "@version";
    private String optionalTagName = null;
    private ASTNode.NodeList fragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TagElement");
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
        TAG_NAME_PROPERTY = new SimplePropertyDescriptor(clazz3, "tagName", clazz2, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TagElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.IDocElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FRAGMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "fragments", clazz, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TagElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TagElement.createPropertyList(clazz5, propertyList);
        TagElement.addProperty(TAG_NAME_PROPERTY, propertyList);
        TagElement.addProperty(FRAGMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = TagElement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    TagElement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TagElement.propertyDescriptors(apiLevel);
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == TAG_NAME_PROPERTY) {
            if (get) {
                return this.getTagName();
            }
            this.setTagName((String)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == FRAGMENTS_PROPERTY) {
            return this.fragments();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 65;
    }

    ASTNode clone0(AST target) {
        TagElement result = new TagElement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setTagName(this.getTagName());
        result.fragments().addAll(ASTNode.copySubtrees(target, this.fragments()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.fragments);
        }
        visitor.endVisit(this);
    }

    public String getTagName() {
        return this.optionalTagName;
    }

    public void setTagName(String tagName) {
        this.preValueChange(TAG_NAME_PROPERTY);
        this.optionalTagName = tagName;
        this.postValueChange(TAG_NAME_PROPERTY);
    }

    public List fragments() {
        return this.fragments;
    }

    public boolean isNested() {
        return this.getParent() instanceof TagElement;
    }

    int memSize() {
        int size = 48 + TagElement.stringSize(this.optionalTagName);
        return size;
    }

    int treeSize() {
        return this.memSize() + this.fragments.listSize();
    }
}

