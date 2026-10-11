/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.Method
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ClassType;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.Method;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIClassType
extends JDIReferenceType
implements IJavaClassType {
    public JDIClassType(JDIDebugTarget target, ClassType type) {
        super(target, (Type)type);
    }

    public IJavaObject newInstance(String signature, IJavaValue[] args, IJavaThread thread) throws DebugException {
        if (this.getUnderlyingType() instanceof ClassType) {
            ClassType clazz = (ClassType)this.getUnderlyingType();
            JDIThread javaThread = (JDIThread)thread;
            List arguments = this.convertArguments(args);
            Method method = null;
            try {
                List methods = clazz.methodsByName("<init>", signature);
                if (methods.isEmpty()) {
                    this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_Type_does_not_implement_cosntructor, (Object[])new String[]{signature}), null);
                } else {
                    method = (Method)methods.get(0);
                }
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_performing_method_lookup_for_constructor, (Object[])new String[]{e.toString(), signature}), e);
            }
            ObjectReference result = javaThread.newInstance(clazz, method, arguments);
            return (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)result));
        }
        this.requestFailed(JDIDebugModelMessages.JDIClassType_Type_is_not_a_class_type, null);
        return null;
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread) throws DebugException {
        if (this.getUnderlyingType() instanceof ClassType) {
            ClassType clazz = (ClassType)this.getUnderlyingType();
            JDIThread javaThread = (JDIThread)thread;
            List arguments = this.convertArguments(args);
            Method method = null;
            try {
                List methods = clazz.methodsByName(selector, signature);
                if (methods.isEmpty()) {
                    this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_Type_does_not_implement_selector, (Object[])new String[]{selector, signature}), null);
                } else {
                    method = (Method)methods.get(0);
                }
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_performing_method_lookup_for_selector, (Object[])new String[]{e.toString(), selector, signature}), e);
            }
            Value result = javaThread.invokeMethod(clazz, null, method, arguments, false);
            return JDIValue.createValue(this.getJavaDebugTarget(), result);
        }
        this.requestFailed(JDIDebugModelMessages.JDIClassType_Type_is_not_a_class_type, null);
        return null;
    }

    protected List convertArguments(IJavaValue[] args) {
        ArrayList<Value> arguments = null;
        if (args == null) {
            arguments = Collections.EMPTY_LIST;
        } else {
            arguments = new ArrayList<Value>(args.length);
            int i = 0;
            while (i < args.length) {
                arguments.add(((JDIValue)args[i]).getUnderlyingValue());
                ++i;
            }
        }
        return arguments;
    }

    public IJavaClassType getSuperclass() throws DebugException {
        try {
            ClassType superclazz = ((ClassType)this.getUnderlyingType()).superclass();
            if (superclazz != null) {
                return (IJavaClassType)((Object)JDIType.createType(this.getJavaDebugTarget(), (Type)superclazz));
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_superclass, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public IJavaInterfaceType[] getAllInterfaces() throws DebugException {
        try {
            List interfaceList = ((ClassType)this.getUnderlyingType()).allInterfaces();
            ArrayList<JDIType> javaInterfaceTypeList = new ArrayList<JDIType>(interfaceList.size());
            Iterator iterator = interfaceList.iterator();
            while (iterator.hasNext()) {
                InterfaceType interfaceType = (InterfaceType)iterator.next();
                if (interfaceType == null) continue;
                javaInterfaceTypeList.add(JDIType.createType(this.getJavaDebugTarget(), (Type)interfaceType));
            }
            IJavaInterfaceType[] javaInterfaceTypeArray = new IJavaInterfaceType[javaInterfaceTypeList.size()];
            javaInterfaceTypeArray = javaInterfaceTypeList.toArray(javaInterfaceTypeArray);
            return javaInterfaceTypeArray;
        }
        catch (RuntimeException re) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_superclass, (Object[])new String[]{re.toString()}), re);
            return new IJavaInterfaceType[0];
        }
    }

    public IJavaInterfaceType[] getInterfaces() throws DebugException {
        try {
            List interfaceList = ((ClassType)this.getUnderlyingType()).interfaces();
            ArrayList<JDIType> javaInterfaceTypeList = new ArrayList<JDIType>(interfaceList.size());
            Iterator iterator = interfaceList.iterator();
            while (iterator.hasNext()) {
                InterfaceType interfaceType = (InterfaceType)iterator.next();
                if (interfaceType == null) continue;
                javaInterfaceTypeList.add(JDIType.createType(this.getJavaDebugTarget(), (Type)interfaceType));
            }
            IJavaInterfaceType[] javaInterfaceTypeArray = new IJavaInterfaceType[javaInterfaceTypeList.size()];
            javaInterfaceTypeArray = javaInterfaceTypeList.toArray(javaInterfaceTypeArray);
            return javaInterfaceTypeArray;
        }
        catch (RuntimeException re) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_superclass, (Object[])new String[]{re.toString()}), re);
            return new IJavaInterfaceType[0];
        }
    }

    public boolean isEnum() {
        return ((ClassType)this.getReferenceType()).isEnum();
    }
}

