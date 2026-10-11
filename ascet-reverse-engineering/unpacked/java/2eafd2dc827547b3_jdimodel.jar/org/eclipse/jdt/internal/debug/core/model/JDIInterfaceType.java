/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.Type
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ClassType;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIType;

public class JDIInterfaceType
extends JDIReferenceType
implements IJavaInterfaceType {
    public JDIInterfaceType(JDIDebugTarget target, InterfaceType type) {
        super(target, (Type)type);
    }

    public IJavaClassType[] getImplementors() throws DebugException {
        try {
            List implementorList = ((InterfaceType)this.getUnderlyingType()).implementors();
            ArrayList<JDIType> javaClassTypeList = new ArrayList<JDIType>(implementorList.size());
            Iterator iterator = implementorList.iterator();
            while (iterator.hasNext()) {
                ClassType classType = (ClassType)iterator.next();
                if (classType == null) continue;
                javaClassTypeList.add(JDIType.createType(this.getJavaDebugTarget(), (Type)classType));
            }
            IJavaClassType[] javaClassTypeArray = new IJavaClassType[javaClassTypeList.size()];
            javaClassTypeArray = javaClassTypeList.toArray(javaClassTypeArray);
            return javaClassTypeArray;
        }
        catch (RuntimeException re) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_superclass, (Object[])new String[]{re.toString()}), re);
            return new IJavaClassType[0];
        }
    }

    public IJavaInterfaceType[] getSubInterfaces() throws DebugException {
        try {
            List subList = ((InterfaceType)this.getUnderlyingType()).subinterfaces();
            ArrayList<JDIType> javaInterfaceTypeList = new ArrayList<JDIType>(subList.size());
            Iterator iterator = subList.iterator();
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

    public IJavaInterfaceType[] getSuperInterfaces() throws DebugException {
        try {
            List superList = ((InterfaceType)this.getUnderlyingType()).superinterfaces();
            ArrayList<JDIType> javaInterfaceTypeList = new ArrayList<JDIType>(superList.size());
            Iterator iterator = superList.iterator();
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
}

