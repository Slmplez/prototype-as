/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xmi;

import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.EcoreBuilder;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLOptions {
    public void setProcessAnyXML(boolean var1);

    public boolean isProcessAnyXML();

    public void setEcoreBuilder(EcoreBuilder var1);

    public EcoreBuilder getEcoreBuilder();

    public void setExternalSchemaLocations(Map<String, URI> var1);

    public Map<String, URI> getExternalSchemaLocations();

    public void setProcessSchemaLocations(boolean var1);

    public boolean isProcessSchemaLocations();
}

