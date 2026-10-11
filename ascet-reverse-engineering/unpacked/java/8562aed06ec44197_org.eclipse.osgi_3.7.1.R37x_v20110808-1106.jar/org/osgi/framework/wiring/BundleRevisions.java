/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.wiring;

import java.util.List;
import org.osgi.framework.BundleReference;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleRevisions
extends BundleReference {
    public List<BundleRevision> getRevisions();
}

