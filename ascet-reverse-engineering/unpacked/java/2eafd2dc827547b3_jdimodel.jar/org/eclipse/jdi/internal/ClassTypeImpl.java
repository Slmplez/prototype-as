/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.InvocationException
 *  com.sun.jdi.Method
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.InvocationException;
import com.sun.jdi.Method;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.ClassObjectReferenceImpl;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MethodImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpClassID;
import org.eclipse.jdi.internal.jdwp.JdwpClassObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ClassTypeImpl
extends ReferenceTypeImpl
implements ClassType {
    public static final byte typeTag = 1;
    private ClassTypeImpl fSuperclass = null;

    public ClassTypeImpl(VirtualMachineImpl vmImpl, JdwpClassID classID) {
        super("ClassType", vmImpl, classID);
    }

    public ClassTypeImpl(VirtualMachineImpl vmImpl, JdwpClassID classID, String signature, String genericSignature) {
        super("ClassType", vmImpl, classID, signature, genericSignature);
    }

    public byte typeTag() {
        return 1;
    }

    public Value createNullValue() {
        return new ClassObjectReferenceImpl(this.virtualMachineImpl(), new JdwpClassObjectID(this.virtualMachineImpl()));
    }

    public void flushStoredJdwpResults() {
        super.flushStoredJdwpResults();
        Iterator itr = this.virtualMachineImpl().allCachedRefTypes();
        while (itr.hasNext()) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
            if (!(refType instanceof ClassTypeImpl)) continue;
            ClassTypeImpl classType = (ClassTypeImpl)refType;
            if (classType.fSuperclass == null || !classType.fSuperclass.equals(this)) continue;
            classType.flushStoredJdwpResults();
        }
        this.fSuperclass = null;
    }

    private int optionsToJdwpOptions(int options) {
        int jdwpOptions = 0;
        if ((options & 1) != 0) {
            jdwpOptions |= 1;
        }
        return jdwpOptions;
    }

    public Method concreteMethodByName(String name, String signature) {
        Iterator methods = this.methods().iterator();
        while (methods.hasNext()) {
            MethodImpl method = (MethodImpl)methods.next();
            if (!method.name().equals(name) || !method.signature().equals(signature)) continue;
            if (method.isAbstract()) {
                return null;
            }
            return method;
        }
        if (this.superclass() != null) {
            return this.superclass().concreteMethodByName(name, signature);
        }
        return null;
    }

    public Value invokeMethod(ThreadReference thread, Method method, List arguments, int options) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException {
        this.checkVM((Mirror)thread);
        this.checkVM((Mirror)method);
        ThreadReferenceImpl threadImpl = (ThreadReferenceImpl)thread;
        MethodImpl methodImpl = (MethodImpl)method;
        if (!this.visibleMethods().contains(method)) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Class_does_not_contain_given_method_1);
        }
        if (method.argumentTypeNames().size() != arguments.size()) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Number_of_arguments_doesn__t_match_2);
        }
        if (method.isConstructor() || method.isStaticInitializer()) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Method_is_constructor_or_intitializer_3);
        }
        List checkedArguments = ValueImpl.checkValues(arguments, method.argumentTypes(), this.virtualMachineImpl());
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            threadImpl.write(this, outData);
            methodImpl.write(this, outData);
            this.writeInt(checkedArguments.size(), "size", outData);
            Iterator iter = checkedArguments.iterator();
            while (iter.hasNext()) {
                ValueImpl elt = (ValueImpl)iter.next();
                if (elt != null) {
                    elt.writeWithTag(this, outData);
                    continue;
                }
                ValueImpl.writeNullWithTag(this, outData);
            }
            this.writeInt(this.optionsToJdwpOptions(options), "options", MethodImpl.getInvokeOptions(), outData);
            JdwpReplyPacket replyPacket = this.requestVM(771, outBytes);
            switch (replyPacket.errorCode()) {
                case 23: {
                    throw new IllegalArgumentException();
                }
                case 34: {
                    throw new InvalidTypeException();
                }
                case 21: {
                    throw new ClassNotLoadedException(this.name());
                }
                case 10: {
                    throw new IncompatibleThreadStateException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ValueImpl value = ValueImpl.readWithTag(this, replyData);
            ObjectReferenceImpl exception = ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            if (exception != null) {
                throw new InvocationException((ObjectReference)exception);
            }
            ValueImpl valueImpl = value;
            return valueImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public ObjectReference newInstance(ThreadReference thread, Method method, List arguments, int options) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException {
        this.checkVM((Mirror)thread);
        this.checkVM((Mirror)method);
        ThreadReferenceImpl threadImpl = (ThreadReferenceImpl)thread;
        MethodImpl methodImpl = (MethodImpl)method;
        if (!this.methods().contains(method)) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Class_does_not_contain_given_method_4);
        }
        if (method.argumentTypeNames().size() != arguments.size()) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Number_of_arguments_doesn__t_match_5);
        }
        if (!method.isConstructor()) {
            throw new IllegalArgumentException(JDIMessages.ClassTypeImpl_Method_is_not_a_constructor_6);
        }
        List checkedArguments = ValueImpl.checkValues(arguments, method.argumentTypes(), this.virtualMachineImpl());
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            threadImpl.write(this, outData);
            methodImpl.write(this, outData);
            this.writeInt(checkedArguments.size(), "size", outData);
            Iterator iter = checkedArguments.iterator();
            while (iter.hasNext()) {
                ValueImpl elt = (ValueImpl)iter.next();
                if (elt != null) {
                    this.checkVM(elt);
                    elt.writeWithTag(this, outData);
                    continue;
                }
                ValueImpl.writeNullWithTag(this, outData);
            }
            this.writeInt(this.optionsToJdwpOptions(options), "options", MethodImpl.getInvokeOptions(), outData);
            JdwpReplyPacket replyPacket = this.requestVM(772, outBytes);
            switch (replyPacket.errorCode()) {
                case 23: {
                    throw new IllegalArgumentException();
                }
                case 34: {
                    throw new InvalidTypeException();
                }
                case 21: {
                    throw new ClassNotLoadedException(this.name());
                }
                case 10: {
                    throw new IncompatibleThreadStateException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ObjectReferenceImpl object = ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            ObjectReferenceImpl exception = ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            if (exception != null) {
                throw new InvocationException((ObjectReference)exception);
            }
            ObjectReferenceImpl objectReferenceImpl = object;
            return objectReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void setValue(Field field, Value value) throws InvalidTypeException, ClassNotLoadedException {
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.write(this, outData);
                this.writeInt(1, "size", outData);
                this.checkVM((Mirror)field);
                ((FieldImpl)field).write(this, outData);
                ValueImpl checkedValue = ValueImpl.checkValue(value, field.type(), this.virtualMachineImpl());
                if (checkedValue != null) {
                    checkedValue.write(this, outData);
                } else {
                    ValueImpl.writeNull(this, outData);
                }
                JdwpReplyPacket replyPacket = this.requestVM(770, outBytes);
                switch (replyPacket.errorCode()) {
                    case 34: {
                        throw new InvalidTypeException();
                    }
                    case 21: {
                        throw new ClassNotLoadedException(this.name());
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

    public List subclasses() {
        ArrayList<ClassTypeImpl> subclasses = new ArrayList<ClassTypeImpl>();
        Iterator itr = this.virtualMachineImpl().allRefTypes();
        while (itr.hasNext()) {
            try {
                ClassTypeImpl classType;
                ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
                if (!(refType instanceof ClassTypeImpl) || (classType = (ClassTypeImpl)refType).superclass() == null || !classType.superclass().equals((Object)this)) continue;
                subclasses.add(classType);
            }
            catch (ClassNotPreparedException classNotPreparedException) {}
        }
        return subclasses;
    }

    public ClassType superclass() {
        if (this.fSuperclass != null) {
            return this.fSuperclass;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(769, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ClassTypeImpl classTypeImpl = this.fSuperclass = ClassTypeImpl.read(this, replyData);
            return classTypeImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public static ClassTypeImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpClassID ID = new JdwpClassID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("classType", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ClassTypeImpl mirror = (ClassTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ClassTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        return mirror;
    }

    public static ClassTypeImpl readWithSignature(MirrorImpl target, boolean withGenericSignature, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpClassID ID = new JdwpClassID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("classType", ID.value());
        }
        String signature = target.readString("signature", in);
        String genericSignature = null;
        if (withGenericSignature) {
            genericSignature = target.readString("generic signature", in);
        }
        if (ID.isNull()) {
            return null;
        }
        ClassTypeImpl mirror = (ClassTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ClassTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        mirror.setSignature(signature);
        mirror.setGenericSignature(genericSignature);
        return mirror;
    }

    public boolean isEnum() {
        if (this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5)) {
            ClassType superClass = this.superclass();
            return superClass != null && "<E:Ljava/lang/Enum<TE;>;>Ljava/lang/Object;Ljava/lang/Comparable<TE;>;Ljava/io/Serializable;".equals(superClass.genericSignature());
        }
        return false;
    }
}

