/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.EcoreBuilder;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefaultEcoreBuilder
implements EcoreBuilder {
    protected static final Class<?> XSD_ECORE_BUILDER_CLASS;
    protected static final Constructor<?> XSD_ECORE_BUILDER_CONSTRUCTOR;
    protected static final Method XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD;
    protected static final Map<?, ?> XSD_ECORE_BUILDER_OPTIONS;
    protected ExtendedMetaData extendedMetaData;

    static {
        Class theXSDEcoreBuilderClass = null;
        Constructor theXSDEcoreBuilderConstructor = null;
        Method theXSDEcoreBuilderGenerateResourcesMethod = null;
        try {
            theXSDEcoreBuilderClass = CommonPlugin.loadClass((String)"org.eclipse.xsd", (String)"org.eclipse.xsd.ecore.XSDEcoreBuilder");
            theXSDEcoreBuilderConstructor = theXSDEcoreBuilderClass.getConstructor(ExtendedMetaData.class, Map.class);
            theXSDEcoreBuilderGenerateResourcesMethod = theXSDEcoreBuilderClass.getMethod("generateResources", Collection.class);
        }
        catch (Throwable throwable) {
            // empty catch block
        }
        XSD_ECORE_BUILDER_CLASS = theXSDEcoreBuilderClass;
        XSD_ECORE_BUILDER_CONSTRUCTOR = theXSDEcoreBuilderConstructor;
        XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD = theXSDEcoreBuilderGenerateResourcesMethod;
        HashMap<String, Boolean> theXSDEcoreBuilderOptions = new HashMap<String, Boolean>();
        theXSDEcoreBuilderOptions.put("REUSE_REGISTERED_PACKAGES", Boolean.TRUE);
        XSD_ECORE_BUILDER_OPTIONS = Collections.unmodifiableMap(theXSDEcoreBuilderOptions);
    }

    public DefaultEcoreBuilder(ExtendedMetaData extendedMetaData) {
        this.extendedMetaData = extendedMetaData;
    }

    @Override
    public void setExtendedMetaData(ExtendedMetaData extendedMetaData) {
        this.extendedMetaData = extendedMetaData;
    }

    @Override
    public Collection<? extends Resource> generate(URI uri) throws Exception {
        return this.generate(Collections.singleton(uri));
    }

    @Override
    public Collection<? extends Resource> generate(Map<String, URI> targetNamespaceToURI) throws Exception {
        if (targetNamespaceToURI != null && XSD_ECORE_BUILDER_CONSTRUCTOR != null && XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD != null) {
            Object ecoreBuilder = XSD_ECORE_BUILDER_CONSTRUCTOR.newInstance(this.extendedMetaData, XSD_ECORE_BUILDER_OPTIONS);
            Collection result = (Collection)XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD.invoke(ecoreBuilder, targetNamespaceToURI.values());
            return result;
        }
        return Collections.emptyList();
    }

    @Override
    public Collection<? extends Resource> generate(Collection<URI> uris) throws Exception {
        if (uris != null && XSD_ECORE_BUILDER_CONSTRUCTOR != null && XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD != null) {
            Object ecoreBuilder = XSD_ECORE_BUILDER_CONSTRUCTOR.newInstance(this.extendedMetaData, XSD_ECORE_BUILDER_OPTIONS);
            Collection result = (Collection)XSD_ECORE_BUILDER_GENERATE_RESOURCES_METHOD.invoke(ecoreBuilder, uris);
            return result;
        }
        return Collections.emptyList();
    }
}

