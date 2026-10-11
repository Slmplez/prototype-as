/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ClassObjectReference
 *  com.sun.jdi.Field
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.PrimitiveValue
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.StringReference
 *  com.sun.jdi.Type
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayReference;
import com.sun.jdi.ClassObjectReference;
import com.sun.jdi.Field;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.PrimitiveValue;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.StringReference;
import com.sun.jdi.Type;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIArrayEntryVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIArrayValue;
import org.eclipse.jdt.internal.debug.core.model.JDIClassObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIFieldVariable;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIPrimitiveValue;
import org.eclipse.jdt.internal.debug.core.model.JDIType;

public class JDIValue
extends JDIDebugElement
implements IJavaValue {
    private Value fValue;
    private List fVariables;
    private boolean fAllocated = true;
    protected IJavaValue fLogicalParent;
    static /* synthetic */ Class class$0;

    public JDIValue(JDIDebugTarget target, Value value) {
        super(target);
        this.fValue = value;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaValue");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        return super.getAdapter(adapter);
    }

    public static JDIValue createValue(JDIDebugTarget target, Value value) {
        if (value == null) {
            return new JDINullValue(target);
        }
        if (value instanceof ArrayReference) {
            return new JDIArrayValue(target, (ArrayReference)value);
        }
        if (value instanceof ClassObjectReference) {
            return new JDIClassObjectValue(target, (ClassObjectReference)value);
        }
        if (value instanceof ObjectReference) {
            return new JDIObjectValue(target, (ObjectReference)value);
        }
        if (value instanceof PrimitiveValue) {
            return new JDIPrimitiveValue(target, value);
        }
        return new JDIValue(target, value);
    }

    public String getValueString() throws DebugException {
        if (this.fValue == null) {
            return JDIDebugModelMessages.JDIValue_null_4;
        }
        if (this.fValue instanceof StringReference) {
            try {
                return ((StringReference)this.fValue).value();
            }
            catch (ObjectCollectedException objectCollectedException) {
                return JDIDebugModelMessages.JDIValue_deallocated;
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_value, (Object[])new String[]{e.toString()}), e);
                return null;
            }
        }
        if (this.fValue instanceof ObjectReference) {
            StringBuffer name = new StringBuffer();
            if (this.fValue instanceof ClassObjectReference) {
                name.append('(');
                name.append(((ClassObjectReference)this.fValue).reflectedType());
                name.append(')');
            }
            long id = 0L;
            try {
                id = ((ObjectReference)this.fValue).uniqueID();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_unique_id, (Object[])new String[]{e.toString()}), e);
                return null;
            }
            name.append(" ");
            name.append(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_id_8, (Object[])new String[]{String.valueOf(id)}));
            return name.toString();
        }
        return String.valueOf(this.fValue);
    }

    public String getReferenceTypeName() throws DebugException {
        try {
            if (this.fValue == null) {
                return JDIDebugModelMessages.JDIValue_null_4;
            }
            return this.getUnderlyingType().name();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_reference_type_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public int hashCode() {
        if (this.fValue == null) {
            return this.getClass().hashCode();
        }
        return this.fValue.hashCode();
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof JDIValue) {
            Value other = ((JDIValue)o).getUnderlyingValue();
            if (this.fValue == null) {
                return false;
            }
            if (other == null) {
                return false;
            }
            return this.fValue.equals(other);
        }
        return false;
    }

    public IVariable[] getVariables() throws DebugException {
        List list = this.getVariablesList();
        return list.toArray(new IVariable[list.size()]);
    }

    protected synchronized List getVariablesList() throws DebugException {
        if (this.fVariables != null) {
            return this.fVariables;
        }
        if (this.fValue instanceof ObjectReference) {
            ObjectReference object = (ObjectReference)this.fValue;
            this.fVariables = new ArrayList();
            if (this.isArray()) {
                try {
                    int length = this.getArrayLength();
                    int i = 0;
                    while (i < length) {
                        this.fVariables.add(new JDIArrayEntryVariable(this.getJavaDebugTarget(), this.getArrayReference(), i, this.fLogicalParent));
                        ++i;
                    }
                }
                catch (DebugException e) {
                    if (e.getCause() instanceof ObjectCollectedException) {
                        return Collections.EMPTY_LIST;
                    }
                    throw e;
                }
            }
            List fields = null;
            try {
                ReferenceType refType = object.referenceType();
                fields = refType.allFields();
            }
            catch (ObjectCollectedException objectCollectedException) {
                return Collections.EMPTY_LIST;
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_fields, (Object[])new String[]{e.toString()}), e);
                return null;
            }
            Iterator list = fields.iterator();
            while (list.hasNext()) {
                Field field = (Field)list.next();
                this.fVariables.add(new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), field, object, this.fLogicalParent));
            }
            Collections.sort(this.fVariables, new Comparator(){

                public int compare(Object a, Object b) {
                    return JDIValue.this.sortChildren(a, b);
                }
            });
            return this.fVariables;
        }
        return Collections.EMPTY_LIST;
    }

    protected int sortChildren(Object a, Object b) {
        IJavaVariable v2;
        IJavaVariable v1;
        block5: {
            boolean v2isStatic;
            boolean v1isStatic;
            block4: {
                v1 = (IJavaVariable)a;
                v2 = (IJavaVariable)b;
                try {
                    v1isStatic = v1.isStatic();
                    v2isStatic = v2.isStatic();
                    if (!v1isStatic || v2isStatic) break block4;
                    return -1;
                }
                catch (DebugException de) {
                    this.logError((Exception)((Object)de));
                    return -1;
                }
            }
            if (v1isStatic || !v2isStatic) break block5;
            return 1;
        }
        return v1.getName().compareToIgnoreCase(v2.getName());
    }

    protected boolean isArray() {
        return this.fValue instanceof ArrayReference;
    }

    protected ArrayReference getArrayReference() {
        if (this.isArray()) {
            return (ArrayReference)this.fValue;
        }
        return null;
    }

    public boolean isAllocated() throws DebugException {
        if (this.fAllocated) {
            if (this.fValue instanceof ObjectReference) {
                try {
                    this.fAllocated = !((ObjectReference)this.fValue).isCollected();
                }
                catch (VMDisconnectedException vMDisconnectedException) {
                    this.fAllocated = false;
                }
                catch (RuntimeException e) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_is_collected, (Object[])new String[]{e.toString()}), e);
                }
            } else {
                JDIDebugTarget dt = (JDIDebugTarget)this.getDebugTarget();
                this.fAllocated = dt.isAvailable();
            }
        }
        return this.fAllocated;
    }

    public String getSignature() throws DebugException {
        try {
            if (this.fValue != null) {
                return this.fValue.type().signature();
            }
            return null;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getGenericSignature() throws DebugException {
        try {
            if (this.fValue != null) {
                Type type = this.fValue.type();
                if (type instanceof ReferenceType) {
                    return ((ReferenceType)type).genericSignature();
                }
                return null;
            }
            return null;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public int getArrayLength() throws DebugException {
        if (this.isArray()) {
            try {
                return this.getArrayReference().length();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_length_of_array, (Object[])new String[]{e.toString()}), e);
            }
        }
        return -1;
    }

    protected Value getUnderlyingValue() {
        return this.fValue;
    }

    public IJavaType getJavaType() throws DebugException {
        return JDIType.createType((JDIDebugTarget)this.getDebugTarget(), this.getUnderlyingType());
    }

    protected Type getUnderlyingType() throws DebugException {
        try {
            return this.getUnderlyingValue().type();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIValue_exception_retrieving_type, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String toString() {
        return this.getUnderlyingValue().toString();
    }

    public boolean hasVariables() throws DebugException {
        return this.getVariablesList().size() > 0;
    }

    public void setLogicalParent(IJavaValue logicalParent) {
        this.fLogicalParent = logicalParent;
    }

    public IJavaValue getLogicalParent() {
        return this.fLogicalParent;
    }

    public boolean isNull() {
        return false;
    }
}

