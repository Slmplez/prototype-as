/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.EcoreBuilder;
import org.eclipse.emf.ecore.xmi.XMLOptions;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLOptionsImpl
implements XMLOptions {
    protected EcoreBuilder ecoreBuilder;
    protected Map<String, URI> externalSchemaLocation;
    protected boolean anyXML;
    protected boolean processSchemaLocations;

    @Override
    public EcoreBuilder getEcoreBuilder() {
        return this.ecoreBuilder;
    }

    @Override
    public Map<String, URI> getExternalSchemaLocations() {
        return this.externalSchemaLocation;
    }

    @Override
    public boolean isProcessAnyXML() {
        return this.anyXML;
    }

    @Override
    public boolean isProcessSchemaLocations() {
        return this.processSchemaLocations;
    }

    @Override
    public void setEcoreBuilder(EcoreBuilder ecoreBuilder) {
        this.ecoreBuilder = ecoreBuilder;
    }

    @Override
    public void setExternalSchemaLocations(Map<String, URI> schemaLocations) {
        this.externalSchemaLocation = schemaLocations;
    }

    @Override
    public void setProcessAnyXML(boolean anyXML) {
        this.anyXML = anyXML;
    }

    @Override
    public void setProcessSchemaLocations(boolean processSchemaLocations) {
        this.processSchemaLocations = processSchemaLocations;
    }

    public int hashCode() {
        int hashCode = this.externalSchemaLocation != null ? this.externalSchemaLocation.hashCode() : 0;
        return (hashCode ^= this.ecoreBuilder != null ? this.ecoreBuilder.hashCode() : 0) + (this.anyXML ? 1 : 0) + (this.processSchemaLocations ? 2 : 0);
    }
}

