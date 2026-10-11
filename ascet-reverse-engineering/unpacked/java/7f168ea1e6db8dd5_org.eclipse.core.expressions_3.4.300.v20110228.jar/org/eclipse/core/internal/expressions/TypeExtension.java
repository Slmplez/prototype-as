/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.IPropertyTester;
import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.PropertyTesterDescriptor;
import org.eclipse.core.internal.expressions.TypeExtensionManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;

public class TypeExtension {
    private static final TypeExtension[] EMPTY_TYPE_EXTENSION_ARRAY = new TypeExtension[0];
    static final IPropertyTester CONTINUE = new IPropertyTester(){

        public boolean handles(String namespace, String method) {
            return false;
        }

        public boolean isInstantiated() {
            return true;
        }

        public boolean isDeclaringPluginActive() {
            return true;
        }

        public IPropertyTester instantiate() {
            return this;
        }

        public boolean test(Object receiver, String method, Object[] args, Object expectedValue) {
            return false;
        }
    };
    private static final TypeExtension END_POINT = new TypeExtension(){

        IPropertyTester findTypeExtender(TypeExtensionManager manager, String namespace, String name, boolean staticMethod, boolean forcePluginActivation) throws CoreException {
            return CONTINUE;
        }
    };
    private Class fType;
    private IPropertyTester[] fExtenders;
    private TypeExtension fExtends;
    private TypeExtension[] fImplements;

    private TypeExtension() {
    }

    TypeExtension(Class type) {
        Assert.isNotNull((Object)type);
        this.fType = type;
    }

    IPropertyTester findTypeExtender(TypeExtensionManager manager, String namespace, String method, boolean staticMethod, boolean forcePluginActivation) throws CoreException {
        IPropertyTester result;
        if (this.fExtenders == null) {
            this.fExtenders = manager.loadTesters(this.fType);
        }
        int i = 0;
        while (i < this.fExtenders.length) {
            IPropertyTester extender = this.fExtenders[i];
            if (extender != null && extender.handles(namespace, method)) {
                if (extender.isInstantiated()) {
                    return extender;
                }
                if (extender.isDeclaringPluginActive() || forcePluginActivation) {
                    try {
                        PropertyTesterDescriptor descriptor = (PropertyTesterDescriptor)extender;
                        IPropertyTester inst = descriptor.instantiate();
                        ((PropertyTester)inst).internalInitialize(descriptor);
                        this.fExtenders[i] = extender = inst;
                        return extender;
                    }
                    catch (CoreException e) {
                        this.fExtenders[i] = null;
                        throw e;
                    }
                    catch (ClassCastException e) {
                        this.fExtenders[i] = null;
                        throw new CoreException((IStatus)new ExpressionStatus(202, ExpressionMessages.TypeExtender_incorrectType, e));
                    }
                }
                return extender;
            }
            ++i;
        }
        if (staticMethod) {
            return CONTINUE;
        }
        if (this.fExtends == null) {
            Class superClass = this.fType.getSuperclass();
            this.fExtends = superClass != null ? manager.get(superClass) : END_POINT;
        }
        if ((result = this.fExtends.findTypeExtender(manager, namespace, method, staticMethod, forcePluginActivation)) != CONTINUE) {
            return result;
        }
        if (this.fImplements == null) {
            Class<?>[] interfaces = this.fType.getInterfaces();
            if (interfaces.length == 0) {
                this.fImplements = EMPTY_TYPE_EXTENSION_ARRAY;
            } else {
                this.fImplements = new TypeExtension[interfaces.length];
                int i2 = 0;
                while (i2 < interfaces.length) {
                    this.fImplements[i2] = manager.get(interfaces[i2]);
                    ++i2;
                }
            }
        }
        i = 0;
        while (i < this.fImplements.length) {
            result = this.fImplements[i].findTypeExtender(manager, namespace, method, staticMethod, forcePluginActivation);
            if (result != CONTINUE) {
                return result;
            }
            ++i;
        }
        return CONTINUE;
    }

    /* synthetic */ TypeExtension(TypeExtension typeExtension) {
        this();
    }
}

