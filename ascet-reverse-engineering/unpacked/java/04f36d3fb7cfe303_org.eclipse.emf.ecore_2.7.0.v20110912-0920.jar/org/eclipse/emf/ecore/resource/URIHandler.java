/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.ArchiveURIHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.EFSURIHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.FileURIHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.PlatformResourceURIHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface URIHandler {
    public static final List<URIHandler> DEFAULT_HANDLERS = Collections.unmodifiableList(Arrays.asList(new PlatformResourceURIHandlerImpl(), new FileURIHandlerImpl(), new EFSURIHandlerImpl(), new ArchiveURIHandlerImpl(), new URIHandlerImpl()));

    public boolean canHandle(URI var1);

    public InputStream createInputStream(URI var1, Map<?, ?> var2) throws IOException;

    public OutputStream createOutputStream(URI var1, Map<?, ?> var2) throws IOException;

    public void delete(URI var1, Map<?, ?> var2) throws IOException;

    public Map<String, ?> contentDescription(URI var1, Map<?, ?> var2) throws IOException;

    public boolean exists(URI var1, Map<?, ?> var2);

    public Map<String, ?> getAttributes(URI var1, Map<?, ?> var2);

    public void setAttributes(URI var1, Map<String, ?> var2, Map<?, ?> var3) throws IOException;
}

