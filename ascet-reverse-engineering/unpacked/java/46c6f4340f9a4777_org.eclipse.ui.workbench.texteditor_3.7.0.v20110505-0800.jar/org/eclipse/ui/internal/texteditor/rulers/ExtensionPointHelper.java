/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.texteditor.rulers;

import com.ibm.icu.text.MessageFormat;
import java.net.URL;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages;
import org.osgi.framework.Bundle;

public final class ExtensionPointHelper {
    private final IConfigurationElement fElement;
    private final String fName;

    public ExtensionPointHelper(IConfigurationElement element) throws InvalidRegistryObjectException {
        Assert.isLegal((element != null ? 1 : 0) != 0);
        this.fElement = element;
        this.fName = element.getName();
    }

    public String getDefaultAttribute(String attribute, String dflt) throws InvalidRegistryObjectException {
        String value = this.fElement.getAttribute(attribute);
        return value == null ? dflt : value;
    }

    public String getNonNullAttribute(String attribute) throws InvalidRegistryObjectException, CoreException {
        String value = this.fElement.getAttribute(attribute);
        if (value == null) {
            this.fail(MessageFormat.format((String)RulerColumnMessages.ExtensionPointHelper_missing_attribute_msg, (Object[])new Object[]{this.fName, attribute}));
        }
        return value;
    }

    public float getDefaultAttribute(String attribute, float dflt) throws CoreException {
        String value = this.getDefaultAttribute(attribute, null);
        if (value == null) {
            return dflt;
        }
        try {
            return Float.valueOf(value).floatValue();
        }
        catch (NumberFormatException numberFormatException) {
            this.fail(MessageFormat.format((String)RulerColumnMessages.ExtensionPointHelper_invalid_number_attribute_msg, (Object[])new Object[]{attribute, this.fName}));
            return dflt;
        }
    }

    public boolean getDefaultAttribute(String attribute, boolean dflt) throws CoreException {
        String value = this.getDefaultAttribute(attribute, null);
        if (value == null) {
            return dflt;
        }
        try {
            return Boolean.valueOf(value);
        }
        catch (NumberFormatException numberFormatException) {
            this.fail(MessageFormat.format((String)RulerColumnMessages.ExtensionPointHelper_invalid_number_attribute_msg, (Object[])new Object[]{this.fName, attribute}));
            return dflt;
        }
    }

    public void fail(String message) throws CoreException {
        String id = ExtensionPointHelper.findId(this.fElement);
        String extensionPointId = this.fElement.getDeclaringExtension().getExtensionPointUniqueIdentifier();
        Object[] args = new Object[]{this.fElement.getContributor().getName(), id, extensionPointId};
        String blame = MessageFormat.format((String)RulerColumnMessages.ExtensionPointHelper_invalid_contribution_msg, (Object[])args);
        Status status = new Status(2, "org.eclipse.ui.workbench.texteditor", 0, String.valueOf(blame) + message, null);
        throw new CoreException((IStatus)status);
    }

    public static String findId(IConfigurationElement element) {
        String id = null;
        while (element != null) {
            id = element.getAttribute("id");
            if (id != null) break;
            Object parent = element.getParent();
            if (parent instanceof IExtension) {
                id = ((IExtension)parent).getUniqueIdentifier();
                break;
            }
            if (!(parent instanceof IConfigurationElement)) break;
            element = (IConfigurationElement)parent;
        }
        return id == null ? "<unknown>" : id;
    }

    public URL getDefaultResourceURL(String attribute, URL dflt) {
        String value = this.getDefaultAttribute(attribute, null);
        if (value == null) {
            return dflt;
        }
        Bundle bundle = this.getBundle();
        if (bundle == null) {
            return dflt;
        }
        Path path = new Path(value);
        return FileLocator.find((Bundle)bundle, (IPath)path, null);
    }

    private Bundle getBundle() {
        String namespace = this.fElement.getDeclaringExtension().getContributor().getName();
        Bundle bundle = Platform.getBundle((String)namespace);
        return bundle;
    }
}

