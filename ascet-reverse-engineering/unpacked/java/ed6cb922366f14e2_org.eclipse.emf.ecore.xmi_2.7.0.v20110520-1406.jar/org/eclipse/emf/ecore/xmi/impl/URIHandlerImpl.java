/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.XMLResource;

public class URIHandlerImpl
implements XMLResource.URIHandler {
    protected URI baseURI;
    protected boolean resolve;

    public void setBaseURI(URI uri) {
        this.baseURI = uri;
        this.resolve = uri != null && uri.isHierarchical() && !uri.isRelative();
    }

    public URI resolve(URI uri) {
        return this.resolve && uri.isRelative() && uri.hasRelativePath() ? uri.resolve(this.baseURI) : uri;
    }

    public URI deresolve(URI uri) {
        URI deresolvedURI;
        if (this.resolve && !uri.isRelative() && (deresolvedURI = uri.deresolve(this.baseURI, true, true, false)).hasRelativePath()) {
            uri = deresolvedURI;
        }
        return uri;
    }

    public static class PlatformSchemeAware
    extends URIHandlerImpl {
        public URI deresolve(URI uri) {
            return !uri.isPlatform() || uri.segmentCount() > 0 && this.baseURI.segmentCount() > 0 && uri.segment(0).equals(this.baseURI.segment(0)) ? super.deresolve(uri) : uri;
        }
    }
}

