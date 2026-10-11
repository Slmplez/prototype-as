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
import org.eclipse.emf.ecore.xmi.impl.URIHandlerImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceImpl;

public class EcoreResourceFactoryImpl
extends ResourceFactoryImpl {
    public Resource createResource(URI uri) {
        XMIResourceImpl result = new XMIResourceImpl(uri){

            protected boolean useIDs() {
                return this.eObjectToIDMap != null || this.idToEObjectMap != null;
            }
        };
        result.setEncoding("UTF-8");
        result.getDefaultSaveOptions().put("USE_ENCODED_ATTRIBUTE_STYLE", Boolean.TRUE);
        result.getDefaultSaveOptions().put("LINE_WIDTH", 80);
        result.getDefaultSaveOptions().put("URI_HANDLER", new URIHandlerImpl.PlatformSchemeAware());
        return result;
    }
}

