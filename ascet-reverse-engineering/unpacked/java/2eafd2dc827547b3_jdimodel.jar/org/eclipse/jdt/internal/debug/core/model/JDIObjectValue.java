/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.Method
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.Method;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIFieldVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIObjectValue
extends JDIValue
implements IJavaObject {
    private IJavaObject[] fCachedReferences = null;
    private int fSuspendCount = -1;
    private long fPreviousMax;

    public JDIObjectValue(JDIDebugTarget target, ObjectReference object) {
        super(target, (Value)object);
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, boolean superSend) throws DebugException {
        JDIThread javaThread = (JDIThread)thread;
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
        ObjectReference object = this.getUnderlyingObject();
        Method method = null;
        ReferenceType refType = this.getUnderlyingReferenceType();
        try {
            if (superSend) {
                refType = ((ClassType)refType).superclass();
            }
            if ((method = this.concreteMethodByName(refType, selector, signature)) == null) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_11, (Object[])new String[]{selector, signature}), null);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_while_performing_method_lookup_for_selector, (Object[])new String[]{e.toString(), selector, signature}), e);
        }
        Value result = javaThread.invokeMethod(null, object, method, arguments, superSend);
        return JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), result);
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, String typeSignature) throws DebugException {
        JDIThread javaThread = (JDIThread)thread;
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
        ObjectReference object = this.getUnderlyingObject();
        Method method = null;
        ReferenceType refType = this.getUnderlyingReferenceType();
        try {
            while (typeSignature != null && !refType.signature().equals(typeSignature)) {
                if ((refType = ((ClassType)refType).superclass()) != null) continue;
                this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValueMethod_declaring_type_not_found_1, null);
            }
            method = this.concreteMethodByName(refType, selector, signature);
            if (method == null) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_11, (Object[])new String[]{selector, signature}), null);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_while_performing_method_lookup_for_selector, (Object[])new String[]{e.toString(), selector, signature}), e);
        }
        Value result = javaThread.invokeMethod(null, object, method, arguments, true);
        return JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), result);
    }

    private Method concreteMethodByName(ReferenceType refType, String selector, String signature) throws DebugException {
        if (refType instanceof ClassType) {
            return ((ClassType)refType).concreteMethodByName(selector, signature);
        }
        if (refType instanceof ArrayType) {
            return ((ClassType)refType.classObject().referenceType()).superclass().concreteMethodByName(selector, signature);
        }
        this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_method_lookup_failed_for_selector____0____with_signature____1___1, (Object[])new String[]{selector, signature}), null);
        return null;
    }

    public ObjectReference getUnderlyingObject() {
        return (ObjectReference)this.getUnderlyingValue();
    }

    public IJavaFieldVariable getField(String name, boolean superField) throws DebugException {
        ReferenceType ref = this.getUnderlyingReferenceType();
        try {
            Field field;
            if (superField) {
                ref = ((ClassType)ref).superclass();
            }
            if ((field = ref.fieldByName(name)) != null) {
                return new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), field, this.getUnderlyingObject(), this.fLogicalParent);
            }
            Field enclosingThis = null;
            Iterator fields = ref.fields().iterator();
            while (fields.hasNext()) {
                Field fieldTmp = (Field)fields.next();
                if (!fieldTmp.name().startsWith("this$")) continue;
                enclosingThis = fieldTmp;
                break;
            }
            if (enclosingThis != null) {
                return ((JDIObjectValue)new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), enclosingThis, this.getUnderlyingObject(), this.fLogicalParent).getValue()).getField(name, false);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_retrieving_field, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public IJavaFieldVariable getField(String name, String declaringTypeSignature) throws DebugException {
        ReferenceType ref = this.getUnderlyingReferenceType();
        try {
            Field field = null;
            Field fieldTmp = null;
            Iterator fields = ref.allFields().iterator();
            while (fields.hasNext()) {
                fieldTmp = (Field)fields.next();
                if (!name.equals(fieldTmp.name()) || !declaringTypeSignature.equals(fieldTmp.declaringType().signature())) continue;
                field = fieldTmp;
                break;
            }
            if (field != null) {
                return new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), field, this.getUnderlyingObject(), this.fLogicalParent);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_retrieving_field, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public IJavaFieldVariable getField(String name, int superClassLevel) throws DebugException {
        ReferenceType ref = this.getUnderlyingReferenceType();
        try {
            int i = 0;
            while (i < superClassLevel) {
                ref = ((ClassType)ref).superclass();
                ++i;
            }
            Field field = ref.fieldByName(name);
            if (field != null) {
                return new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), field, this.getUnderlyingObject(), this.fLogicalParent);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_retrieving_field, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    protected ReferenceType getUnderlyingReferenceType() throws DebugException {
        try {
            return this.getUnderlyingObject().referenceType();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_retrieving_reference_type, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public IJavaObject getEnclosingObject(int enclosingLevel) throws DebugException {
        JDIObjectValue res = this;
        int i = 0;
        while (i < enclosingLevel) {
            block5: {
                ReferenceType ref = res.getUnderlyingReferenceType();
                try {
                    Field enclosingThis = null;
                    Field fieldTmp = null;
                    Iterator fields = ref.fields().iterator();
                    while (fields.hasNext()) {
                        fieldTmp = (Field)fields.next();
                        if (!fieldTmp.name().startsWith("this$")) continue;
                        enclosingThis = fieldTmp;
                    }
                    if (enclosingThis != null) {
                        JDIDebugTarget debugTarget = (JDIDebugTarget)this.getDebugTarget();
                        JDIFieldVariable fieldVariable = new JDIFieldVariable(debugTarget, enclosingThis, res.getUnderlyingObject(), this.fLogicalParent);
                        res = (JDIObjectValue)fieldVariable.getValue();
                        break block5;
                    }
                    return null;
                }
                catch (RuntimeException e) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_exception_retrieving_field, (Object[])new String[]{e.toString()}), e);
                }
            }
            ++i;
        }
        return res;
    }

    public IJavaThread[] getWaitingThreads() throws DebugException {
        ArrayList<JDIThread> waiting = new ArrayList<JDIThread>();
        try {
            List threads = this.getUnderlyingObject().waitingThreads();
            JDIDebugTarget debugTarget = (JDIDebugTarget)this.getDebugTarget();
            Iterator iter = threads.iterator();
            while (iter.hasNext()) {
                JDIThread jdiThread = debugTarget.findThread((ThreadReference)iter.next());
                if (jdiThread == null) continue;
                waiting.add(jdiThread);
            }
        }
        catch (IncompatibleThreadStateException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_0, e);
        }
        catch (VMDisconnectedException vMDisconnectedException) {
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_0, e);
        }
        return waiting.toArray(new IJavaThread[waiting.size()]);
    }

    public IJavaThread getOwningThread() throws DebugException {
        JDIThread owningThread = null;
        try {
            ThreadReference thread = this.getUnderlyingObject().owningThread();
            JDIDebugTarget debugTarget = (JDIDebugTarget)this.getDebugTarget();
            if (thread != null) {
                owningThread = debugTarget.findThread(thread);
            }
        }
        catch (IncompatibleThreadStateException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_1, e);
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            return null;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_1, e);
        }
        return owningThread;
    }

    public String getReferenceTypeName() throws DebugException {
        try {
            return JDIReferenceType.getGenericName(this.getUnderlyingReferenceType());
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_reference_type_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public long getUniqueId() throws DebugException {
        try {
            ObjectReference underlyingObject = this.getUnderlyingObject();
            if (underlyingObject != null) {
                return underlyingObject.uniqueID();
            }
            return -1L;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_unique_id, (Object[])new String[]{e.toString()}), e);
            return 0L;
        }
    }

    public IJavaObject[] getReferringObjects(long max) throws DebugException {
        if (this.fCachedReferences == null || this.fSuspendCount < ((JDIDebugTarget)this.getDebugTarget()).getSuspendCount() || this.fPreviousMax != max) {
            this.reloadReferringObjects(max);
            this.fPreviousMax = max;
            this.fSuspendCount = ((JDIDebugTarget)this.getDebugTarget()).getSuspendCount();
        }
        return this.fCachedReferences;
    }

    public boolean isReferencesLoaded() {
        return this.fCachedReferences != null;
    }

    protected void reloadReferringObjects(long max) throws DebugException {
        try {
            List list = this.getUnderlyingObject().referringObjects(max);
            IJavaObject[] references = new IJavaObject[list.size()];
            int i = 0;
            while (i < references.length) {
                references[i] = (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)list.get(i)));
                ++i;
            }
            this.fCachedReferences = references;
        }
        catch (RuntimeException e) {
            this.fCachedReferences = null;
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIObjectValue_12, (Object[])new String[]{e.toString()}), e);
        }
    }

    public void disableCollection() throws DebugException {
        if (this.getJavaDebugTarget().supportsSelectiveGarbageCollection()) {
            try {
                this.getUnderlyingObject().disableCollection();
            }
            catch (UnsupportedOperationException unsupportedOperationException) {
                this.getJavaDebugTarget().setSupportsSelectiveGarbageCollection(false);
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_13, e);
            }
        }
    }

    public void enableCollection() throws DebugException {
        if (this.getJavaDebugTarget().supportsSelectiveGarbageCollection()) {
            try {
                this.getUnderlyingObject().enableCollection();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIObjectValue_14, e);
            }
        }
    }
}

