/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.ReferenceType
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.ReferenceType;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MethodImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class LocationImpl
extends MirrorImpl
implements Location {
    public static final int LINE_NR_NOT_AVAILABLE = -1;
    MethodImpl fMethod;
    long fIndex;

    public LocationImpl(VirtualMachineImpl vmImpl, MethodImpl method, long index) {
        super("Location", vmImpl);
        this.fMethod = method;
        this.fIndex = index;
    }

    public long codeIndex() {
        return this.fIndex;
    }

    public ReferenceType declaringType() {
        return this.fMethod.declaringType();
    }

    public int hashCode() {
        return this.fMethod.hashCode() + (int)this.fIndex;
    }

    public boolean equals(Object object) {
        if (object != null && object.getClass().equals(this.getClass())) {
            LocationImpl loc = (LocationImpl)object;
            return this.fMethod.equals(loc.fMethod) && this.fIndex == loc.fIndex;
        }
        return false;
    }

    public int compareTo(Object object) {
        if (object == null || !object.getClass().equals(this.getClass())) {
            throw new ClassCastException(JDIMessages.LocationImpl_Can__t_compare_location_to_given_object_1);
        }
        LocationImpl location2 = (LocationImpl)object;
        if (!this.method().equals((Object)location2.method())) {
            return this.method().compareTo((Object)location2.method());
        }
        if (this.codeIndex() < 0L || location2.codeIndex() < 0L) {
            throw new InternalError(JDIMessages.LocationImpl_Code_indexes_are_assumed_to_be_always_positive_2);
        }
        if (this.codeIndex() < location2.codeIndex()) {
            return -1;
        }
        if (this.codeIndex() > location2.codeIndex()) {
            return 1;
        }
        return 0;
    }

    public int lineNumber() {
        return this.lineNumber(this.virtualMachine().getDefaultStratum());
    }

    public Method method() {
        return this.fMethod;
    }

    public String sourceName() throws AbsentInformationException {
        return this.sourceName(this.virtualMachine().getDefaultStratum());
    }

    public String toString() {
        try {
            return MessageFormat.format((String)JDIMessages.LocationImpl_sourcename___0___line___1__3, (Object[])new String[]{this.sourceName(), Integer.toString(this.lineNumber())});
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fMethod.writeWithReferenceTypeWithTag(target, out);
        target.writeLong(this.fIndex, "index", out);
    }

    public static LocationImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MethodImpl method = MethodImpl.readWithReferenceTypeWithTag(target, in);
        long index = target.readLong("index", in);
        if (method == null) {
            return null;
        }
        return new LocationImpl(vmImpl, method, index);
    }

    public int lineNumber(String stratum) {
        return this.fMethod.referenceTypeImpl().lineNumber(this.fIndex, this.fMethod, stratum);
    }

    public String sourceName(String stratum) throws AbsentInformationException {
        return this.fMethod.referenceTypeImpl().sourceName(this.fIndex, this.fMethod, stratum);
    }

    public String sourcePath(String stratum) throws AbsentInformationException {
        return this.fMethod.referenceTypeImpl().sourcePath(this.fIndex, this.fMethod, stratum);
    }

    public String sourcePath() throws AbsentInformationException {
        return this.sourcePath(this.virtualMachine().getDefaultStratum());
    }
}

