/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.serializer;

import com.etas.amd.core.AmdFileExtensions;
import com.etas.amd.core.serializer.AbstractAmdSerializer;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import java.io.File;
import java.io.IOException;

public class ComponentImplSerializer
extends AbstractAmdSerializer {
    public static void save(File folderPath, DocumentRoot root, String name) throws IOException {
        root.getXMLNSPrefixMap().put((Object)"xsi", (Object)"http://www.w3.org/2001/XMLSchema-instance");
        root.getXSISchemaLocation().put((Object)"component_implementation.xsd", (Object)"");
        ComponentImplSerializer.serializeModelPart(root, new File(folderPath, String.valueOf(name) + AmdFileExtensions.Implementation.getSuffix()));
    }
}

