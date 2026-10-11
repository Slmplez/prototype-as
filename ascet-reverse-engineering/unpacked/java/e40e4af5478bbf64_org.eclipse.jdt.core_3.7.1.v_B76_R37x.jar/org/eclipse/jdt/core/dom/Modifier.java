/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.IExtendedModifier;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public final class Modifier
extends ASTNode
implements IExtendedModifier {
    public static final int ABSTRACT = 1024;
    public static final int FINAL = 16;
    public static final SimplePropertyDescriptor KEYWORD_PROPERTY;
    public static final int NATIVE = 256;
    public static final int NONE = 0;
    public static final int PRIVATE = 2;
    private static final List PROPERTY_DESCRIPTORS;
    public static final int PROTECTED = 4;
    public static final int PUBLIC = 1;
    public static final int STATIC = 8;
    public static final int STRICTFP = 2048;
    public static final int SYNCHRONIZED = 32;
    public static final int TRANSIENT = 128;
    public static final int VOLATILE = 64;
    private ModifierKeyword modifierKeyword = ModifierKeyword.PUBLIC_KEYWORD;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Modifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Modifier$ModifierKeyword");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEYWORD_PROPERTY = new SimplePropertyDescriptor(clazz2, "keyword", clazz, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Modifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Modifier.createPropertyList(clazz3, properyList);
        Modifier.addProperty(KEYWORD_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = Modifier.reapPropertyList(properyList);
    }

    public static boolean isAbstract(int flags) {
        return (flags & 0x400) != 0;
    }

    public static boolean isFinal(int flags) {
        return (flags & 0x10) != 0;
    }

    public static boolean isNative(int flags) {
        return (flags & 0x100) != 0;
    }

    public static boolean isPrivate(int flags) {
        return (flags & 2) != 0;
    }

    public static boolean isProtected(int flags) {
        return (flags & 4) != 0;
    }

    public static boolean isPublic(int flags) {
        return (flags & 1) != 0;
    }

    public static boolean isStatic(int flags) {
        return (flags & 8) != 0;
    }

    public static boolean isStrictfp(int flags) {
        return (flags & 0x800) != 0;
    }

    public static boolean isSynchronized(int flags) {
        return (flags & 0x20) != 0;
    }

    public static boolean isTransient(int flags) {
        return (flags & 0x80) != 0;
    }

    public static boolean isVolatile(int flags) {
        return (flags & 0x40) != 0;
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    Modifier(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    ASTNode clone0(AST target) {
        Modifier result = new Modifier(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setKeyword(this.getKeyword());
        return result;
    }

    public ModifierKeyword getKeyword() {
        return this.modifierKeyword;
    }

    final int getNodeType0() {
        return 83;
    }

    final Object internalGetSetObjectProperty(SimplePropertyDescriptor property, boolean get, Object value) {
        if (property == KEYWORD_PROPERTY) {
            if (get) {
                return this.getKeyword();
            }
            this.setKeyword((ModifierKeyword)value);
            return null;
        }
        return super.internalGetSetObjectProperty(property, get, value);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return Modifier.propertyDescriptors(apiLevel);
    }

    public boolean isAbstract() {
        return this.modifierKeyword == ModifierKeyword.ABSTRACT_KEYWORD;
    }

    public boolean isAnnotation() {
        return false;
    }

    public boolean isFinal() {
        return this.modifierKeyword == ModifierKeyword.FINAL_KEYWORD;
    }

    public boolean isModifier() {
        return true;
    }

    public boolean isNative() {
        return this.modifierKeyword == ModifierKeyword.NATIVE_KEYWORD;
    }

    public boolean isPrivate() {
        return this.modifierKeyword == ModifierKeyword.PRIVATE_KEYWORD;
    }

    public boolean isProtected() {
        return this.modifierKeyword == ModifierKeyword.PROTECTED_KEYWORD;
    }

    public boolean isPublic() {
        return this.modifierKeyword == ModifierKeyword.PUBLIC_KEYWORD;
    }

    public boolean isStatic() {
        return this.modifierKeyword == ModifierKeyword.STATIC_KEYWORD;
    }

    public boolean isStrictfp() {
        return this.modifierKeyword == ModifierKeyword.STRICTFP_KEYWORD;
    }

    public boolean isSynchronized() {
        return this.modifierKeyword == ModifierKeyword.SYNCHRONIZED_KEYWORD;
    }

    public boolean isTransient() {
        return this.modifierKeyword == ModifierKeyword.TRANSIENT_KEYWORD;
    }

    public boolean isVolatile() {
        return this.modifierKeyword == ModifierKeyword.VOLATILE_KEYWORD;
    }

    int memSize() {
        return 44;
    }

    public void setKeyword(ModifierKeyword modifierKeyord) {
        if (modifierKeyord == null) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(KEYWORD_PROPERTY);
        this.modifierKeyword = modifierKeyord;
        this.postValueChange(KEYWORD_PROPERTY);
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    int treeSize() {
        return this.memSize();
    }

    public static class ModifierKeyword {
        public static final ModifierKeyword ABSTRACT_KEYWORD = new ModifierKeyword("abstract", 1024);
        public static final ModifierKeyword FINAL_KEYWORD = new ModifierKeyword("final", 16);
        private static final Map KEYWORDS;
        public static final ModifierKeyword NATIVE_KEYWORD;
        public static final ModifierKeyword PRIVATE_KEYWORD;
        public static final ModifierKeyword PROTECTED_KEYWORD;
        public static final ModifierKeyword PUBLIC_KEYWORD;
        public static final ModifierKeyword STATIC_KEYWORD;
        public static final ModifierKeyword STRICTFP_KEYWORD;
        public static final ModifierKeyword SYNCHRONIZED_KEYWORD;
        public static final ModifierKeyword TRANSIENT_KEYWORD;
        public static final ModifierKeyword VOLATILE_KEYWORD;
        private int flagValue;
        private String keyword;

        static {
            NATIVE_KEYWORD = new ModifierKeyword("native", 256);
            PRIVATE_KEYWORD = new ModifierKeyword("private", 2);
            PROTECTED_KEYWORD = new ModifierKeyword("protected", 4);
            PUBLIC_KEYWORD = new ModifierKeyword("public", 1);
            STATIC_KEYWORD = new ModifierKeyword("static", 8);
            STRICTFP_KEYWORD = new ModifierKeyword("strictfp", 2048);
            SYNCHRONIZED_KEYWORD = new ModifierKeyword("synchronized", 32);
            TRANSIENT_KEYWORD = new ModifierKeyword("transient", 128);
            VOLATILE_KEYWORD = new ModifierKeyword("volatile", 64);
            KEYWORDS = new HashMap(20);
            ModifierKeyword[] ops = new ModifierKeyword[]{PUBLIC_KEYWORD, PROTECTED_KEYWORD, PRIVATE_KEYWORD, STATIC_KEYWORD, ABSTRACT_KEYWORD, FINAL_KEYWORD, NATIVE_KEYWORD, SYNCHRONIZED_KEYWORD, TRANSIENT_KEYWORD, VOLATILE_KEYWORD, STRICTFP_KEYWORD};
            int i = 0;
            while (i < ops.length) {
                KEYWORDS.put(ops[i].toString(), ops[i]);
                ++i;
            }
        }

        public static ModifierKeyword fromFlagValue(int flagValue) {
            Iterator it = KEYWORDS.values().iterator();
            while (it.hasNext()) {
                ModifierKeyword k = (ModifierKeyword)it.next();
                if (k.toFlagValue() != flagValue) continue;
                return k;
            }
            return null;
        }

        public static ModifierKeyword toKeyword(String keyword) {
            return (ModifierKeyword)KEYWORDS.get(keyword);
        }

        private ModifierKeyword(String keyword, int flagValue) {
            this.keyword = keyword;
            this.flagValue = flagValue;
        }

        public int toFlagValue() {
            return this.flagValue;
        }

        public String toString() {
            return this.keyword;
        }
    }
}

