/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.PrimitiveType
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  com.sun.jdi.VoidType
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.InternalException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.Mirror;
import com.sun.jdi.PrimitiveType;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import com.sun.jdi.VoidType;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.ArrayReferenceImpl;
import org.eclipse.jdi.internal.BooleanValueImpl;
import org.eclipse.jdi.internal.ByteValueImpl;
import org.eclipse.jdi.internal.CharValueImpl;
import org.eclipse.jdi.internal.ClassLoaderReferenceImpl;
import org.eclipse.jdi.internal.ClassObjectReferenceImpl;
import org.eclipse.jdi.internal.DoubleValueImpl;
import org.eclipse.jdi.internal.FloatValueImpl;
import org.eclipse.jdi.internal.IntegerValueImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LongValueImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.ShortValueImpl;
import org.eclipse.jdi.internal.StringReferenceImpl;
import org.eclipse.jdi.internal.ThreadGroupReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VoidValueImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;
import org.eclipse.jdi.internal.jdwp.JdwpObjectID;

public abstract class ValueImpl
extends MirrorImpl
implements Value {
    protected ValueImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    public abstract Type type();

    public abstract byte getTag();

    public static ValueImpl readWithTag(MirrorImpl target, DataInputStream in) throws IOException {
        byte tag = target.readByte("object tag", JdwpID.tagMap(), in);
        return ValueImpl.readWithoutTag(target, tag, in);
    }

    public static ValueImpl readWithoutTag(MirrorImpl target, int type, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        switch (type) {
            case 91: {
                return ArrayReferenceImpl.read(target, in);
            }
            case 108: {
                return ClassLoaderReferenceImpl.read(target, in);
            }
            case 99: {
                return ClassObjectReferenceImpl.read(target, in);
            }
            case 115: {
                return StringReferenceImpl.read(target, in);
            }
            case 76: {
                return ObjectReferenceImpl.readObjectRefWithoutTag(target, in);
            }
            case 103: {
                return ThreadGroupReferenceImpl.read(target, in);
            }
            case 116: {
                return ThreadReferenceImpl.read(target, in);
            }
            case 90: {
                return BooleanValueImpl.read(target, in);
            }
            case 66: {
                return ByteValueImpl.read(target, in);
            }
            case 67: {
                return CharValueImpl.read(target, in);
            }
            case 68: {
                return DoubleValueImpl.read(target, in);
            }
            case 70: {
                return FloatValueImpl.read(target, in);
            }
            case 73: {
                return IntegerValueImpl.read(target, in);
            }
            case 74: {
                return LongValueImpl.read(target, in);
            }
            case 83: {
                return ShortValueImpl.read(target, in);
            }
            case 86: {
                return new VoidValueImpl(vmImpl);
            }
            case 0: {
                return null;
            }
        }
        throw new InternalException(String.valueOf(JDIMessages.ValueImpl_Invalid_Value_tag_encountered___1) + type);
    }

    public void writeWithTag(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeByte(this.getTag(), "tag", JdwpID.tagMap(), out);
        this.write(target, out);
    }

    public abstract void write(MirrorImpl var1, DataOutputStream var2) throws IOException;

    public static void writeNull(MirrorImpl target, DataOutputStream out) throws IOException {
        JdwpObjectID nullID = new JdwpObjectID(target.virtualMachineImpl());
        nullID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("objectReference", nullID.value());
        }
    }

    public static void writeNullWithTag(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeByte((byte)76, "tag", JdwpID.tagMap(), out);
        ValueImpl.writeNull(target, out);
    }

    protected static List checkValues(List values, List types, VirtualMachineImpl vm) throws InvalidTypeException {
        ArrayList<ValueImpl> result = new ArrayList<ValueImpl>(values.size());
        Iterator iterValues = values.iterator();
        Iterator iterTypes = types.iterator();
        while (iterValues.hasNext()) {
            Value value = (Value)iterValues.next();
            Type type = (Type)iterTypes.next();
            result.add(ValueImpl.checkValue(value, type, vm));
        }
        return result;
    }

    public static ValueImpl checkValue(Value value, Type type, VirtualMachineImpl vm) throws InvalidTypeException {
        if (value == null) {
            if (!(type instanceof PrimitiveType)) {
                return null;
            }
        } else {
            vm.checkVM((Mirror)value);
            TypeImpl valueType = (TypeImpl)value.type();
            if (valueType instanceof PrimitiveType && type instanceof PrimitiveType) {
                return ValueImpl.checkPrimitiveValue((PrimitiveValueImpl)value, (PrimitiveTypeImpl)valueType, (PrimitiveTypeImpl)type);
            }
            if (valueType instanceof ReferenceType && type instanceof ReferenceType) {
                ValueImpl.checkReferenceType((ReferenceType)valueType, (ReferenceType)type);
                return (ValueImpl)value;
            }
            if (valueType instanceof VoidType && type instanceof VoidType) {
                return (VoidValueImpl)value;
            }
        }
        throw new InvalidTypeException(MessageFormat.format((String)JDIMessages.ValueImpl_Type_of_the_value_not_compatible_with_the_expected_type__1, (Object[])new String[]{value != null ? value.type().name() : "null", type.name()}));
    }

    private static void checkReferenceType(ReferenceType valueType, ReferenceType type) throws InvalidTypeException {
        block19: {
            block20: {
                block18: {
                    if (!(valueType instanceof ArrayType)) break block18;
                    if (type instanceof ArrayType) {
                        try {
                            Type valueComponentType = ((ArrayType)valueType).componentType();
                            Type componentType = ((ArrayType)type).componentType();
                            if (valueComponentType instanceof PrimitiveType) {
                                if (valueComponentType.equals(componentType)) {
                                    return;
                                }
                            } else if (valueComponentType instanceof ReferenceType && componentType instanceof ReferenceType) {
                                ValueImpl.checkReferenceType((ReferenceType)valueComponentType, (ReferenceType)componentType);
                                return;
                            }
                        }
                        catch (ClassNotLoadedException classNotLoadedException) {}
                    } else if (type.signature().equals("Ljava/lang/Object;")) {
                        return;
                    }
                    break block19;
                }
                if (!(type instanceof ClassType)) break block20;
                if (valueType instanceof ClassType) {
                    ClassType superClass = (ClassType)valueType;
                    while (superClass != null) {
                        if (superClass.equals((Object)type)) {
                            return;
                        }
                        superClass = superClass.superclass();
                    }
                } else if (valueType instanceof InterfaceType && type.signature().equals("Ljava/lang/Object;")) {
                    return;
                }
                break block19;
            }
            if (!(type instanceof InterfaceType)) break block19;
            if (valueType instanceof InterfaceType) {
                if (ValueImpl.checkInterfaceType((InterfaceType)valueType, (InterfaceType)type)) {
                    return;
                }
            } else {
                List interfaces = ((ClassType)valueType).allInterfaces();
                Iterator iter = interfaces.iterator();
                while (iter.hasNext()) {
                    if (!ValueImpl.checkInterfaceType((InterfaceType)iter.next(), (InterfaceType)type)) continue;
                    return;
                }
            }
        }
        throw new InvalidTypeException(MessageFormat.format((String)JDIMessages.ValueImpl_Type_of_the_value_not_compatible_with_the_expected_type__1, (Object[])new String[]{valueType.name(), type.name()}));
    }

    private static boolean checkInterfaceType(InterfaceType valueType, InterfaceType type) {
        if (valueType.equals((Object)type)) {
            return true;
        }
        List superInterfaces = valueType.superinterfaces();
        Iterator iter = superInterfaces.iterator();
        while (iter.hasNext()) {
            if (!ValueImpl.checkInterfaceType((InterfaceType)iter.next(), type)) continue;
            return true;
        }
        return false;
    }

    protected static ValueImpl checkPrimitiveValue(PrimitiveValueImpl value, PrimitiveTypeImpl valueType, PrimitiveTypeImpl type) throws InvalidTypeException {
        char typeSignature;
        char valueTypeSignature = valueType.signature().charAt(0);
        if (valueTypeSignature == (typeSignature = type.signature().charAt(0))) {
            return value;
        }
        VirtualMachineImpl vm = value.virtualMachineImpl();
        switch (typeSignature) {
            case 'D': {
                if (valueTypeSignature == 'Z') break;
                return new DoubleValueImpl(vm, new Double(value.doubleValue()));
            }
            case 'F': {
                if (valueTypeSignature == 'Z' || valueTypeSignature == 'D') break;
                return new FloatValueImpl(vm, new Float(value.floatValue()));
            }
            case 'J': {
                if (valueTypeSignature == 'Z' || valueTypeSignature == 'D' || valueTypeSignature == 'F') break;
                return new LongValueImpl(vm, new Long(value.longValue()));
            }
            case 'I': {
                if (valueTypeSignature != 'B' && valueTypeSignature != 'C' && valueTypeSignature != 'S') break;
                return new IntegerValueImpl(vm, new Integer(value.intValue()));
            }
            case 'S': {
                if (valueTypeSignature != 'B') break;
                return new ShortValueImpl(vm, new Short(value.shortValue()));
            }
        }
        throw new InvalidTypeException(MessageFormat.format((String)JDIMessages.ValueImpl_Type_of_the_value_not_compatible_with_the_expected_type__1, (Object[])new String[]{valueType.name(), type.name()}));
    }
}

