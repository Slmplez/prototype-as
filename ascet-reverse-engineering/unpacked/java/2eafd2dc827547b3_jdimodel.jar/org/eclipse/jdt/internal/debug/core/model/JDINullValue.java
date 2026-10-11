/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ObjectReference
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.Signature
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ObjectReference;
import java.util.Collections;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;

public class JDINullValue
extends JDIObjectValue {
    public JDINullValue(JDIDebugTarget target) {
        super(target, (ObjectReference)null);
    }

    protected List getVariablesList() {
        return Collections.EMPTY_LIST;
    }

    public String getReferenceTypeName() {
        return "null";
    }

    public String getValueString() {
        return "null";
    }

    public String getSignature() {
        return null;
    }

    public int getArrayLength() {
        return -1;
    }

    public IJavaType getJavaType() {
        return null;
    }

    public boolean equals(Object obj) {
        return obj instanceof JDINullValue;
    }

    public int hashCode() {
        return this.getClass().hashCode();
    }

    public String toString() {
        return "null";
    }

    public IJavaFieldVariable getField(String name, boolean superField) {
        return null;
    }

    public IJavaFieldVariable getField(String name, String typeSignature) {
        return null;
    }

    public IJavaThread[] getWaitingThreads() {
        return null;
    }

    public IJavaThread getOwningThread() {
        return null;
    }

    public IJavaObject[] getReferringObjects(long max) {
        return new IJavaObject[0];
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, boolean superSend) throws DebugException {
        return this.npe(selector, signature);
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, String typeSignature) throws DebugException {
        return this.npe(selector, signature);
    }

    private IJavaValue npe(String selector, String signature) throws DebugException {
        StringBuffer buffer = new StringBuffer();
        buffer.append(selector);
        String[] parameterTypes = Signature.getParameterTypes((String)signature);
        buffer.append('(');
        int i = 0;
        while (i < parameterTypes.length) {
            buffer.append(Signature.getSignatureSimpleName((String)parameterTypes[i].replace('/', '.')));
            if (i + 1 < parameterTypes.length) {
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append(')');
        this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDINullValue_0, (Object[])new String[]{buffer.toString()}), null);
        return null;
    }

    public void disableCollection() throws DebugException {
    }

    public void enableCollection() throws DebugException {
    }

    public boolean isNull() {
        return true;
    }
}

