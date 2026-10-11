/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi;

import java.util.Collection;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.ExtendedMetaData;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcoreBuilder {
    public Collection<? extends Resource> generate(URI var1) throws Exception;

    public Collection<? extends Resource> generate(Collection<URI> var1) throws Exception;

    public Collection<? extends Resource> generate(Map<String, URI> var1) throws Exception;

    public void setExtendedMetaData(ExtendedMetaData var1);
}

