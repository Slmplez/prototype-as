/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 */
package org.eclipse.emf.validation.xml;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlConfigurationElement;
import org.eclipse.emf.validation.internal.util.XmlConstraintDescriptor;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.AbstractConstraintProvider;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.util.XmlConfig;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;

public class XmlConstraintProvider
extends AbstractConstraintProvider
implements IExecutableExtension {
    static final String NO_NAME = ValidationMessages.constraint_not_init_name;
    static final String REASON_NO_ID = ValidationMessages.constraint_reason_no_id;
    static final String UNKNOWN_FILE = ValidationMessages.xml_unknown_file;

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        IConfigurationElement[] constraintses;
        super.setInitializationData(config, propertyName, data);
        IConfigurationElement[] iConfigurationElementArray = constraintses = config.getChildren("constraints");
        int n = constraintses.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement[] configs;
            IConfigurationElement element = iConfigurationElementArray[n2];
            IConfigurationElement next = XmlConfig.parseConstraintsWithIncludes(element);
            IConfigurationElement[] iConfigurationElementArray2 = configs = next.getChildren();
            int n3 = configs.length;
            int n4 = 0;
            while (n4 < n3) {
                IConfigurationElement element2 = iConfigurationElementArray2[n4];
                this.addConstraint(element2);
                ++n4;
            }
            ++n2;
        }
        XmlConfig.flushResourceBundles();
    }

    private void addConstraint(IConfigurationElement config) {
        String contributorId = config.getDeclaringExtension().getNamespaceIdentifier();
        String id = config.getAttribute("id");
        if (id == null) {
            String name = config.getAttribute("name");
            if (name == null) {
                String fileName = config instanceof XmlConfigurationElement ? ((XmlConfigurationElement)config).getFileName() : UNKNOWN_FILE;
                name = EMFModelValidationPlugin.getMessage(NO_NAME, fileName);
            }
            Log.warningMessage(70, EMFModelValidationStatusCodes.CONSTRAINT_NOT_INITED_MSG, new Object[]{name, REASON_NO_ID});
        } else {
            IConstraintDescriptor constraint = ConstraintRegistry.getInstance().getDescriptor(contributorId, id);
            if (constraint == null) {
                try {
                    constraint = new XmlConstraintDescriptor(config);
                }
                catch (ConstraintExistsException constraintExistsException) {}
            }
            if (constraint instanceof IXmlConstraintDescriptor) {
                IXmlConstraintDescriptor xmlConstraint = (IXmlConstraintDescriptor)constraint;
                xmlConstraint.resolveTargetTypes(this.getNamespaceUris());
                IModelConstraint proxy = this.createModelConstraintProxy(xmlConstraint);
                this.getConstraints().add(proxy);
                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Added constraint proxy: " + constraint);
            }
        }
    }
}

