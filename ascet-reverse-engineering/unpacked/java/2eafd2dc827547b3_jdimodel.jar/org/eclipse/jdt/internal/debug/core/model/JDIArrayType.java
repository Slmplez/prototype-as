/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayReference;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaArrayType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIArrayType
extends JDIReferenceType
implements IJavaArrayType {
    public JDIArrayType(JDIDebugTarget target, ArrayType type) {
        super(target, (Type)type);
    }

    public IJavaArray newInstance(int size) throws DebugException {
        try {
            ArrayReference ar = ((ArrayType)this.getUnderlyingType()).newInstance(size);
            return (IJavaArray)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)ar));
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayType_exception_while_creating_new_instance_of_array, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public IJavaType getComponentType() throws DebugException {
        try {
            Type type = ((ArrayType)this.getUnderlyingType()).componentType();
            return JDIType.createType(this.getJavaDebugTarget(), type);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayType_exception_while_retrieving_component_type_of_array, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayType_exception_while_retrieving_component_type_of_array, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }
}

