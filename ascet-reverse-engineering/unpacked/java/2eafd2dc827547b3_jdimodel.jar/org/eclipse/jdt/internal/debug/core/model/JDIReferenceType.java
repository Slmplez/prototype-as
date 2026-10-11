/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassLoaderReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Field
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.Signature
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Field;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import com.sun.jdi.VirtualMachine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIFieldVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public abstract class JDIReferenceType
extends JDIType
implements IJavaReferenceType {
    private String[] fDeclaredFields = null;
    private String[] fAllFields = null;

    public JDIReferenceType(JDIDebugTarget target, Type type) {
        super(target, type);
    }

    public String[] getAvailableStrata() {
        List strata = this.getReferenceType().availableStrata();
        return strata.toArray(new String[strata.size()]);
    }

    protected ReferenceType getReferenceType() {
        return (ReferenceType)this.getUnderlyingType();
    }

    public String getDefaultStratum() throws DebugException {
        try {
            return this.getReferenceType().defaultStratum();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIReferenceType_1, e);
            return null;
        }
    }

    public IJavaFieldVariable getField(String name) throws DebugException {
        try {
            ReferenceType type = (ReferenceType)this.getUnderlyingType();
            Field field = type.fieldByName(name);
            if (field != null && field.isStatic()) {
                return new JDIFieldVariable(this.getJavaDebugTarget(), field, type);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_field, (Object[])new String[]{e.toString(), name}), e);
        }
        return null;
    }

    public IJavaClassObject getClassObject() throws DebugException {
        try {
            ReferenceType type = (ReferenceType)this.getUnderlyingType();
            return (IJavaClassObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)type.classObject()));
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIClassType_exception_while_retrieving_class_object, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String[] getAllFieldNames() throws DebugException {
        if (this.fAllFields == null) {
            try {
                List fields = ((ReferenceType)this.getUnderlyingType()).allFields();
                this.fAllFields = new String[fields.size()];
                Iterator iterator = fields.iterator();
                int i = 0;
                while (iterator.hasNext()) {
                    Field field = (Field)iterator.next();
                    this.fAllFields[i] = field.name();
                    ++i;
                }
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIReferenceType_2, e);
            }
        }
        return this.fAllFields;
    }

    public String[] getDeclaredFieldNames() throws DebugException {
        if (this.fDeclaredFields == null) {
            try {
                List fields = ((ReferenceType)this.getUnderlyingType()).fields();
                this.fDeclaredFields = new String[fields.size()];
                Iterator iterator = fields.iterator();
                int i = 0;
                while (iterator.hasNext()) {
                    Field field = (Field)iterator.next();
                    this.fDeclaredFields[i] = field.name();
                    ++i;
                }
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIReferenceType_3, e);
            }
        }
        return this.fDeclaredFields;
    }

    public String[] getSourcePaths(String stratum) throws DebugException {
        try {
            List sourcePaths = this.getReferenceType().sourcePaths(stratum);
            return sourcePaths.toArray(new String[sourcePaths.size()]);
        }
        catch (AbsentInformationException absentInformationException) {
        }
        catch (RuntimeException e) {
            this.requestFailed(JDIDebugModelMessages.JDIReferenceType_4, e, 5010);
        }
        return null;
    }

    public String getSourceName() throws DebugException {
        try {
            return this.getReferenceType().sourceName();
        }
        catch (AbsentInformationException absentInformationException) {
        }
        catch (RuntimeException e) {
            this.requestFailed(JDIDebugModelMessages.JDIReferenceType_4, e, 5010);
        }
        return null;
    }

    public String[] getSourceNames(String stratum) throws DebugException {
        try {
            List sourceNames = this.getReferenceType().sourceNames(stratum);
            return sourceNames.toArray(new String[sourceNames.size()]);
        }
        catch (AbsentInformationException absentInformationException) {
        }
        catch (RuntimeException e) {
            this.requestFailed(JDIDebugModelMessages.JDIReferenceType_4, e, 5010);
        }
        return null;
    }

    public IJavaObject getClassLoaderObject() throws DebugException {
        try {
            ReferenceType type = (ReferenceType)this.getUnderlyingType();
            ClassLoaderReference classLoader = type.classLoader();
            if (classLoader != null) {
                return (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)classLoader));
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceType_0, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public static String getGenericName(ReferenceType type) throws DebugException {
        String[] typeParameters;
        if (type instanceof ArrayType) {
            try {
                Type componentType = ((ArrayType)type).componentType();
                if (componentType instanceof ReferenceType) {
                    return String.valueOf(JDIReferenceType.getGenericName((ReferenceType)componentType)) + "[]";
                }
                return type.name();
            }
            catch (ClassNotLoadedException classNotLoadedException) {}
        }
        String signature = type.signature();
        StringBuffer res = new StringBuffer(JDIReferenceType.getTypeName(signature));
        String genericSignature = type.genericSignature();
        if (genericSignature != null && (typeParameters = Signature.getTypeParameters((String)genericSignature)).length > 0) {
            res.append('<').append(Signature.getTypeVariable((String)typeParameters[0]));
            int i = 1;
            while (i < typeParameters.length) {
                res.append(',').append(Signature.getTypeVariable((String)typeParameters[i]));
                ++i;
            }
            res.append('>');
        }
        return res.toString();
    }

    public static String getTypeName(String genericTypeSignature) {
        int arrayDimension = 0;
        while (genericTypeSignature.charAt(arrayDimension) == '[') {
            ++arrayDimension;
        }
        int parameterStart = genericTypeSignature.indexOf(60);
        StringBuffer name = new StringBuffer();
        if (parameterStart < 0) {
            name.append(genericTypeSignature.substring(arrayDimension + 1, genericTypeSignature.length() - 1).replace('/', '.'));
        } else {
            name.append(genericTypeSignature.substring(arrayDimension + 1, parameterStart).replace('/', '.'));
            name.append(Signature.toString((String)genericTypeSignature).substring(parameterStart - 1 - arrayDimension).replace('/', '.'));
        }
        int i = 0;
        while (i < arrayDimension) {
            name.append("[]");
            ++i;
        }
        return name.toString();
    }

    public String getGenericSignature() throws DebugException {
        return this.getReferenceType().genericSignature();
    }

    public IJavaObject[] getInstances(long max) throws DebugException {
        try {
            List list = this.getReferenceType().instances(max);
            IJavaObject[] instances = new IJavaObject[list.size()];
            int i = 0;
            while (i < instances.length) {
                instances[i] = (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)list.get(i)));
                ++i;
            }
            return instances;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIReferenceType_5, e);
            return null;
        }
    }

    public long getInstanceCount() throws DebugException {
        JDIDebugTarget target = this.getJavaDebugTarget();
        if (target.supportsInstanceRetrieval()) {
            ArrayList<Type> list = new ArrayList<Type>(2);
            list.add(this.getUnderlyingType());
            VirtualMachine vm = this.getVM();
            try {
                long[] counts = vm.instanceCounts(list);
                return counts[0];
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIReferenceType_5, e);
            }
        }
        return -1L;
    }
}

