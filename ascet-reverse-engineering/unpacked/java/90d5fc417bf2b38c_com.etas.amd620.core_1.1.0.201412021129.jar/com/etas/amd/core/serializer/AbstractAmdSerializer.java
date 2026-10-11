/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 */
package com.etas.amd.core.serializer;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;

public abstract class AbstractAmdSerializer {
    protected static final String SCHEMA_INSTANCE = "http://www.w3.org/2001/XMLSchema-instance";

    protected static void serializeModelPart(EObject root, File filePath) throws IOException {
        ResourceSetImpl resourceSet = new ResourceSetImpl();
        URI fileURI = URI.createFileURI((String)filePath.getAbsolutePath());
        Resource resource = resourceSet.createResource(fileURI);
        resource.getContents().add((Object)root);
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("ENCODING", "UTF-8");
        resource.save(options);
    }
}

