/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.TypeComponent
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ReferenceType;
import com.sun.jdi.TypeComponent;
import org.eclipse.jdi.internal.AccessibleImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public abstract class TypeComponentImpl
extends AccessibleImpl
implements TypeComponent {
    private String fName = null;
    private String fSignature = null;
    private String fGenericSignature;
    private ReferenceTypeImpl fDeclaringType;
    protected int fModifierBits;

    public TypeComponentImpl(String description, VirtualMachineImpl vmImpl, ReferenceTypeImpl declaringType, String name, String signature, String genericSignature, int modifierBits) {
        super(description, vmImpl);
        this.fName = name;
        this.fSignature = signature;
        this.fGenericSignature = genericSignature;
        this.fDeclaringType = declaringType;
        this.fModifierBits = modifierBits;
    }

    public int modifiers() {
        return this.fModifierBits;
    }

    public ReferenceTypeImpl referenceTypeImpl() {
        return this.fDeclaringType;
    }

    public ReferenceType declaringType() {
        return this.fDeclaringType;
    }

    public boolean isFinal() {
        return (this.fModifierBits & 0x10) != 0;
    }

    public boolean isStatic() {
        return (this.fModifierBits & 8) != 0;
    }

    public boolean isSynthetic() {
        return (this.fModifierBits & 0xF0001000) != 0;
    }

    public String name() {
        return this.fName;
    }

    public String signature() {
        return this.fSignature;
    }

    public String toString() {
        return this.fName;
    }

    public String genericSignature() {
        return this.fGenericSignature;
    }
}

