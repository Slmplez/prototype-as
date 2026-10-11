/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ArrayReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InternalException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.ArrayTypeImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;
import org.eclipse.jdi.internal.jdwp.JdwpObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ArrayReferenceImpl
extends ObjectReferenceImpl
implements ArrayReference {
    public static final byte tag = 91;
    private int fLength = -1;

    public ArrayReferenceImpl(VirtualMachineImpl vmImpl, JdwpObjectID objectID) {
        super("ArrayReference", vmImpl, objectID);
    }

    public byte getTag() {
        return 91;
    }

    public Value getValue(int index) throws IndexOutOfBoundsException {
        return (Value)this.getValues(index, 1).get(0);
    }

    public List getValues() {
        return this.getValues(0, -1);
    }

    public List getValues(int firstIndex, int length) throws IndexOutOfBoundsException {
        int arrayLength = this.length();
        if (firstIndex < 0 || firstIndex >= arrayLength) {
            throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_index_1);
        }
        if (length == -1) {
            length = arrayLength - firstIndex;
        } else {
            if (length < -1) {
                throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_number_of_value_to_get_from_array_1);
            }
            if (firstIndex + length > arrayLength) {
                throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Attempted_to_get_more_values_from_array_than_length_of_array_2);
            }
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            this.writeInt(firstIndex, "firstIndex", outData);
            this.writeInt(length, "length", outData);
            JdwpReplyPacket replyPacket = this.requestVM(3330, outBytes);
            switch (replyPacket.errorCode()) {
                case 503: {
                    throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_index_of_array_reference_given_1);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            byte type = this.readByte("type", JdwpID.tagMap(), replyData);
            int readLength = this.readInt("length", replyData);
            switch (type) {
                case 76: 
                case 91: 
                case 99: 
                case 103: 
                case 108: 
                case 115: 
                case 116: {
                    List list = this.readObjectSequence(readLength, replyData);
                    return list;
                }
                case 66: 
                case 67: 
                case 68: 
                case 70: 
                case 73: 
                case 74: 
                case 83: 
                case 90: {
                    List list = this.readPrimitiveSequence(readLength, type, replyData);
                    return list;
                }
            }
            try {
                throw new InternalException(String.valueOf(JDIMessages.ArrayReferenceImpl_Invalid_ArrayReference_Value_tag_encountered___2) + type);
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                return null;
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private List readObjectSequence(int length, DataInputStream in) throws IOException {
        ArrayList<ObjectReferenceImpl> elements = new ArrayList<ObjectReferenceImpl>(length);
        int i = 0;
        while (i < length) {
            ObjectReferenceImpl value = ObjectReferenceImpl.readObjectRefWithTag(this, in);
            elements.add(value);
            ++i;
        }
        return elements;
    }

    private List readPrimitiveSequence(int length, int type, DataInputStream in) throws IOException {
        ArrayList<ValueImpl> elements = new ArrayList<ValueImpl>(length);
        int i = 0;
        while (i < length) {
            ValueImpl value = ValueImpl.readWithoutTag(this, type, in);
            elements.add(value);
            ++i;
        }
        return elements;
    }

    public int length() {
        if (this.fLength == -1) {
            this.initJdwpRequest();
            try {
                try {
                    JdwpReplyPacket replyPacket = this.requestVM(3329, this);
                    this.defaultReplyErrorHandler(replyPacket.errorCode());
                    DataInputStream replyData = replyPacket.dataInStream();
                    this.fLength = this.readInt("length", replyData);
                }
                catch (IOException e) {
                    this.defaultIOExceptionHandler(e);
                    this.handledJdwpRequest();
                    return 0;
                }
            }
            finally {
                this.handledJdwpRequest();
            }
        }
        return this.fLength;
    }

    public void setValue(int index, Value value) throws InvalidTypeException, ClassNotLoadedException {
        ArrayList<Value> list = new ArrayList<Value>(1);
        list.add(value);
        this.setValues(index, list, 0, 1);
    }

    public void setValues(List values) throws InvalidTypeException, ClassNotLoadedException {
        this.setValues(0, values, 0, -1);
    }

    public void setValues(int index, List values, int srcIndex, int length) throws InvalidTypeException, ClassNotLoadedException {
        int valuesSize = values.size();
        int arrayLength = this.length();
        if (index < 0 || index >= arrayLength) {
            throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_index_1);
        }
        if (srcIndex < 0 || srcIndex >= valuesSize) {
            throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_srcIndex_2);
        }
        if (length < -1) {
            throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Invalid_number_of_value_to_set_in_array_3);
        }
        if (length == -1) {
            int lengthTmp = valuesSize - srcIndex;
            length = arrayLength - index;
            if (lengthTmp < length) {
                length = lengthTmp;
            }
        } else {
            if (index + length > arrayLength) {
                throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Attempted_to_set_more_values_in_array_than_length_of_array_3);
            }
            if (srcIndex + length > valuesSize) {
                throw new IndexOutOfBoundsException(JDIMessages.ArrayReferenceImpl_Attempted_to_set_more_values_in_array_than_given_4);
            }
        }
        List checkedValues = this.checkValues(values.subList(srcIndex, srcIndex + length), ((ArrayTypeImpl)this.referenceType()).componentType());
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.write(this, outData);
                this.writeInt(index, "index", outData);
                this.writeInt(length, "length", outData);
                Iterator iterValues = checkedValues.iterator();
                while (iterValues.hasNext()) {
                    ValueImpl value = (ValueImpl)iterValues.next();
                    if (value != null) {
                        value.write(this, outData);
                        continue;
                    }
                    ValueImpl.writeNull(this, outData);
                }
                JdwpReplyPacket replyPacket = this.requestVM(3331, outBytes);
                switch (replyPacket.errorCode()) {
                    case 34: {
                        throw new InvalidTypeException();
                    }
                    case 21: {
                        throw new ClassNotLoadedException(this.type().name());
                    }
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private List checkValues(List values, Type type) throws InvalidTypeException {
        ArrayList<ValueImpl> checkedValues = new ArrayList<ValueImpl>(values.size());
        Iterator iterValues = values.iterator();
        while (iterValues.hasNext()) {
            checkedValues.add(ValueImpl.checkValue((Value)iterValues.next(), type, this.virtualMachineImpl()));
        }
        return checkedValues;
    }

    public String toString() {
        try {
            StringBuffer buf = new StringBuffer(this.type().name());
            buf.insert(buf.length() - 1, this.length());
            buf.append(' ');
            buf.append(this.idString());
            return buf.toString();
        }
        catch (ObjectCollectedException objectCollectedException) {
            return String.valueOf(JDIMessages.ArrayReferenceImpl__Garbage_Collected__ArrayReference_5) + "[" + this.length() + "] " + this.idString();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public static ArrayReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpObjectID ID = new JdwpObjectID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("arrayReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ArrayReferenceImpl mirror = new ArrayReferenceImpl(vmImpl, ID);
        return mirror;
    }
}

