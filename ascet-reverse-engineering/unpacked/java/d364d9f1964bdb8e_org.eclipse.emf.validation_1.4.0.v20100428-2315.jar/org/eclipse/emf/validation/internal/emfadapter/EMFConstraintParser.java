/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.validation.internal.emfadapter;

import java.lang.reflect.Method;
import java.util.Map;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.emfadapter.EMFConstraintAdapter;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintParser;
import org.eclipse.emf.validation.util.XmlConfig;
import org.eclipse.emf.validation.xml.ConstraintParserException;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;
import org.eclipse.emf.validation.xml.IXmlConstraintParser;
import org.osgi.framework.Bundle;

public class EMFConstraintParser
implements IParameterizedConstraintParser,
IXmlConstraintParser {
    private static final String PARAMETER_CLASS = "class";
    private static final String PARAMETER_METHOD = "method";
    private static final String NO_INTERFACE = ValidationMessages.emfadapter_noInterface_WARN_;
    private static final String NO_METHOD = ValidationMessages.emfadapter_noMethod_WARN_;
    private static final String NOT_BOOLEAN = ValidationMessages.emfadapter_notBoolean_WARN_;
    private static final String ILLEGAL_ACCESS = ValidationMessages.emfadapter_illegalAccess_WARN_;
    private static final String INTERFACE_NOT_FOUND = ValidationMessages.emfadapter_interfaceNotFound_WARN_;
    private static final String METHOD_NOT_FOUND = ValidationMessages.emfadapter_methodNotFound_WARN_;
    private static final Class<?>[] VALIDATION_METHOD_SIGNATURE = new Class[]{DiagnosticChain.class, Map.class};

    public IModelConstraint parseConstraint(IParameterizedConstraintDescriptor descriptor) throws ConstraintParserException {
        String className = descriptor.getParameterValue(PARAMETER_CLASS);
        String methodName = descriptor.getParameterValue(PARAMETER_METHOD);
        return this.parseConstraint(className, methodName, descriptor);
    }

    public IModelConstraint parseConstraint(IXmlConstraintDescriptor descriptor) throws ConstraintParserException {
        String className = XmlConfig.getParameter(descriptor.getConfig(), PARAMETER_CLASS);
        String methodName = XmlConfig.getParameter(descriptor.getConfig(), PARAMETER_METHOD);
        return this.parseConstraint(className, methodName, descriptor);
    }

    private IModelConstraint parseConstraint(String className, String methodName, IConstraintDescriptor descriptor) throws ConstraintParserException {
        EMFConstraintAdapter result;
        if (className == null) {
            throw new ConstraintParserException(NO_INTERFACE);
        }
        if (methodName == null) {
            throw new ConstraintParserException(NO_METHOD);
        }
        Bundle bundle = Platform.getBundle((String)descriptor.getPluginId());
        try {
            Class emfInterface = bundle.loadClass(className);
            Method validationMethod = emfInterface.getMethod(methodName, VALIDATION_METHOD_SIGNATURE);
            if (validationMethod.getReturnType() != Boolean.TYPE && validationMethod.getReturnType() != Boolean.class) {
                throw new ConstraintParserException(NOT_BOOLEAN);
            }
            result = new EMFConstraintAdapter(descriptor, validationMethod);
        }
        catch (SecurityException e) {
            throw new ConstraintParserException(ILLEGAL_ACCESS, e);
        }
        catch (ClassNotFoundException e) {
            throw new ConstraintParserException(EMFModelValidationPlugin.getMessage(INTERFACE_NOT_FOUND, className), e);
        }
        catch (NoSuchMethodException e) {
            throw new ConstraintParserException(EMFModelValidationPlugin.getMessage(METHOD_NOT_FOUND, className, methodName), e);
        }
        return result;
    }
}

