/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.ContentHandler
 *  org.eclipse.emf.ecore.resource.ContentHandler$Validity
 *  org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl$Describer
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.regex.Pattern;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLContentHandlerImpl;
import org.eclipse.emf.ecore.xml.type.XMLTypeDocumentRoot;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RootXMLContentHandlerImpl
extends XMLContentHandlerImpl {
    protected String contentTypeID;
    protected String[] extensions;
    protected String kind;
    protected String namespace;
    protected Pattern namespacePattern;
    protected String[] elementNames;
    public static final String CONTENT_TYPE_ID = "contentTypeID";
    public static final String EXTENSIONS = "extensions";
    public static final String KIND = "kind";
    public static final String XMI_KIND = "xmi";
    public static final String NAMESPACE = "namespace";
    public static final String NAMESPACE_PATTERN = "namespacePattern";
    public static final String ELEMENT_NAMES = "elementNames";

    public RootXMLContentHandlerImpl(Map<String, String> parameters) {
        this(parameters.get(CONTENT_TYPE_ID), parameters.containsKey(EXTENSIONS) ? parameters.get(EXTENSIONS).split(" ") : new String[]{}, parameters.get(KIND), parameters.get(NAMESPACE), parameters.get(NAMESPACE_PATTERN) != null ? Pattern.compile(parameters.get(NAMESPACE_PATTERN)) : null, parameters.containsKey(ELEMENT_NAMES) ? parameters.get(ELEMENT_NAMES).split(" ") : new String[]{});
    }

    public RootXMLContentHandlerImpl(String contentTypeID, String[] extensions, String kind, String namespace, String[] elementNames) {
        this(contentTypeID, extensions, kind, namespace, null, elementNames);
    }

    public RootXMLContentHandlerImpl(String contentTypeID, String[] extensions, String kind, Pattern namespacePattern, String[] elementNames) {
        this(contentTypeID, extensions, kind, null, namespacePattern, elementNames);
    }

    private RootXMLContentHandlerImpl(String contentTypeID, String[] extensions, String kind, String namespace, Pattern namespacePattern, String[] elementNames) {
        assert (namespacePattern == null || namespace == null);
        this.contentTypeID = contentTypeID;
        this.extensions = extensions;
        this.kind = kind;
        this.namespace = namespace;
        this.namespacePattern = namespacePattern;
        this.elementNames = elementNames;
    }

    public boolean canHandle(URI uri) {
        if (this.extensions == null || this.extensions.length == 0) {
            return true;
        }
        String fileExtension = uri.fileExtension();
        if (fileExtension != null) {
            String[] stringArray = this.extensions;
            int n = this.extensions.length;
            int n2 = 0;
            while (n2 < n) {
                String extension = stringArray[n2];
                if (fileExtension.equals(extension)) {
                    return true;
                }
                ++n2;
            }
        }
        return false;
    }

    @Override
    public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        EObject eObject;
        Map<String, Object> result = super.contentDescription(uri, inputStream, options, context);
        XMLResource xmlResource = this.load(uri, inputStream, options, context);
        EList contents = xmlResource.getContents();
        if (!contents.isEmpty() && (eObject = (EObject)contents.get(0)) instanceof XMLTypeDocumentRoot) {
            XMLTypeDocumentRoot documentRoot = (XMLTypeDocumentRoot)eObject;
            EList rootContents = documentRoot.eContents();
            String rootElementName = null;
            String rootElementNamespace = null;
            if (!rootContents.isEmpty()) {
                EObject root = (EObject)rootContents.get(0);
                EReference eContainmentFeature = root.eContainmentFeature();
                rootElementName = eContainmentFeature.getName();
                rootElementNamespace = ExtendedMetaData.INSTANCE.getNamespace((EStructuralFeature)eContainmentFeature);
                if (XMI_KIND.equals(this.kind) && RootXMLContentHandlerImpl.isXMINameAndNamespace(rootElementName, rootElementNamespace)) {
                    for (EObject candidate : root.eContents()) {
                        eContainmentFeature = candidate.eContainmentFeature();
                        rootElementNamespace = ExtendedMetaData.INSTANCE.getNamespace((EStructuralFeature)eContainmentFeature);
                        if (RootXMLContentHandlerImpl.isXMINamespace(rootElementNamespace)) continue;
                        rootElementName = eContainmentFeature.getName();
                        break;
                    }
                }
            }
            if (rootElementName != null && this.isMatchingNamespace(rootElementNamespace)) {
                boolean elementNameMatched = false;
                if (this.elementNames == null || this.elementNames.length == 0) {
                    elementNameMatched = true;
                } else {
                    String[] stringArray = this.elementNames;
                    int n = this.elementNames.length;
                    int n2 = 0;
                    while (n2 < n) {
                        String elementName = stringArray[n2];
                        if (rootElementName.equals(elementName)) {
                            elementNameMatched = true;
                            break;
                        }
                        ++n2;
                    }
                }
                if (elementNameMatched) {
                    result.put("org.eclipse.emf.ecore:validity", ContentHandler.Validity.VALID);
                }
            }
            result.put("org.eclipse.emf.ecore:contentType", this.contentTypeID == null ? (rootElementNamespace == null ? "" : rootElementNamespace) : this.contentTypeID);
            return result;
        }
        result.put("org.eclipse.emf.ecore:contentType", this.contentTypeID == null ? "" : this.contentTypeID);
        return result;
    }

    protected boolean isMatchingNamespace(String rootElementNamespace) {
        if (this.namespacePattern != null) {
            return this.namespacePattern.matcher(rootElementNamespace == null ? "" : rootElementNamespace).matches();
        }
        return this.namespace == null ? rootElementNamespace == null : this.namespace.equals(rootElementNamespace);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Describer
    extends ContentHandlerImpl.Describer {
        protected ContentHandler createContentHandler(Map<String, String> parameters) {
            return new RootXMLContentHandlerImpl(parameters);
        }
    }
}

