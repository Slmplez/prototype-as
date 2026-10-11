/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 */
package org.w3._2000._09.xmldsig.util;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.w3._2000._09.xmldsig.util.XmldsigResourceImpl;

public class XmldsigResourceFactoryImpl
extends ResourceFactoryImpl {
    public Resource createResource(URI uri) {
        XmldsigResourceImpl result = new XmldsigResourceImpl(uri);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        return result;
    }
}

