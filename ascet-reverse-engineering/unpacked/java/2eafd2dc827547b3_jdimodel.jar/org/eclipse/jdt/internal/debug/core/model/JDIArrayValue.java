/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IIndexedValue
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IIndexedValue;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIArrayEntryVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIArrayValue
extends JDIObjectValue
implements IJavaArray,
IIndexedValue {
    private int fLength = -1;

    public JDIArrayValue(JDIDebugTarget target, ArrayReference value) {
        super(target, (ObjectReference)value);
    }

    public IJavaValue[] getValues() throws DebugException {
        List list = this.getUnderlyingValues();
        int count = list.size();
        IJavaValue[] values = new IJavaValue[count];
        JDIDebugTarget target = (JDIDebugTarget)this.getDebugTarget();
        int i = 0;
        while (i < count) {
            Value value = (Value)list.get(i);
            values[i] = JDIValue.createValue(target, value);
            ++i;
        }
        return values;
    }

    public IJavaValue getValue(int index) throws DebugException {
        Value v = this.getUnderlyingValue(index);
        return JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), v);
    }

    public synchronized int getLength() throws DebugException {
        if (this.fLength == -1) {
            try {
                this.fLength = this.getArrayReference().length();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_retrieving_array_length, (Object[])new String[]{e.toString()}), e);
            }
        }
        return this.fLength;
    }

    public void setValue(int index, IJavaValue value) throws DebugException {
        try {
            this.getArrayReference().setValue(index, ((JDIValue)value).getUnderlyingValue());
        }
        catch (IndexOutOfBoundsException e) {
            throw e;
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
    }

    protected ArrayReference getArrayReference() {
        return (ArrayReference)this.getUnderlyingValue();
    }

    protected Value getUnderlyingValue(int index) throws DebugException {
        try {
            return this.getArrayReference().getValue(index);
        }
        catch (IndexOutOfBoundsException e) {
            throw e;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_retrieving_value_from_array, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected List getUnderlyingValues() throws DebugException {
        try {
            return this.getArrayReference().getValues();
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            return Collections.EMPTY_LIST;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_retrieving_values_from_array, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public int getSize() throws DebugException {
        return this.getLength();
    }

    public IVariable getVariable(int offset) throws DebugException {
        if (offset >= this.getLength()) {
            this.requestFailed(JDIDebugModelMessages.JDIArrayValue_6, null);
        }
        return new JDIArrayEntryVariable(this.getJavaDebugTarget(), this.getArrayReference(), offset, this.fLogicalParent);
    }

    public IVariable[] getVariables(int offset, int length) throws DebugException {
        if (offset >= this.getLength()) {
            this.requestFailed(JDIDebugModelMessages.JDIArrayValue_6, null);
        }
        if (offset + length - 1 >= this.getLength()) {
            this.requestFailed(JDIDebugModelMessages.JDIArrayValue_8, null);
        }
        IVariable[] variables = new IVariable[length];
        int index = offset;
        int i = 0;
        while (i < length) {
            variables[i] = new JDIArrayEntryVariable(this.getJavaDebugTarget(), this.getArrayReference(), index, this.fLogicalParent);
            ++index;
            ++i;
        }
        return variables;
    }

    public int getInitialOffset() {
        return 0;
    }

    public boolean hasVariables() throws DebugException {
        return this.getLength() > 0;
    }

    public void setValues(int offset, int length, IJavaValue[] values, int startOffset) throws DebugException {
        try {
            ArrayList<Value> list = new ArrayList<Value>(values.length);
            int i = 0;
            while (i < values.length) {
                list.add(((JDIValue)values[i]).getUnderlyingValue());
                ++i;
            }
            this.getArrayReference().setValues(offset, list, startOffset, length);
        }
        catch (IndexOutOfBoundsException e) {
            throw e;
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayValue_exception_while_setting_value_in_array, (Object[])new String[]{e.toString()}), e);
        }
    }

    public void setValues(IJavaValue[] values) throws DebugException {
        int length = Math.min(values.length, this.getSize());
        this.setValues(0, length, values, 0);
    }
}

