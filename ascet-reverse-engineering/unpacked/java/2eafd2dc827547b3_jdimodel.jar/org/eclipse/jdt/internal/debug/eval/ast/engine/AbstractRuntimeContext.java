/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.InvocationException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.InvocationException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public abstract class AbstractRuntimeContext
implements IRuntimeContext {
    private IJavaObject fClassLoader;
    private IJavaClassType fJavaLangClass;
    protected IJavaProject fProject;
    public static final String CLASS = "java.lang.Class";
    public static final String FOR_NAME = "forName";
    public static final String FOR_NAME_SIGNATURE = "(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;";

    public AbstractRuntimeContext(IJavaProject project) {
        this.fProject = project;
    }

    protected IJavaObject getClassLoaderObject() throws CoreException {
        if (this.fClassLoader == null) {
            this.fClassLoader = this.getReceivingType().getClassLoaderObject();
        }
        return this.fClassLoader;
    }

    protected IJavaClassType getJavaLangClass() throws CoreException {
        if (this.fJavaLangClass == null) {
            IJavaType[] types = this.getVM().getJavaTypes(CLASS);
            if (types == null || types.length != 1) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{CLASS}), null));
            }
            this.fJavaLangClass = (IJavaClassType)types[0];
        }
        return this.fJavaLangClass;
    }

    protected IJavaClassObject classForName(String qualifiedName, IJavaObject loader) throws CoreException {
        IJavaType[] types;
        String tname = qualifiedName;
        if (tname.startsWith("[")) {
            tname = TypeImpl.signatureToName(qualifiedName);
        }
        if ((types = this.getVM().getJavaTypes(tname)) != null && types.length > 0) {
            int i = 0;
            while (i < types.length) {
                IJavaReferenceType type = (IJavaReferenceType)types[i];
                IJavaObject cloader = type.getClassLoaderObject();
                if (this.isCompatibleLoader(loader, cloader)) {
                    return type.getClassObject();
                }
                ++i;
            }
        }
        IJavaValue loaderArg = loader;
        if (loader == null) {
            loaderArg = this.getVM().nullValue();
        }
        IJavaValue name = this.getVM().newValue(qualifiedName);
        ((IJavaObject)name).disableCollection();
        IJavaValue[] args = new IJavaValue[]{name, this.getVM().newValue(true), loaderArg};
        try {
            IJavaClassObject iJavaClassObject = (IJavaClassObject)this.getJavaLangClass().sendMessage(FOR_NAME, FOR_NAME_SIGNATURE, args, this.getThread());
            return iJavaClassObject;
        }
        catch (CoreException e) {
            if (e.getStatus().getException() instanceof InvocationException && ((InvocationException)e.getStatus().getException()).exception().referenceType().name().equals("java.lang.ClassNotFoundException")) {
                return null;
            }
            throw e;
        }
        finally {
            ((IJavaObject)name).enableCollection();
        }
    }

    public IJavaClassObject classForName(String name) throws CoreException {
        return this.classForName(name, this.getClassLoaderObject());
    }

    public IJavaProject getProject() {
        return this.fProject;
    }

    private boolean isCompatibleLoader(IJavaObject recLoader, IJavaObject otherLoader) throws CoreException {
        if (recLoader == null || otherLoader == null) {
            return true;
        }
        if (recLoader.equals(otherLoader)) {
            return true;
        }
        IJavaObject parent = this.getParentLoader(recLoader);
        while (parent != null) {
            if (parent.equals(otherLoader)) {
                return true;
            }
            parent = this.getParentLoader(parent);
        }
        return false;
    }

    private IJavaObject getParentLoader(IJavaObject loader) throws CoreException {
        IJavaFieldVariable field = loader.getField("parent", false);
        if (field != null) {
            IJavaValue value = (IJavaValue)field.getValue();
            if (value.isNull()) {
                return null;
            }
            return (IJavaObject)value;
        }
        IJavaValue result = loader.sendMessage("getParent", "()Ljava/lang/ClassLoader;", null, this.getThread(), false);
        if (result.isNull()) {
            return null;
        }
        return (IJavaObject)result;
    }
}

