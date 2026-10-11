/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.XMLContentDescriber;
import org.eclipse.core.runtime.content.XMLRootElementContentDescriber2;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.InputSource;

public final class XMLRootElementContentDescriber
extends XMLContentDescriber
implements IExecutableExtension {
    private static final String DTD_TO_FIND = "dtd";
    private static final String ELEMENT_TO_FIND = "element";
    private String dtdToFind = null;
    private String elementToFind = null;
    static /* synthetic */ Class class$0;

    private int checkCriteria(InputSource contents, Map properties) throws IOException {
        if (!XMLRootElementContentDescriber2.isProcessed(properties)) {
            XMLRootElementContentDescriber2.fillContentProperties(contents, properties);
        }
        return this.checkCriteria(properties);
    }

    private int checkCriteria(Map properties) throws IOException {
        Boolean result = (Boolean)properties.get("org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.result");
        if (!result.booleanValue()) {
            return 1;
        }
        if (this.dtdToFind != null && !this.dtdToFind.equals(properties.get("org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.dtd"))) {
            return 1;
        }
        if (this.elementToFind != null && !this.elementToFind.equals(properties.get("org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.element"))) {
            return 1;
        }
        return 2;
    }

    public int describe(InputStream contents, IContentDescription description) throws IOException {
        return this.describe(contents, description, new HashMap());
    }

    public int describe(InputStream contents, IContentDescription description, Map properties) throws IOException {
        if (super.describe2(contents, description, properties) == 0) {
            return 0;
        }
        contents.reset();
        return this.checkCriteria(new InputSource(contents), properties);
    }

    public int describe(Reader contents, IContentDescription description) throws IOException {
        return this.describe(contents, description, new HashMap());
    }

    public int describe(Reader contents, IContentDescription description, Map properties) throws IOException {
        if (super.describe2(contents, description, properties) == 0) {
            return 0;
        }
        contents.reset();
        return this.checkCriteria(new InputSource(contents), properties);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        if (data instanceof String) {
            this.elementToFind = (String)data;
        } else if (data instanceof Hashtable) {
            Hashtable parameters = (Hashtable)data;
            this.dtdToFind = (String)parameters.get(DTD_TO_FIND);
            this.elementToFind = (String)parameters.get(ELEMENT_TO_FIND);
        }
        if (this.dtdToFind == null && this.elementToFind == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.content.XMLRootElementContentDescriber");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            String message = NLS.bind((String)ContentMessages.content_badInitializationData, (Object)clazz.getName());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, null));
        }
    }
}

