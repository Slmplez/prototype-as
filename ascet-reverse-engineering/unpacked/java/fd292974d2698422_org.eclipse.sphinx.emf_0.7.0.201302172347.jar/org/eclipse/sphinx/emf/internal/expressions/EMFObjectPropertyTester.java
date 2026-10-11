/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.provider.IWrapperItemProvider
 */
package org.eclipse.sphinx.emf.internal.expressions;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.sphinx.emf.edit.TransientItemProvider;
import org.eclipse.sphinx.emf.util.EObjectUtil;

public class EMFObjectPropertyTester
extends PropertyTester {
    private static final String INSTANCE_OF = "instanceOf";
    private static final String CLASS_NAME_MATCHES = "classNameMatches";
    private static final String OWNER_CLASS_NAME_MATCHES = "ownerClassNameMatches";
    private static final String PARENT_CLASS_NAME_MATCHES = "parentClassNameMatches";

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        EObject eObject;
        String instanceClassName;
        if (receiver instanceof TransientItemProvider && PARENT_CLASS_NAME_MATCHES.equals(property)) {
            TransientItemProvider provider = (TransientItemProvider)((Object)receiver);
            Notifier target = provider.getTarget();
            if (target != null) {
                return target.getClass().getName().matches(expectedValue.toString());
            }
            return false;
        }
        if (receiver instanceof IWrapperItemProvider && OWNER_CLASS_NAME_MATCHES.equals(property)) {
            IWrapperItemProvider provider = (IWrapperItemProvider)receiver;
            Object owner = provider.getOwner();
            if (owner != null) {
                if (owner instanceof IWrapperItemProvider && ((IWrapperItemProvider)owner).getValue() != null) {
                    Object value = ((IWrapperItemProvider)owner).getValue();
                    if (value instanceof TransientItemProvider && ((TransientItemProvider)((Object)value)).getTarget() != null) {
                        return ((TransientItemProvider)((Object)value)).getTarget().getClass().getName().matches(expectedValue.toString());
                    }
                    return value.getClass().getName().matches(expectedValue.toString());
                }
                if (owner instanceof TransientItemProvider && ((TransientItemProvider)((Object)owner)).getTarget() != null) {
                    return ((TransientItemProvider)((Object)owner)).getTarget().getClass().getName().matches(expectedValue.toString());
                }
                return owner.getClass().getName().matches(expectedValue.toString());
            }
            return false;
        }
        if ((receiver = AdapterFactoryEditingDomain.unwrap((Object)receiver)) instanceof EObject && INSTANCE_OF.equals(property)) {
            EObject eObject2 = (EObject)receiver;
            return EObjectUtil.isAssignableFrom(eObject2.eClass(), expectedValue.toString());
        }
        if (receiver instanceof EObject && CLASS_NAME_MATCHES.equals(property) && (instanceClassName = (eObject = (EObject)receiver).eClass().getInstanceClassName()) != null) {
            return instanceClassName.matches(expectedValue.toString());
        }
        return false;
    }
}

