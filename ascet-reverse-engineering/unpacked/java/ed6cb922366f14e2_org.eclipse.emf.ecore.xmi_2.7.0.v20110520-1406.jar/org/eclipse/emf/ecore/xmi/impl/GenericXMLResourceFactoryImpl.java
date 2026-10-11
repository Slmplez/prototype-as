/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLOptionsImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLResourceImpl;

public class GenericXMLResourceFactoryImpl
extends ResourceFactoryImpl {
    public Resource createResource(URI uri) {
        XMLResourceImpl result = new XMLResourceImpl(uri);
        result.setEncoding("UTF-8");
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        result.getDefaultSaveOptions().put("LINE_WIDTH", 80);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        XMLOptionsImpl xmlOptions = new XMLOptionsImpl();
        xmlOptions.setProcessAnyXML(true);
        xmlOptions.setProcessSchemaLocations(true);
        result.getDefaultLoadOptions().put("XML_OPTIONS", xmlOptions);
        return result;
    }
}

