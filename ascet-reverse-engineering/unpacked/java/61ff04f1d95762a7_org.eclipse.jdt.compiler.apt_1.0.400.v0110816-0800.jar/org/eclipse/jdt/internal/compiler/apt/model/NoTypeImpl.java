/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import javax.lang.model.type.NoType;
import javax.lang.model.type.NullType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeVisitor;

public class NoTypeImpl
implements NoType,
NullType {
    private final TypeKind _kind;
    public static final NoType NO_TYPE_NONE = new NoTypeImpl(TypeKind.NONE);
    public static final NoType NO_TYPE_VOID = new NoTypeImpl(TypeKind.VOID);
    public static final NoType NO_TYPE_PACKAGE = new NoTypeImpl(TypeKind.PACKAGE);
    public static final NullType NULL_TYPE = new NoTypeImpl(TypeKind.NULL);

    private NoTypeImpl(TypeKind kind) {
        this._kind = kind;
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> v, P p) {
        switch (this.getKind()) {
            case NULL: {
                return v.visitNull(this, p);
            }
        }
        return v.visitNoType(this, p);
    }

    @Override
    public TypeKind getKind() {
        return this._kind;
    }

    @Override
    public String toString() {
        switch (this._kind) {
            default: {
                return "<none>";
            }
            case NULL: {
                return "null";
            }
            case VOID: {
                return "void";
            }
            case PACKAGE: 
        }
        return "package";
    }
}

