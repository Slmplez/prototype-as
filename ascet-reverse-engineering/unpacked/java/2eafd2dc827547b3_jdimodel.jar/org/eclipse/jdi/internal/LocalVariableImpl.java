/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.LocalVariable
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.StackFrame
 *  com.sun.jdi.Type
 *  com.sun.jdi.VMMismatchException
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.LocalVariable;
import com.sun.jdi.Mirror;
import com.sun.jdi.StackFrame;
import com.sun.jdi.Type;
import com.sun.jdi.VMMismatchException;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MethodImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.StackFrameImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class LocalVariableImpl
extends MirrorImpl
implements LocalVariable {
    private MethodImpl fMethod;
    private long fCodeIndex;
    private String fName;
    private String fSignature;
    private String fGenericSignature;
    private Type fType;
    private String fTypeName;
    private int fLength;
    private int fSlot;
    private boolean fIsArgument;

    public LocalVariableImpl(VirtualMachineImpl vmImpl, MethodImpl method, long codeIndex, String name, String signature, String genericSignature, int length, int slot, boolean isArgument) {
        super("LocalVariable", vmImpl);
        this.fMethod = method;
        this.fCodeIndex = codeIndex;
        this.fName = name;
        this.fSignature = signature;
        this.fGenericSignature = genericSignature;
        this.fLength = length;
        this.fSlot = slot;
        this.fIsArgument = isArgument;
    }

    public int slot() {
        return this.fSlot;
    }

    public int hashCode() {
        return this.fMethod.hashCode() + (int)this.fCodeIndex + this.fSlot;
    }

    public boolean equals(Object object) {
        if (object != null && object.getClass().equals(this.getClass())) {
            LocalVariableImpl loc = (LocalVariableImpl)object;
            return this.fMethod.equals(loc.fMethod) && this.fCodeIndex == loc.fCodeIndex && this.fSlot == loc.fSlot;
        }
        return false;
    }

    public int compareTo(Object object) {
        if (object == null || !object.getClass().equals(this.getClass())) {
            throw new ClassCastException(JDIMessages.LocalVariableImpl_Can__t_compare_local_variable_to_given_object_1);
        }
        LocalVariableImpl var2 = (LocalVariableImpl)object;
        if (!this.method().equals(var2.method())) {
            return this.method().compareTo(var2.method());
        }
        if (this.fCodeIndex < 0L || var2.fCodeIndex < 0L) {
            throw new InternalError(JDIMessages.LocalVariableImpl_Code_indexes_are_assumed_to_be_always_positive_2);
        }
        long index2 = var2.fCodeIndex;
        if (this.fCodeIndex < index2) {
            return -1;
        }
        if (this.fCodeIndex > index2) {
            return 1;
        }
        return 0;
    }

    public boolean isArgument() {
        return this.fIsArgument;
    }

    public boolean isVisible(StackFrame frame) throws IllegalArgumentException, VMMismatchException {
        this.checkVM((Mirror)frame);
        StackFrameImpl frameImpl = (StackFrameImpl)frame;
        if (!this.fMethod.equals(frameImpl.location().method())) {
            throw new IllegalArgumentException(JDIMessages.LocalVariableImpl_The_stack_frame__s_method_does_not_match_this_variable__s_method_3);
        }
        if (this.fLength == -1) {
            return true;
        }
        long currentIndex = frameImpl.location().codeIndex();
        if (currentIndex >= 0L && this.fCodeIndex >= 0L && this.fCodeIndex + (long)this.fLength >= 0L) {
            return this.fCodeIndex <= currentIndex && currentIndex < this.fCodeIndex + (long)this.fLength;
        }
        throw new InternalError(JDIMessages.LocalVariableImpl_Code_indexes_are_assumed_to_be_always_positive_4);
    }

    public String name() {
        return this.fName;
    }

    public String signature() {
        return this.fSignature;
    }

    public Type type() throws ClassNotLoadedException {
        if (this.fType == null) {
            this.fType = TypeImpl.create(this.virtualMachineImpl(), this.fSignature, this.method().declaringType().classLoader());
        }
        return this.fType;
    }

    public String typeName() {
        if (this.fTypeName == null) {
            this.fTypeName = TypeImpl.signatureToName(this.fSignature);
        }
        return this.fTypeName;
    }

    public byte tag() {
        return TypeImpl.signatureToTag(this.fSignature);
    }

    public MethodImpl method() {
        return this.fMethod;
    }

    public boolean isThis() {
        return this.slot() == 0 && !this.method().isStatic();
    }

    public String toString() {
        return this.fName;
    }

    public String genericSignature() {
        return this.fGenericSignature;
    }
}

