/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 */
package com.etas.amd620.core.amd620.util;

import com.etas.amd620.core.amd620.util.Amd620ResourceImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;

public class Amd620ResourceFactoryImpl
extends ResourceFactoryImpl {
    public Resource createResource(URI uri) {
        Amd620ResourceImpl result = new Amd620ResourceImpl(uri);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", Boolean.TRUE);
        result.getDefaultSaveOptions().put("SCHEMA_LOCATION", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultLoadOptions().put("USE_LEXICAL_HANDLER", Boolean.TRUE);
        return result;
    }
}

