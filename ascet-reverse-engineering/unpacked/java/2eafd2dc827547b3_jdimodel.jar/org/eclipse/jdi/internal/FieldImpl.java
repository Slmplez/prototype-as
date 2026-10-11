/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Field
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Field;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.AccessibleImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.TypeComponentImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpFieldID;

public class FieldImpl
extends TypeComponentImpl
implements Field {
    private JdwpFieldID fFieldID;
    private Type fType;
    private String fTypeName;

    public FieldImpl(VirtualMachineImpl vmImpl, ReferenceTypeImpl declaringType, JdwpFieldID ID, String name, String signature, String genericSignature, int modifierBits) {
        super("Field", vmImpl, declaringType, name, signature, genericSignature, modifierBits);
        this.fFieldID = ID;
    }

    public void flushStoredJdwpResults() {
    }

    public JdwpFieldID getFieldID() {
        return this.fFieldID;
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fFieldID.equals(((FieldImpl)object).fFieldID) && this.referenceTypeImpl().equals(((FieldImpl)object).referenceTypeImpl());
    }

    public int compareTo(Object object) {
        int index2;
        if (object == null || !object.getClass().equals(this.getClass())) {
            throw new ClassCastException(JDIMessages.FieldImpl_Can__t_compare_field_to_given_object_1);
        }
        Field type2 = (Field)object;
        if (!this.declaringType().equals((Object)type2.declaringType())) {
            return this.declaringType().compareTo((Object)type2.declaringType());
        }
        int index1 = this.declaringType().fields().indexOf(this);
        if (index1 < (index2 = type2.declaringType().fields().indexOf(type2))) {
            return -1;
        }
        if (index1 > index2) {
            return 1;
        }
        return 0;
    }

    public int hashCode() {
        return this.fFieldID.hashCode();
    }

    public String typeName() {
        if (this.fTypeName == null) {
            this.fTypeName = TypeImpl.signatureToName(this.signature());
        }
        return this.fTypeName;
    }

    public Type type() throws ClassNotLoadedException {
        if (this.fType == null) {
            this.fType = TypeImpl.create(this.virtualMachineImpl(), this.signature(), this.declaringType().classLoader());
        }
        return this.fType;
    }

    public boolean isTransient() {
        return (this.fModifierBits & 0x80) != 0;
    }

    public boolean isVolatile() {
        return (this.fModifierBits & 0x40) != 0;
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fFieldID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("field", this.fFieldID.value());
        }
    }

    public void writeWithReferenceType(MirrorImpl target, DataOutputStream out) throws IOException {
        this.referenceTypeImpl().write(target, out);
        this.write(target, out);
    }

    public static FieldImpl readWithReferenceTypeWithTag(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ReferenceTypeImpl referenceType = ReferenceTypeImpl.readWithTypeTag(target, in);
        if (referenceType == null) {
            return null;
        }
        JdwpFieldID ID = new JdwpFieldID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("field", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        FieldImpl field = referenceType.findField(ID);
        if (field == null) {
            throw new InternalError(JDIMessages.FieldImpl_Got_FieldID_of_ReferenceType_that_is_not_a_member_of_the_ReferenceType_2);
        }
        return field;
    }

    public static FieldImpl readWithNameSignatureModifiers(ReferenceTypeImpl target, ReferenceTypeImpl referenceType, boolean withGenericSignature, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpFieldID ID = new JdwpFieldID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("field", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        String name = target.readString("name", in);
        String signature = target.readString("signature", in);
        String genericSignature = null;
        if (withGenericSignature && "".equals(genericSignature = target.readString("generic signature", in))) {
            genericSignature = null;
        }
        int modifierBits = target.readInt("modifiers", AccessibleImpl.getModifierStrings(), in);
        FieldImpl mirror = new FieldImpl(vmImpl, referenceType, ID, name, signature, genericSignature, modifierBits);
        return mirror;
    }

    public boolean isEnumConstant() {
        return (this.fModifierBits & 0x100) != 0;
    }
}

