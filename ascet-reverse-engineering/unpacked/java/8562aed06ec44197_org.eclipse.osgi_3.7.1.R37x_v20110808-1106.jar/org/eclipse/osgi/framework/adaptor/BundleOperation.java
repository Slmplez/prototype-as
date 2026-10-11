/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import org.eclipse.osgi.framework.adaptor.BundleData;
import org.osgi.framework.BundleException;

public interface BundleOperation {
    public BundleData begin() throws BundleException;

    public void commit(boolean var1) throws BundleException;

    public void undo() throws BundleException;
}

