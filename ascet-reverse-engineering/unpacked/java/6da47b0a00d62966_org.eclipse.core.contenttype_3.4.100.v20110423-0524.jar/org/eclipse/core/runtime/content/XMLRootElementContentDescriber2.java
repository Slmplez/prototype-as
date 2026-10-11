/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.XMLRootHandler;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.XMLContentDescriber;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public final class XMLRootElementContentDescriber2
extends XMLContentDescriber
implements IExecutableExtension {
    static final String DTD = "org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.dtd";
    static final String NAMESPACE = "org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.namespace";
    static final String ELEMENT = "org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.element";
    static final String RESULT = "org.eclipse.core.runtime.content.XMLRootElementContentDescriber2.result";
    private static final String ELEMENT_TO_FIND = "element";
    private QualifiedElement[] elementsToFind = null;
    static /* synthetic */ Class class$0;

    private int checkCriteria(InputSource contents, Map properties) throws IOException {
        if (!XMLRootElementContentDescriber2.isProcessed(properties)) {
            XMLRootElementContentDescriber2.fillContentProperties(contents, properties);
        }
        return this.checkCriteria(properties);
    }

    private int checkCriteria(Map properties) throws IOException {
        Boolean result = (Boolean)properties.get(RESULT);
        if (!result.booleanValue()) {
            return 1;
        }
        if (this.elementsToFind != null) {
            boolean foundOne = false;
            int i = 0;
            while (i < this.elementsToFind.length && !foundOne) {
                String dtd = (String)properties.get(DTD);
                String namespace = (String)properties.get(NAMESPACE);
                String element = (String)properties.get(ELEMENT);
                foundOne |= this.elementsToFind[i].matches(namespace, element, dtd);
                ++i;
            }
            if (!foundOne) {
                return 1;
            }
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

    static boolean isProcessed(Map properties) {
        Boolean result = (Boolean)properties.get(RESULT);
        return result != null;
    }

    static void fillContentProperties(InputSource input, Map properties) throws IOException {
        String namespace;
        String dtd;
        XMLRootHandler xmlHandler = new XMLRootHandler(true);
        try {
            if (!xmlHandler.parseContents(input)) {
                properties.put(RESULT, new Boolean(false));
                return;
            }
        }
        catch (SAXException sAXException) {
            properties.put(RESULT, new Boolean(false));
            return;
        }
        catch (ParserConfigurationException e) {
            String message = ContentMessages.content_parserConfiguration;
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)e));
            throw new RuntimeException(message);
        }
        String element = xmlHandler.getRootName();
        if (element != null) {
            properties.put(ELEMENT, element);
        }
        if ((dtd = xmlHandler.getDTD()) != null) {
            properties.put(DTD, dtd);
        }
        if ((namespace = xmlHandler.getRootNamespace()) != null) {
            properties.put(NAMESPACE, namespace);
        }
        properties.put(RESULT, new Boolean(true));
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        if (data instanceof String) {
            this.elementsToFind = new QualifiedElement[]{new QualifiedElement((String)data)};
        } else if (data instanceof Hashtable) {
            LinkedList<QualifiedElement> elements = null;
            IConfigurationElement describerElement = config.getChildren("describer")[0];
            IConfigurationElement[] params = describerElement.getChildren("parameter");
            String pname = null;
            int i = 0;
            while (i < params.length) {
                pname = params[i].getAttribute("name");
                if (ELEMENT_TO_FIND.equals(pname)) {
                    if (elements == null) {
                        elements = new LinkedList<QualifiedElement>();
                    }
                    elements.add(new QualifiedElement(params[i].getAttribute("value")));
                }
                ++i;
            }
            ArrayList qualifiedElements = new ArrayList();
            if (elements != null) {
                Iterator it = elements.iterator();
                while (it.hasNext()) {
                    qualifiedElements.add(it.next());
                }
            }
            this.elementsToFind = qualifiedElements.toArray(new QualifiedElement[qualifiedElements.size()]);
        }
        if (this.elementsToFind.length == 0) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.content.XMLRootElementContentDescriber2");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            String message = NLS.bind((String)ContentMessages.content_badInitializationData, (Object)clazz.getName());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, null));
        }
    }

    private class QualifiedElement {
        private String namespace;
        private String element;
        private String dtd;

        public QualifiedElement(String qualifiedElement) {
            int dtdSlash;
            int openBrace = qualifiedElement.indexOf(123);
            int closeBrace = qualifiedElement.indexOf(125);
            if (openBrace == 0 && closeBrace >= 1) {
                this.namespace = qualifiedElement.substring(1, closeBrace);
                qualifiedElement = qualifiedElement.substring(closeBrace + 1);
            }
            if ((dtdSlash = qualifiedElement.indexOf(47)) > 0) {
                this.dtd = qualifiedElement.substring(dtdSlash + 1);
                qualifiedElement = qualifiedElement.substring(0, dtdSlash);
            }
            this.element = "*".equals(qualifiedElement) ? null : qualifiedElement;
        }

        public boolean matches(String someNamespace, String someElement, String someDtd) {
            boolean dtdEquals;
            boolean nsMatch = this.namespace != null ? this.namespace.equals(someNamespace) : true;
            boolean elementEquals = this.element != null ? this.element.equals(someElement) : true;
            boolean bl = dtdEquals = this.dtd != null ? this.dtd.equals(someDtd) : true;
            return nsMatch && elementEquals && dtdEquals;
        }
    }
}

