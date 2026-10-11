/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMIPlugin;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.SAXXMLHandler;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl;
import org.xml.sax.helpers.DefaultHandler;

public class GenericXMLResourceImpl
extends XMLResourceImpl {
    protected static final Class<?> xsdEcoreBuilderClass;
    protected static final Constructor<?> xsdEcoreBuilderConstructor;
    protected static final Method xsdEcoreBuilderGenerateResourcesMethod;
    protected static final Map<?, ?> xsdEcoreBuilderOptions;

    static {
        Class theXSDEcoreBuilderClass = null;
        Constructor theXSDEcoreBuilderConstructor = null;
        Method theXSDEcoreBuilderGenerateResourcesMethod = null;
        try {
            theXSDEcoreBuilderClass = CommonPlugin.loadClass((String)"org.eclipse.xsd", (String)"org.eclipse.xsd.ecore.XSDEcoreBuilder");
            theXSDEcoreBuilderConstructor = theXSDEcoreBuilderClass.getConstructor(ExtendedMetaData.class, Map.class);
            theXSDEcoreBuilderGenerateResourcesMethod = theXSDEcoreBuilderClass.getMethod("generateResources", Collection.class);
        }
        catch (Exception exception) {
            XMIPlugin.INSTANCE.log(exception);
            exception.printStackTrace();
        }
        xsdEcoreBuilderClass = theXSDEcoreBuilderClass;
        xsdEcoreBuilderConstructor = theXSDEcoreBuilderConstructor;
        xsdEcoreBuilderGenerateResourcesMethod = theXSDEcoreBuilderGenerateResourcesMethod;
        HashMap<String, Boolean> theXSDEcoreBuilderOptions = new HashMap<String, Boolean>();
        theXSDEcoreBuilderOptions.put("REUSE_REGISTERED_PACKAGES", Boolean.TRUE);
        xsdEcoreBuilderOptions = Collections.unmodifiableMap(theXSDEcoreBuilderOptions);
    }

    public GenericXMLResourceImpl(URI uri) {
        super(uri);
    }

    protected XMLLoad createXMLLoad() {
        return new GenericXMLLoadImpl(this.createXMLHelper());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class GenericSAXXMLHandler
    extends SAXXMLHandler {
        protected Object xsdEcoreBuilder;
        protected Collection<? extends Resource> generatedResources;

        protected GenericSAXXMLHandler(XMLResource xmlResource, XMLHelper helper, Map<?, ?> options) {
            super(xmlResource, helper, options);
        }

        @Override
        protected void handleTopLocations(String prefix, String name) {
            String namespaceURI;
            if (this.urisToLocations != null && xsdEcoreBuilderConstructor != null && xsdEcoreBuilderGenerateResourcesMethod != null) {
                try {
                    Collection newGeneratedResources;
                    this.xsdEcoreBuilder = xsdEcoreBuilderConstructor.newInstance(this.extendedMetaData, xsdEcoreBuilderOptions);
                    this.generatedResources = newGeneratedResources = (Collection)xsdEcoreBuilderGenerateResourcesMethod.invoke(this.xsdEcoreBuilder, this.urisToLocations.values());
                }
                catch (Exception exception) {
                    XMIPlugin.INSTANCE.log(exception);
                }
            }
            if (this.extendedMetaData.getPackage(namespaceURI = this.helper.getURI(prefix)) == null) {
                this.extendedMetaData.demandFeature(namespaceURI, name, true);
            }
        }

        @Override
        protected EPackage handleMissingPackage(String uriString) {
            return this.objects.isEmpty() ? this.extendedMetaData.demandPackage(uriString) : super.handleMissingPackage(uriString);
        }
    }

    protected static class GenericXMLLoadImpl
    extends XMLLoadImpl {
        protected GenericXMLLoadImpl(XMLHelper helper) {
            super(helper);
        }

        protected DefaultHandler makeDefaultHandler() {
            return new GenericSAXXMLHandler(this.resource, this.helper, this.options);
        }
    }
}

