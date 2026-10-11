/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.artop.aal.common.library;

import java.util.Collection;
import org.eclipse.emf.common.util.URI;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IAutosarLibraryDescriptor {
    public Collection<URI> getFileURIs();

    public String getLabel();
}

