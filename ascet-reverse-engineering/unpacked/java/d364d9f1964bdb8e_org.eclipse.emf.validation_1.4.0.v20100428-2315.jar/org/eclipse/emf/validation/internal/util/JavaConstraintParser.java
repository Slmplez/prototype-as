/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.EMFPlugin
 */
package org.eclipse.emf.validation.internal.util;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.validation.AbstractModelConstraint;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.modeled.ClassProvider;
import org.eclipse.emf.validation.internal.modeled.ModeledConstraintDescriptor;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintParser;
import org.eclipse.emf.validation.xml.ConstraintParserException;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;
import org.eclipse.emf.validation.xml.IXmlConstraintParser;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class JavaConstraintParser
implements IParameterizedConstraintParser,
IXmlConstraintParser {
    private static final Map<Class<?>, Object> constraintImplementationMap = new HashMap();

    @Override
    public IModelConstraint parseConstraint(IParameterizedConstraintDescriptor descriptor) throws ConstraintParserException {
        String className = descriptor.getParameterValue("class");
        if (className == null) {
            ConstraintParserException cpe = new ConstraintParserException("No class name.");
            Trace.throwing(this.getClass(), "parseConstraint", cpe);
            throw cpe;
        }
        return this.createCustomConstraint(className, descriptor.getParameterValue("bundle"), descriptor);
    }

    @Override
    public IModelConstraint parseConstraint(IXmlConstraintDescriptor descriptor) throws ConstraintParserException {
        String className = descriptor.getConfig().getAttribute("class");
        if (className == null) {
            ConstraintParserException cpe = new ConstraintParserException("No class name.");
            Trace.throwing(this.getClass(), "parseConstraint", cpe);
            throw cpe;
        }
        return this.createCustomConstraint(className, descriptor.getConfig().getDeclaringExtension().getNamespaceIdentifier(), descriptor);
    }

    private IModelConstraint createCustomConstraint(String className, String bundleName, IConstraintDescriptor descriptor) throws ConstraintParserException {
        ConstraintAdapter result = null;
        ReflectiveOperationException pendingException = null;
        String pendingMessage = null;
        ClassProvider classProvider = null;
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            classProvider = new ClassProvider.BundleProvider(Platform.getBundle((String)bundleName));
        } else if (descriptor instanceof ModeledConstraintDescriptor) {
            classProvider = ((ModeledConstraintDescriptor)descriptor).getClassProvider();
        } else {
            throw new IllegalArgumentException();
        }
        try {
            Class<?> resultType = classProvider.loadClass(className);
            if (AbstractModelConstraint.class.isAssignableFrom(resultType)) {
                result = new ConstraintAdapter(descriptor, (AbstractModelConstraint)JavaConstraintParser.getInstance(resultType));
            }
        }
        catch (ClassNotFoundException e) {
            pendingException = e;
            pendingMessage = EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.DELEGATE_CLASS_NOT_FOUND_MSG, descriptor.getId(), className);
        }
        catch (InstantiationException e) {
            pendingException = e;
            pendingMessage = EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.DELEGATE_INSTANTIATION_MSG, descriptor.getId(), className);
        }
        catch (IllegalAccessException e) {
            pendingException = e;
            Object[] objectArray = new Object[3];
            objectArray[0] = descriptor.getId();
            objectArray[1] = className;
            pendingMessage = EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.DELEGATE_METHOD_INACCESSIBLE_MSG, objectArray);
        }
        if (pendingException != null) {
            Trace.catching(this.getClass(), "createCustomConstraint", pendingException);
            Log.error(70, pendingMessage, pendingException);
            ConstraintParserException cpe = new ConstraintParserException(pendingException.getLocalizedMessage(), pendingException);
            Trace.throwing(this.getClass(), "createCustomConstraint", cpe);
            throw cpe;
        }
        return result;
    }

    static Object getInstance(Class<?> constraintClass) throws InstantiationException, IllegalAccessException {
        Object result = constraintImplementationMap.get(constraintClass);
        if (result == null) {
            result = constraintClass.newInstance();
            constraintImplementationMap.put(constraintClass, result);
        }
        return result;
    }

    private static class ConstraintAdapter
    implements IModelConstraint {
        private final AbstractModelConstraint delegate;
        private final IConstraintDescriptor descriptor;

        ConstraintAdapter(IConstraintDescriptor descriptor, AbstractModelConstraint delegate) {
            this.descriptor = descriptor;
            this.delegate = delegate;
        }

        public IStatus validate(IValidationContext ctx) {
            return this.delegate.validate(ctx);
        }

        public IConstraintDescriptor getDescriptor() {
            return this.descriptor;
        }
    }
}

