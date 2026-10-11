/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import org.eclipse.emf.ecore.xmi.XMLResource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicResourceHandler
implements XMLResource.ResourceHandler {
    @Override
    public void preLoad(XMLResource resource, InputStream inputStream, Map<?, ?> options) {
    }

    @Override
    public void postLoad(XMLResource resource, InputStream inputStream, Map<?, ?> options) {
    }

    @Override
    public void preSave(XMLResource resource, OutputStream outputStream, Map<?, ?> options) {
    }

    @Override
    public void postSave(XMLResource resource, OutputStream outputStream, Map<?, ?> options) {
    }
}

